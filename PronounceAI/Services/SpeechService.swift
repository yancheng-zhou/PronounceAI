import Foundation
import Speech
import AVFoundation

enum SpeechServiceError: LocalizedError {
    case permissionDenied
    case recognizerUnavailable
    case engineStartFailed(Error)
    case noResult

    var errorDescription: String? {
        switch self {
        case .permissionDenied:
            return "Microphone or speech recognition permission was denied. Please enable it in Settings."
        case .recognizerUnavailable:
            return "Speech recognizer is not available on this device or locale."
        case .engineStartFailed(let err):
            return "Failed to start audio engine: \(err.localizedDescription)"
        case .noResult:
            return "No speech was detected. Please try again."
        }
    }
}

@MainActor
final class SpeechService: ObservableObject {

    // MARK: - Published State

    @Published var isRecording = false
    @Published var liveTranscript = ""
    @Published var audioLevels: [Float] = Array(repeating: 0, count: 60)
    @Published var permissionsGranted = false

    // MARK: - Private

    private let recognizer = SFSpeechRecognizer(locale: Locale(identifier: "en-US"))
    private var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
    private var recognitionTask: SFSpeechRecognitionTask?
    private let audioEngine = AVAudioEngine()

    private var recordingStartTime: Date?
    private var pendingContinuation: CheckedContinuation<SpeechRecognitionResult, Error>?
    private var lastResult: SFSpeechRecognitionResult?

    // MARK: - Permissions

    func requestPermissions() async {
        let micStatus = await withCheckedContinuation { cont in
            AVAudioSession.sharedInstance().requestRecordPermission { granted in
                cont.resume(returning: granted)
            }
        }

        let speechStatus = await withCheckedContinuation { cont in
            SFSpeechRecognizer.requestAuthorization { status in
                cont.resume(returning: status == .authorized)
            }
        }

        permissionsGranted = micStatus && speechStatus
    }

    // MARK: - Recording

    func startRecording() throws {
        guard permissionsGranted else { throw SpeechServiceError.permissionDenied }
        guard let recognizer, recognizer.isAvailable else { throw SpeechServiceError.recognizerUnavailable }

        // Reset state
        liveTranscript = ""
        lastResult = nil
        audioLevels = Array(repeating: 0, count: 60)

        // Configure audio session
        let session = AVAudioSession.sharedInstance()
        try session.setCategory(.record, mode: .measurement, options: .duckOthers)
        try session.setActive(true, options: .notifyOthersOnDeactivation)

        // Create recognition request
        let request = SFSpeechAudioBufferRecognitionRequest()
        request.shouldReportPartialResults = true
        request.taskHint = .dictation
        recognitionRequest = request

        // Install audio tap on input node
        let inputNode = audioEngine.inputNode
        let format = inputNode.outputFormat(forBus: 0)

        inputNode.installTap(onBus: 0, bufferSize: 1024, format: format) { [weak self] buffer, _ in
            request.append(buffer)
            self?.processAudioBuffer(buffer)
        }

        audioEngine.prepare()
        do {
            try audioEngine.start()
        } catch {
            inputNode.removeTap(onBus: 0)
            throw SpeechServiceError.engineStartFailed(error)
        }

        recordingStartTime = Date()
        isRecording = true

        // Start recognition task, store partials + final
        recognitionTask = recognizer.recognitionTask(with: request) { [weak self] result, error in
            guard let self else { return }
            if let result {
                Task { @MainActor in
                    self.liveTranscript = result.bestTranscription.formattedString
                    self.lastResult = result
                }
            }
            if error != nil || result?.isFinal == true {
                Task { @MainActor in
                    self.deliverFinalResult(sfResult: self.lastResult, error: error)
                }
            }
        }
    }

    func stopRecording() async throws -> SpeechRecognitionResult {
        guard isRecording else { throw SpeechServiceError.noResult }

        return try await withCheckedThrowingContinuation { continuation in
            pendingContinuation = continuation
            recognitionRequest?.endAudio()
            audioEngine.stop()
            audioEngine.inputNode.removeTap(onBus: 0)
            isRecording = false

            // Delivery may already be waiting — give it a short window
            Task {
                try? await Task.sleep(nanoseconds: 500_000_000)
                await MainActor.run {
                    // If result wasn't delivered yet, deliver now
                    self.deliverFinalResult(sfResult: self.lastResult, error: nil)
                }
            }
        }
    }

    // MARK: - Private Helpers

    private func deliverFinalResult(sfResult: SFSpeechRecognitionResult?, error: Error?) {
        guard let continuation = pendingContinuation else { return }
        pendingContinuation = nil

        let duration = recordingStartTime.map { Date().timeIntervalSince($0) } ?? 0

        if let sfResult {
            let segments = sfResult.bestTranscription.segments.map { seg in
                TranscriptionSegment(
                    word: seg.substring,
                    confidence: seg.confidence,
                    timestamp: seg.timestamp,
                    duration: seg.duration
                )
            }
            continuation.resume(returning: SpeechRecognitionResult(
                transcript: sfResult.bestTranscription.formattedString,
                segments: segments,
                duration: duration
            ))
        } else if let error {
            continuation.resume(throwing: error)
        } else {
            continuation.resume(throwing: SpeechServiceError.noResult)
        }
    }

    private func processAudioBuffer(_ buffer: AVAudioPCMBuffer) {
        guard let channelData = buffer.floatChannelData?[0] else { return }
        let frames = Int(buffer.frameLength)
        var sum: Float = 0
        for i in 0..<frames { sum += abs(channelData[i]) }
        let level = min(1.0, (sum / Float(max(frames, 1))) * 20)

        Task { @MainActor in
            self.audioLevels.append(level)
            if self.audioLevels.count > 60 { self.audioLevels.removeFirst() }
        }
    }
}
