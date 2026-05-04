import SwiftUI

// MARK: - Vocabulary List

struct VocabularyView: View {
    @ObservedObject var speechService: SpeechService
    @ObservedObject var audioPlayer: AudioPlayer

    @State private var entries: [VocabularyEntry] = []
    @State private var searchText = ""
    @State private var selectedEntry: VocabularyEntry?

    var body: some View {
        NavigationStack {
            Group {
                if entries.isEmpty {
                    emptyState
                } else {
                    list
                }
            }
            .navigationTitle("My Vocabulary")
            .navigationBarTitleDisplayMode(.large)
            .searchable(text: $searchText, prompt: "Search saved words…")
            .sheet(item: $selectedEntry) { entry in
                VocabularyDetailView(
                    entry: entry,
                    speechService: speechService,
                    audioPlayer: audioPlayer
                )
            }
        }
        .onAppear { entries = VocabularyStore.load() }
    }

    private var emptyState: some View {
        ContentUnavailableView(
            "No Saved Words",
            systemImage: "bookmark.slash",
            description: Text("Tap a mispronounced or missing word in your practice results to save it here.")
        )
    }

    private var list: some View {
        List {
            ForEach(filtered) { entry in
                VocabularyRow(entry: entry)
                    .contentShape(Rectangle())
                    .onTapGesture { selectedEntry = entry }
            }
            .onDelete { indexSet in
                let ids = Set(indexSet.map { filtered[$0].id })
                VocabularyStore.remove(ids: ids)
                entries = VocabularyStore.load()
            }
        }
        .listStyle(.insetGrouped)
    }

    private var filtered: [VocabularyEntry] {
        guard !searchText.isEmpty else { return entries }
        return entries.filter {
            $0.word.localizedCaseInsensitiveContains(searchText) ||
            $0.sentenceContext.localizedCaseInsensitiveContains(searchText)
        }
    }
}

// MARK: - Vocabulary Row

private struct VocabularyRow: View {
    let entry: VocabularyEntry

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            VStack(alignment: .leading, spacing: 4) {
                Text(entry.word)
                    .font(.title3.bold())
                if let meaning = WordTranslations.meaning(for: entry.word) {
                    Text(meaning)
                        .font(.subheadline)
                        .foregroundStyle(Color.accentColor)
                }
                Text(entry.sentenceContext)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
                    .italic()
                    .padding(.top, 2)
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 4) {
                Text(entry.dateAdded, style: .date)
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
                Image(systemName: "chevron.right")
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
            }
        }
        .padding(.vertical, 4)
    }
}

// MARK: - Vocabulary Detail View

struct VocabularyDetailView: View {
    let entry: VocabularyEntry
    @ObservedObject var speechService: SpeechService
    @ObservedObject var audioPlayer: AudioPlayer

    @State private var practiceState: WordPracticeState = .idle
    @State private var practiceSentence: Sentence?

