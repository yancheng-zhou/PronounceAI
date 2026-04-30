import Foundation

final class PronunciationAnalyzer {

    // MARK: - IPA Dictionary (common English words)

    private static let phoneticDictionary: [String: String] = [
        "a": "/eɪ/", "an": "/æn/", "the": "/ðə/", "is": "/ɪz/", "are": "/ɑːr/",
        "was": "/wɒz/", "were": "/wɜːr/", "be": "/biː/", "been": "/biːn/",
        "have": "/hæv/", "has": "/hæz/", "had": "/hæd/", "do": "/duː/",
        "does": "/dʌz/", "did": "/dɪd/", "will": "/wɪl/", "would": "/wʊd/",
        "can": "/kæn/", "could": "/kʊd/", "may": "/meɪ/", "might": "/maɪt/",
        "shall": "/ʃæl/", "should": "/ʃʊd/", "must": "/mʌst/", "need": "/niːd/",
        "i": "/aɪ/", "you": "/juː/", "he": "/hiː/", "she": "/ʃiː/", "it": "/ɪt/",
        "we": "/wiː/", "they": "/ðeɪ/", "me": "/miː/", "him": "/hɪm/", "her": "/hɜːr/",
        "us": "/ʌs/", "them": "/ðɛm/", "my": "/maɪ/", "your": "/jɔːr/", "his": "/hɪz/",
        "its": "/ɪts/", "our": "/aʊər/", "their": "/ðɛr/",
        "and": "/ænd/", "but": "/bʌt/", "or": "/ɔːr/", "not": "/nɒt/",
        "in": "/ɪn/", "on": "/ɒn/", "at": "/æt/", "to": "/tuː/", "of": "/ɒv/",
        "for": "/fɔːr/", "with": "/wɪð/", "by": "/baɪ/", "from": "/frɒm/",
        "up": "/ʌp/", "out": "/aʊt/", "if": "/ɪf/", "as": "/æz/",
        "this": "/ðɪs/", "that": "/ðæt/", "these": "/ðiːz/", "those": "/ðoʊz/",
        "what": "/wɒt/", "which": "/wɪtʃ/", "who": "/huː/", "when": "/wɛn/",
        "where": "/wɛr/", "why": "/waɪ/", "how": "/haʊ/",
        "all": "/ɔːl/", "each": "/iːtʃ/", "every": "/ˈɛvri/", "both": "/boʊθ/",
        "no": "/noʊ/", "yes": "/jɛs/", "more": "/mɔːr/", "most": "/moʊst/",
        "very": "/ˈvɛri/", "too": "/tuː/", "so": "/soʊ/", "just": "/dʒʌst/",
        "weather": "/ˈwɛðər/", "whether": "/ˈwɛðər/", "through": "/θruː/",
        "thought": "/θɔːt/", "though": "/ðoʊ/", "thorough": "/ˈθɜːroʊ/",
        "three": "/θriː/", "throw": "/θroʊ/", "thirty": "/ˈθɜːrti/",
        "there": "/ðɛr/", "their": "/ðɛr/", "they're": "/ðɛr/",
        "world": "/wɜːrld/", "word": "/wɜːrd/", "work": "/wɜːrk/", "worth": "/wɜːrθ/",
        "right": "/raɪt/", "write": "/raɪt/", "red": "/rɛd/", "read": "/riːd/",
        "sell": "/sɛl/", "shell": "/ʃɛl/", "sells": "/sɛlz/", "shells": "/ʃɛlz/",
        "sea": "/siː/", "see": "/siː/", "shore": "/ʃɔːr/", "sure": "/ʃʊər/",
        "please": "/pliːz/", "pass": "/pæs/", "butter": "/ˈbʌtər/",
        "glass": "/ɡlæs/", "water": "/ˈwɔːtər/", "like": "/laɪk/",
        "help": "/hɛlp/", "nearest": "/ˈnɪərɪst/", "station": "/ˈsteɪʃən/",
        "soup": "/suːp/", "thank": "/θæŋk/", "nice": "/naɪs/", "today": "/təˈdeɪ/",
    ]

    // MARK: - Feedback Tips per problem sound

