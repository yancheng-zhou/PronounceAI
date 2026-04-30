import Foundation
import AVFoundation

@MainActor
final class AudioPlayer: NSObject, ObservableObject {

    @Published var isSpeaking = false

    private let synthesizer = AVSpeechSynthesizer()

    override init() {
        super.init()
        synthesizer.delegate = self
    }

    // Speak the full sentence at a natural pace
    func speak(_ text: String, rate: Float = AVSpeechUtteranceDefaultSpeechRate) {
        stop()
        let utterance = makeUtterance(text, rate: rate)
        configure()
        synthesizer.speak(utterance)
        isSpeaking = true
    }

    // Speak slowly for learning
    func speakSlowly(_ text: String) {
        speak(text, rate: AVSpeechUtteranceMinimumSpeechRate + 0.1)
    }

    // Speak a single word
    func speakWord(_ word: String) {
        stop()
        let utterance = makeUtterance(word, rate: AVSpeechUtteranceDefaultSpeechRate - 0.05)
        configure()
        synthesizer.speak(utterance)
        isSpeaking = true
    }

    func stop() {
        if synthesizer.isSpeaking {
            synthesizer.stopSpeaking(at: .immediate)
        }
        isSpeaking = false
    }

    // MARK: - Private

    private func makeUtterance(_ text: String, rate: Float) -> AVSpeechUtterance {
        let utterance = AVSpeechUtterance(string: text)
        utterance.rate = rate
        utterance.pitchMultiplier = 1.0
        utterance.volume = 1.0
        // Prefer a high-quality en-US voice
        utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.voice.enhanced.en-US.Samantha")
            ?? AVSpeechSynthesisVoice(language: "en-US")
        return utterance
    }

    private func configure() {
        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .spokenAudio, options: .duckOthers)
        try? AVAudioSession.sharedInstance().setActive(true)
    }
}

extension AudioPlayer: AVSpeechSynthesizerDelegate {
    nonisolated func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        Task { @MainActor in self.isSpeaking = false }
    }

    nonisolated func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didCancel utterance: AVSpeechUtterance) {
        Task { @MainActor in self.isSpeaking = false }
    }
}