    private var matchingSentence: Sentence? {
        SentenceLibrary.all.first { $0.text == entry.sentenceContext }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    wordHeader
                    hearButton
                    practiceSection
                    sentenceSection
                }
                .padding(20)
                .padding(.bottom, 40)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Vocabulary Practice")
            .navigationBarTitleDisplayMode(.inline)
        }
        .sheet(item: $practiceSentence) { sentence in
            PracticeView(
                vm: PracticeViewModel(
                    sentence: sentence,
                    speechService: speechService,
                    audioPlayer: audioPlayer
                )
            )
        }
    }

    // MARK: - Word Header

    private var wordHeader: some View {
        VStack(spacing: 8) {
            Text(entry.word)
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .minimumScaleFactor(0.5)
                .lineLimit(1)

            if let meaning = WordTranslations.meaning(for: entry.word) {
                Text(meaning)
                    .font(.title2)
                    .foregroundStyle(Color.accentColor)
            }

            Text(entry.dateAdded, style: .date)
                .font(.caption)
                .foregroundStyle(.tertiary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 28)
        .background(Color(.systemBackground), in: RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.04), radius: 6, y: 3)
    }

    // MARK: - Hear Button

    private var hearButton: some View {
        Button {
            audioPlayer.speakWord(entry.word)
        } label: {
            Label("Hear Correct Pronunciation", systemImage: "speaker.wave.2.fill")
                .font(.body.bold())
                .frame(maxWidth: .infinity)
                .padding(.vertical, 14)
                .background(Color.accentColor.opacity(0.12), in: RoundedRectangle(cornerRadius: 14))
                .foregroundStyle(Color.accentColor)
        }
        .buttonStyle(.plain)
    }

    // MARK: - Practice Section

    private var practiceSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Label("Pronunciation Practice", systemImage: "mic.fill")
                .font(.headline)

            Group {
                switch practiceState {
                case .idle:       idleControls
                case .recording:  recordingControls
                case .analyzing:  analyzingView
                case .result(let score, let heard): resultView(score: score, heard: heard)
                case .error(let msg): errorView(msg)
                }
            }
        }
        .padding(16)
        .background(Color(.systemBackground), in: RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.04), radius: 6, y: 3)
    }

    private var idleControls: some View {
        VStack(spacing: 12) {
            Text("Say \"\(entry.word)\" into the microphone")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)

            Button { startRecording() } label: {
                Image(systemName: "mic.circle.fill")
                    .font(.system(size: 70))
                    .foregroundStyle(Color.accentColor)
            }
            .buttonStyle(.plain)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
    }

    private var recordingControls: some View {
        VStack(spacing: 14) {
            WaveformView(levels: speechService.audioLevels)
                .frame(height: 44)

            Text("Listening…")
                .font(.subheadline)
                .foregroundStyle(.secondary)

            Button { stopAndAnalyze() } label: {
                Label("Stop", systemImage: "stop.circle.fill")
                    .font(.body.bold())
                    .padding(.horizontal, 28)
                    .padding(.vertical, 12)
                    .background(Color.red, in: Capsule())
                    .foregroundStyle(.white)
            }
            .buttonStyle(.plain)
        }
        .frame(maxWidth: .infinity)
    }

    private var analyzingView: some View {
        HStack(spacing: 12) {
            ProgressView()
            Text("Analyzing…")
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 12)
    }

    private func resultView(score: Double, heard: String) -> some View {
        VStack(spacing: 14) {
            HStack(spacing: 20) {
                ZStack {
                    Circle()
                        .stroke(scoreColor(score).opacity(0.2), lineWidth: 8)
                    Circle()
                        .trim(from: 0, to: min(score / 100, 1))
                        .stroke(scoreColor(score),
                                style: StrokeStyle(lineWidth: 8, lineCap: .round))
                        .rotationEffect(.degrees(-90))
                    Text("\(Int(score))")
                        .font(.title2.bold())
                        .foregroundStyle(scoreColor(score))
                }
                .frame(width: 76, height: 76)
                .animation(.easeOut(duration: 0.8), value: score)

                VStack(alignment: .leading, spacing: 6) {
                    Text(scoreLabel(score))
                        .font(.title3.bold())
                        .foregroundStyle(scoreColor(score))
                    if !heard.trimmingCharacters(in: .whitespaces).isEmpty {
                        HStack(spacing: 4) {
                            Image(systemName: "ear.fill")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                            Text("Heard: \"\(heard)\"")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                Spacer()
            }

            Button {
                withAnimation(.spring(response: 0.3)) { practiceState = .idle }
            } label: {
                Label("Try Again", systemImage: "arrow.counterclockwise")
                    .font(.subheadline.bold())
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 11)
                    .background(Color(.secondarySystemBackground), in: RoundedRectangle(cornerRadius: 12))
                    .foregroundStyle(.primary)
            }
            .buttonStyle(.plain)
        }
    }

    private func errorView(_ message: String) -> some View {
        VStack(spacing: 10) {
            Label(message, systemImage: "exclamationmark.triangle.fill")
                .font(.caption)
                .foregroundStyle(.orange)
                .multilineTextAlignment(.center)
            Button("Try Again") {
                withAnimation { practiceState = .idle }
            }
            .font(.subheadline.bold())
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
    }

    // MARK: - Sentence Section

    private var sentenceSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Label("Original Sentence", systemImage: "text.quote")
                .font(.headline)

            Text(entry.sentenceContext)
                .font(.body)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)

            if let sentence = matchingSentence {
                Button { practiceSentence = sentence } label: {
                    Label("Practice Full Sentence", systemImage: "mic.fill")
                        .font(.subheadline.bold())
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 13)
                        .background(Color.accentColor, in: RoundedRectangle(cornerRadius: 12))
                        .foregroundStyle(.white)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(16)
        .background(Color(.systemBackground), in: RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.04), radius: 6, y: 3)
    }

    // MARK: - Recording Logic

    private func startRecording() {
        do {
            try speechService.startRecording()
            withAnimation { practiceState = .recording }
        } catch {
            practiceState = .error(error.localizedDescription)
        }
    }

    private func stopAndAnalyze() {
        withAnimation { practiceState = .analyzing }
        Task {
            do {
                let speechResult = try await speechService.stopRecording()
                let result = PronunciationAnalyzer().analyze(
                    target: entry.word,
                    speechResult: speechResult
                )
                await MainActor.run {
                    withAnimation(.spring(response: 0.4)) {
                        practiceState = .result(score: result.overallScore, heard: result.transcript)
                    }
                }
            } catch {
                await MainActor.run {
                    practiceState = .error(error.localizedDescription)
                }
            }
        }
    }

    // MARK: - Score Helpers

    private func scoreColor(_ score: Double) -> Color {
        switch score {
        case 90...: return .yellow
        case 75..<90: return .green
        case 60..<75: return .blue
        default: return .orange
        }
    }

    private func scoreLabel(_ score: Double) -> String {
        switch score {
        case 90...: return "Excellent! 🏆"
        case 75..<90: return "Good Job! ⭐"
        case 60..<75: return "Fair 👍"
        default: return "Keep Practicing 💪"
        }
    }
}

// MARK: - Word Practice State

enum WordPracticeState {
    case idle, recording, analyzing
    case result(score: Double, heard: String)
    case error(String)
}