    private static let soundTips: [String: String] = [
        "th": "Place your tongue lightly between your teeth. Voiced 'th' (the, this) vibrates; voiceless 'th' (think, three) does not.",
        "r":  "For American 'r', curl your tongue tip back slightly without touching the roof of your mouth.",
        "l":  "The 'l' is lateral — touch your tongue tip to the ridge just behind your upper teeth.",
        "v":  "Touch your upper front teeth to your lower lip and vibrate. Don't let it become 'b' or 'w'.",
        "w":  "Start with fully rounded lips pushed forward, then open into the vowel.",
        "sh": "Round your lips slightly, push your tongue back, and let air flow over the middle — no voice.",
        "ch": "Combine 't' + 'sh': tongue at ridge, then release forward. It's one quick sound.",
        "p":  "Fully close both lips and build air pressure, then release with a small puff.",
        "b":  "Like 'p' but add voice — your throat should vibrate.",
        "s":  "Keep your tongue close to the ridge behind your upper teeth, groove it, and let air hiss through.",
        "z":  "Same as 's' but add voice.",
        "f":  "Upper teeth lightly on lower lip, blow air through — no voice.",
        "ng": "The 'ng' sound is nasal — the back of your tongue touches your soft palate.",
    ]

    // MARK: - Main Entry Point

    func analyze(target: String, speechResult: SpeechRecognitionResult) -> PronunciationResult {
        let targetWords = tokenize(target)
        let recognizedWords = tokenize(speechResult.transcript)

        let alignment = align(target: targetWords, recognized: recognizedWords, segments: speechResult.segments)
        let wordResults = alignment.map { buildWordResult(from: $0) }

        let spoken = wordResults.filter { $0.status != .omitted }.count
        let correct = wordResults.filter { $0.status == .correct }.count

        let accuracyScore   = score(numerator: correct, denominator: targetWords.count)
        let completenessScore = score(numerator: spoken, denominator: targetWords.count)
        let fluencyScore    = computeFluency(segments: speechResult.segments, expected: targetWords.count, actual: speechResult.duration)

        let overall = (accuracyScore * 0.5 + fluencyScore * 0.25 + completenessScore * 0.25)
            .clamped(to: 0...100)

        return PronunciationResult(
            targetSentence: target,
            transcript: speechResult.transcript,
            overallScore: overall,
            accuracyScore: accuracyScore,
            fluencyScore: fluencyScore,
            completenessScore: completenessScore,
            wordResults: wordResults,
            duration: speechResult.duration
        )
    }

    // MARK: - Tokenization

    private func tokenize(_ text: String) -> [String] {
        text
            .lowercased()
            .components(separatedBy: .whitespaces)
            .map { $0.trimmingCharacters(in: .punctuationCharacters) }
            .filter { !$0.isEmpty }
    }

    // MARK: - Word Alignment (Needleman-Wunsch style)

    private struct AlignedPair {
        let target: String?
        let recognized: String?
        let segment: TranscriptionSegment?
    }

    private func align(target: [String], recognized: [String], segments: [TranscriptionSegment]) -> [AlignedPair] {
        let n = target.count, m = recognized.count
        var dp = Array(repeating: Array(repeating: 0, count: m + 1), count: n + 1)

        for i in 0...n { dp[i][0] = -i }
        for j in 0...m { dp[0][j] = -j }

        for i in 1...n {
            for j in 1...m {
                let match = target[i-1] == recognized[j-1] ? 1 : -1
                dp[i][j] = Swift.max(
                    dp[i-1][j-1] + match,
                    dp[i-1][j] - 1,
                    dp[i][j-1] - 1
                )
            }
        }

        var pairs: [AlignedPair] = []
        var i = n, j = m
        while i > 0 || j > 0 {
            if i > 0 && j > 0 {
                let match = target[i-1] == recognized[j-1] ? 1 : -1
                if dp[i][j] == dp[i-1][j-1] + match {
                    let seg = j - 1 < segments.count ? segments[j-1] : nil
                    pairs.append(AlignedPair(target: target[i-1], recognized: recognized[j-1], segment: seg))
                    i -= 1; j -= 1
                    continue
                }
            }
            if i > 0 && (j == 0 || dp[i][j] == dp[i-1][j] - 1) {
                pairs.append(AlignedPair(target: target[i-1], recognized: nil, segment: nil))
                i -= 1
            } else {
                let seg = j - 1 < segments.count ? segments[j-1] : nil
                pairs.append(AlignedPair(target: nil, recognized: recognized[j-1], segment: seg))
                j -= 1
            }
        }

        return pairs.reversed()
    }

    // MARK: - Word Result Builder

