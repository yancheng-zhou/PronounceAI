import Foundation
import SwiftUI

@MainActor
final class PracticeViewModel: ObservableObject {

    // MARK: - State

    enum State: Equatable {
        case idle
        case recording
        case analyzing
        case results(PronunciationResult)
        case error(String)

        static func == (lhs: State, rhs: State) -> Bool {
            switch (lhs, rhs) {
            case (.idle, .idle), (.recording, .recording), (.analyzing, .analyzing):
                return true
            case (.results, .results):
                return true
            case (.error(let a), .error(let b)):
                return a == b
            default:
                return false
            }
        }
    }

    @Published var state: State = .idle
    @Published var selectedSentence: Sentence
    @Published var showPhonetics = false
    @Published var selectedWordResult: WordResult?

    let speechService: SpeechService
    let audioPlayer: AudioPlayer
    private let analyzer = PronunciationAnalyzer()

    // MARK: - Init

    init(sentence: Sentence, speechService: SpeechService, audioPlayer: AudioPlayer) {
        self.selectedSentence = sentence
        self.speechService = speechService
        self.audioPlayer = audioPlayer
    }

    // MARK: - Actions

    func startRecording() {
        guard state == .idle else { return }
        audioPlayer.stop()
        do {
            try speechService.startRecording()
            state = .recording
        } catch {
            state = .error(error.localizedDescription)
        }
    }

    func stopRecording() {
        guard state == .recording else { return }
        state = .analyzing

        Task {
            do {
                let result = try await speechService.stopRecording()
                let pronounciation = analyzer.analyze(target: selectedSentence.text, speechResult: result)
                saveSession(from: pronounciation)
                state = .results(pronounciation)
            } catch {
                state = .error(error.localizedDescription)
            }
        }
    }

    func retry() {
        state = .idle
        selectedWordResult = nil
    }

    func playReference() {
        audioPlayer.speak(selectedSentence.text)
    }

    func playSlowly() {
        audioPlayer.speakSlowly(selectedSentence.text)
    }

    func playWord(_ word: String) {
        audioPlayer.speakWord(word)
    }

    func togglePhonetics() {
        showPhonetics.toggle()
    }

    // MARK: - Session Persistence

    private func saveSession(from result: PronunciationResult) {
        var sessions = loadSessions()
        let session = PracticeSession(
            id: UUID(),
            date: Date(),
            sentenceText: selectedSentence.text,
            sentenceDifficulty: selectedSentence.difficulty.rawValue,
            overallScore: result.overallScore,
            accuracyScore: result.accuracyScore,
            fluencyScore: result.fluencyScore,
            completenessScore: result.completenessScore
        )
        sessions.insert(session, at: 0)
        if sessions.count > 100 { sessions.removeLast() }
        if let data = try? JSONEncoder().encode(sessions) {
            UserDefaults.standard.set(data, forKey: "practiceSessions")
        }
    }

    static func loadSessions() -> [PracticeSession] {
        guard let data = UserDefaults.standard.data(forKey: "practiceSessions"),
              let sessions = try? JSONDecoder().decode([PracticeSession].self, from: data)
        else { return [] }
        return sessions
    }

    private func loadSessions() -> [PracticeSession] { Self.loadSessions() }
}
