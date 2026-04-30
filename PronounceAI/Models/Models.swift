import Foundation

// MARK: - Sentence

struct Sentence: Identifiable, Codable, Hashable {
    let id: UUID
    let text: String
    let difficulty: Difficulty
    let category: Category
    let phonetics: String
    let focusSounds: [String]
    let tip: String

    enum Difficulty: String, Codable, CaseIterable {
        case beginner = "Beginner"
        case intermediate = "Intermediate"
        case advanced = "Advanced"
        case tongueTwister = "Tongue Twister"

        var emoji: String {
            switch self {
            case .beginner: return "🌱"
            case .intermediate: return "🌿"
            case .advanced: return "🌳"
            case .tongueTwister: return "🌀"
            }
        }

        var colorName: String {
            switch self {
            case .beginner: return "DifficultyGreen"
            case .intermediate: return "DifficultyBlue"
            case .advanced: return "DifficultyPurple"
            case .tongueTwister: return "DifficultyOrange"
            }
        }
    }

    enum Category: String, Codable, CaseIterable {
        case everyday = "Everyday"
        case business = "Business"
        case academic = "Academic"
        case travel = "Travel & Food"
        case dataAndAI = "Data & AI"
        case neuroscience = "Neuroscience"
        case tongueTwisters = "Tongue Twisters"

        var icon: String {
            switch self {
            case .everyday: return "house.fill"
            case .business: return "briefcase.fill"
            case .academic: return "book.fill"
            case .travel: return "airplane"
            case .dataAndAI: return "chart.bar.xaxis"
            case .neuroscience: return "brain.head.profile"
            case .tongueTwisters: return "waveform"
            }
        }
    }
}

// MARK: - Speech Recognition

struct SpeechRecognitionResult {
    let transcript: String
    let segments: [TranscriptionSegment]
    let duration: TimeInterval
}

struct TranscriptionSegment {
    let word: String
    let confidence: Float
    let timestamp: TimeInterval
    let duration: TimeInterval
}

// MARK: - Pronunciation Result

struct PronunciationResult {
    let targetSentence: String
    let transcript: String
    let overallScore: Double
    let accuracyScore: Double
    let fluencyScore: Double
    let completenessScore: Double
    let wordResults: [WordResult]
    let duration: TimeInterval

    var grade: Grade {
        switch overallScore {
        case 90...: return .excellent
        case 75..<90: return .good
        case 60..<75: return .fair
        case 40..<60: return .needsWork
        default: return .keepPracticing
        }
    }

    enum Grade {
        case excellent, good, fair, needsWork, keepPracticing

        var label: String {
            switch self {
            case .excellent: return "Excellent!"
            case .good: return "Good Job"
            case .fair: return "Fair"
            case .needsWork: return "Needs Work"
            case .keepPracticing: return "Keep Practicing"
            }
        }

        var emoji: String {
            switch self {
            case .excellent: return "🏆"
            case .good: return "⭐"
            case .fair: return "👍"
            case .needsWork: return "💪"
            case .keepPracticing: return "🎯"
            }
        }

        var colorName: String {
            switch self {
            case .excellent: return "ScoreGold"
            case .good: return "ScoreGreen"
            case .fair: return "ScoreBlue"
            case .needsWork: return "ScoreOrange"
            case .keepPracticing: return "ScoreRed"
            }
        }
    }
}

struct WordResult: Identifiable {
    let id = UUID()
    let word: String
    let recognizedAs: String?
    let score: Double
    let status: WordStatus
    let phonetic: String
    let tip: String?
}

enum WordStatus: Equatable {
    case correct
    case mispronounced
    case omitted
    case inserted

    var label: String {
        switch self {
        case .correct: return "Correct"
        case .mispronounced: return "Mispronounced"
        case .omitted: return "Missing"
        case .inserted: return "Extra"
        }
    }

    var icon: String {
        switch self {
        case .correct: return "checkmark.circle.fill"
        case .mispronounced: return "exclamationmark.triangle.fill"
        case .omitted: return "xmark.circle.fill"
        case .inserted: return "plus.circle.fill"
        }
    }
}

// MARK: - Practice Session

struct PracticeSession: Identifiable, Codable {
    let id: UUID
    let date: Date
    let sentenceText: String
    let sentenceDifficulty: String
    let overallScore: Double
    let accuracyScore: Double
    let fluencyScore: Double
    let completenessScore: Double
}