    private func buildWordResult(from pair: AlignedPair) -> WordResult {
        let targetWord = pair.target ?? ""
        let recognized = pair.recognized
        let segment = pair.segment

        let phonetic = Self.phoneticDictionary[targetWord] ?? phonetize(targetWord)

        // Determine status
        let status: WordStatus
        let wordScore: Double

        if pair.target == nil {
            status = .inserted
            wordScore = 0
        } else if recognized == nil {
            status = .omitted
            wordScore = 0
        } else if targetWord == recognized {
            status = .correct
            wordScore = Double(segment?.confidence ?? 0.8) * 100
        } else {
            status = .mispronounced
            let sim = stringSimilarity(targetWord, recognized ?? "")
            wordScore = sim * 60  // Cap mispronounced at 60
        }

        let tip = buildTip(for: targetWord, status: status, recognized: recognized)

        return WordResult(
            word: targetWord,
            recognizedAs: recognized,
            score: wordScore.clamped(to: 0...100),
            status: status,
            phonetic: phonetic,
            tip: tip
        )
    }

    // MARK: - Scoring Helpers

    private func score(numerator: Int, denominator: Int) -> Double {
        guard denominator > 0 else { return 0 }
        return min(100, Double(numerator) / Double(denominator) * 100)
    }

    private func computeFluency(segments: [TranscriptionSegment], expected: Int, actual: TimeInterval) -> Double {
        let expectedDuration = Double(expected) * 0.35  // ~0.35s per word at natural pace
        guard expectedDuration > 0 else { return 80 }
        let ratio = actual / expectedDuration

        switch ratio {
        case 0.7..<1.6: return 95  // Near-native pace
        case 0.5..<0.7, 1.6..<2.2: return 75  // Slightly off
        case 0.3..<0.5, 2.2..<3.0: return 55  // Notably slow/fast
        default: return 35         // Very off
        }
    }

    // MARK: - Phoneme Approximation

    private func phonetize(_ word: String) -> String {
        // Minimal rule-based approximation for words not in dictionary
        var ipa = word
        let replacements: [(String, String)] = [
            ("tion", "ʃən"), ("sion", "ʒən"), ("ph", "f"), ("gh", ""),
            ("ck", "k"), ("wh", "w"), ("th", "θ"), ("sh", "ʃ"), ("ch", "tʃ"),
            ("ng", "ŋ"), ("qu", "kw"), ("x", "ks"), ("ee", "iː"), ("ea", "iː"),
            ("oo", "uː"), ("ou", "aʊ"), ("ow", "oʊ"), ("ai", "eɪ"), ("ay", "eɪ"),
            ("ie", "iː"), ("igh", "aɪ"), ("oa", "oʊ"),
        ]
        for (from, to) in replacements { ipa = ipa.replacingOccurrences(of: from, with: to) }
        return "/\(ipa)/"
    }

    // MARK: - Feedback Tip Builder

    private func buildTip(for word: String, status: WordStatus, recognized: String?) -> String? {
        switch status {
        case .correct:
            return nil
        case .omitted:
            return "This word was not detected. Speak each syllable clearly and don't trail off."
        case .inserted:
            return nil
        case .mispronounced:
            guard let recognized else { return nil }
            // Detect which sound was likely wrong
            for (sound, tip) in Self.soundTips {
                if word.contains(sound) && !recognized.contains(sound) {
                    return tip
                }
            }
            let phonetic = Self.phoneticDictionary[word] ?? phonetize(word)
            return "Recognized as '\(recognized)'. Correct pronunciation: \(phonetic)"
        }
    }

    // MARK: - String Similarity (Levenshtein ratio)

    private func stringSimilarity(_ a: String, _ b: String) -> Double {
        let aArr = Array(a), bArr = Array(b)
        let n = aArr.count, m = bArr.count
        if n == 0 && m == 0 { return 1 }
        if n == 0 || m == 0 { return 0 }

        var dp = Array(repeating: Array(repeating: 0, count: m + 1), count: n + 1)
        for i in 0...n { dp[i][0] = i }
        for j in 0...m { dp[0][j] = j }

        for i in 1...n {
            for j in 1...m {
                if aArr[i-1] == bArr[j-1] {
                    dp[i][j] = dp[i-1][j-1]
                } else {
                    dp[i][j] = 1 + Swift.min(dp[i-1][j], dp[i][j-1], dp[i-1][j-1])
                }
            }
        }

        let distance = Double(dp[n][m])
        let maxLen = Double(max(n, m))
        return max(0, 1 - distance / maxLen)
    }
}

// MARK: - Comparable Clamp

extension Comparable {
    func clamped(to range: ClosedRange<Self>) -> Self {
        Swift.min(Swift.max(self, range.lowerBound), range.upperBound)
    }
}
