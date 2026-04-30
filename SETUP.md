# PronounceAI — Setup Guide

## Requirements
- Xcode 15 or later
- iOS 16.0+ deployment target
- macOS 13+ for development
- Physical iPhone strongly recommended (speech recognition is limited on Simulator)

## Project Setup

### 1. Create the Xcode Project

1. Open Xcode → **File → New → Project**
2. Choose **iOS → App**
3. Set:
   - **Product Name:** `PronounceAI`
   - **Bundle Identifier:** `com.yourname.PronounceAI`
   - **Interface:** SwiftUI
   - **Language:** Swift
   - **Minimum Deployments:** iOS 16.0
4. Save to `E:\PronounceAI\` (overwrite the generated folder)

### 2. Add Source Files

In Xcode's Project Navigator, **right-click** on the `PronounceAI` group and select **Add Files to "PronounceAI"**. Add all files from:

```
PronounceAI/
├── PronounceAIApp.swift        ← Replace Xcode-generated file
├── Models/
│   ├── Models.swift
│   └── SentenceLibrary.swift
├── Services/
│   ├── SpeechService.swift
│   ├── PronunciationAnalyzer.swift
│   └── AudioPlayer.swift
├── ViewModels/
│   └── PracticeViewModel.swift
└── Views/
    ├── HomeView.swift
    ├── PracticeView.swift
    ├── ResultsView.swift
    └── Components/
        ├── WaveformView.swift
        ├── ScoreRingView.swift
        └── WordFeedbackRow.swift
```

> Tip: Make sure "Copy items if needed" is **unchecked** (files already exist in place).

### 3. Configure Info.plist

In Xcode's Project Navigator, select the **PronounceAI** target → **Info** tab, and add:

| Key | Value |
|-----|-------|
| Privacy - Microphone Usage Description | "PronounceAI needs microphone access to record your voice and evaluate your pronunciation." |
| Privacy - Speech Recognition Usage Description | "PronounceAI uses speech recognition to transcribe what you say and compare it to the target sentence." |

Or replace the generated `Info.plist` content with the one provided.

### 4. Enable Frameworks (automatic, but verify)

Xcode links these automatically for SwiftUI projects. If you see linker errors, go to:
**Target → Build Phases → Link Binary With Libraries** and add:
- `Speech.framework`
- `AVFoundation.framework`

### 5. (Optional) Upgrade TTS Voice

For a higher-quality reference voice on iOS 17+:

```swift
// In AudioPlayer.swift, makeUtterance(_:rate:):
utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.voice.premium.en-US.Zoe")
    ?? AVSpeechSynthesisVoice(language: "en-US")
```

Run `AVSpeechSynthesisVoice.speechVoices()` in a Playground to list all available voices.

### 6. (Optional) Upgrade to Azure Pronunciation Assessment

For phoneme-level accuracy scores, integrate **Azure Cognitive Services Speech SDK**:

1. Add via SPM: `https://github.com/Azure-Samples/cognitive-services-speech-sdk`
2. In `SpeechService.swift`, replace `SFSpeechRecognizer` with `SPXSpeechRecognizer`
3. Use `SPXPronunciationAssessmentConfig` with `referenceText` set to the target sentence
4. The SDK returns per-phoneme `AccuracyScore`, `ErrorType`, and overall `PronunciationScore`

Azure Free Tier: 5 hours/month of speech recognition (no credit card required).

## Architecture

```
HomeView
 └─ PracticeView (sheet)
     ├─ PracticeViewModel        ← orchestrates the session
     │   ├─ SpeechService        ← AVAudioEngine + SFSpeechRecognizer
     │   ├─ PronunciationAnalyzer ← word alignment + scoring
     │   └─ AudioPlayer          ← AVSpeechSynthesizer (TTS)
     └─ ResultsView
         ├─ ScoreRingView
         ├─ WordChip / WordDetailCard
         └─ FlowLayout
```

## Scoring Algorithm

| Component | Weight | Method |
|-----------|--------|--------|
| Accuracy | 50% | Word match rate × segment confidence |
| Fluency | 25% | Speech rate vs. expected (words/sec) |
| Completeness | 25% | Fraction of target words spoken |

Word alignment uses the Needleman-Wunsch algorithm to correctly handle insertions, deletions, and substitutions.

## Adding More Sentences

Edit `SentenceLibrary.swift` and add `Sentence` objects to any of the static arrays:

```swift
Sentence(
    id: UUID(),
    text: "The quick brown fox jumps over the lazy dog.",
    difficulty: .beginner,
    category: .everyday,
    phonetics: "/ðə kwɪk braʊn fɒks dʒʌmps ˈoʊvər ðə ˈleɪzi dɒɡ/",
    focusSounds: ["th", "qu"],
    tip: "Focus on the voiced 'th' in 'the' and the 'qu' cluster."
)
```
