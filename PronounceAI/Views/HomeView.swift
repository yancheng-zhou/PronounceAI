import SwiftUI

struct HomeView: View {
    @StateObject private var speechService = SpeechService()
    @StateObject private var audioPlayer = AudioPlayer()

    @State private var selectedCategory: Sentence.Category? = nil
    @State private var selectedDifficulty: Sentence.Difficulty? = nil
    @State private var practiceSentence: Sentence?
    @State private var showHistory = false
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    dailyChallengeCard
                    categoryFilter
                    difficultyFilter
                    sentenceList
                }
                .padding(.top, 8)
                .padding(.bottom, 40)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("PronounceAI")
            .searchable(text: $searchText, prompt: "Search sentences…")
            .toolbar { toolbarContent }
            .sheet(item: $practiceSentence) { sentence in
                practiceSheet(for: sentence)
            }
            .sheet(isPresented: $showHistory) {
                HistoryView()
            }
        }
        .task {
            if !speechService.permissionsGranted {
                await speechService.requestPermissions()
            }
        }
    }

    // MARK: - Daily Challenge Card

    private var dailyChallengeCard: some View {
        Button {
            practiceSentence = SentenceLibrary.dailyChallenge
        } label: {
            HStack(spacing: 16) {
                VStack(alignment: .leading, spacing: 6) {
                    Label("Daily Challenge", systemImage: "star.fill")
                        .font(.caption.bold())
                        .foregroundStyle(.yellow)

                    Text(SentenceLibrary.dailyChallenge.text)
                        .font(.subheadline.bold())
                        .foregroundStyle(.white)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)

                    Text(SentenceLibrary.dailyChallenge.difficulty.rawValue)
                        .font(.caption)
                        .foregroundStyle(.white.opacity(0.8))
                }

                Spacer()

                Image(systemName: "mic.circle.fill")
                    .font(.system(size: 48))
                    .foregroundStyle(.white.opacity(0.9))
            }
            .padding(20)
            .background(
                LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing),
                in: RoundedRectangle(cornerRadius: 20)
            )
            .shadow(color: .blue.opacity(0.3), radius: 12, y: 6)
        }
        .buttonStyle(.plain)
        .padding(.horizontal)
    }

    // MARK: - Category Filter

    private var categoryFilter: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Category")
                .font(.headline)
                .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    CategoryChip(label: "All", icon: "square.grid.2x2.fill", isSelected: selectedCategory == nil) {
                        selectedCategory = nil
                    }
                    ForEach(Sentence.Category.allCases, id: \.self) { cat in
                        CategoryChip(label: cat.rawValue, icon: cat.icon, isSelected: selectedCategory == cat) {
                            selectedCategory = selectedCategory == cat ? nil : cat
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }

    // MARK: - Difficulty Filter

    private var difficultyFilter: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(Sentence.Difficulty.allCases, id: \.self) { diff in
                    Button {
                        selectedDifficulty = selectedDifficulty == diff ? nil : diff
                    } label: {
                        Text("\(diff.emoji) \(diff.rawValue)")
                            .font(.caption.bold())
                            .padding(.horizontal, 14)
                            .padding(.vertical, 8)
                            .background(
                                selectedDifficulty == diff
                                ? Color.accentColor
                                : Color(.secondarySystemBackground),
                                in: Capsule()
                            )
                            .foregroundStyle(selectedDifficulty == diff ? .white : .primary)
                    }
                }
            }
            .padding(.horizontal)
        }
    }

    // MARK: - Sentence List

    private var sentenceList: some View {
        LazyVStack(spacing: 12) {
            ForEach(filteredSentences) { sentence in
                SentenceCard(sentence: sentence) {
                    practiceSentence = sentence
                }
            }
        }
        .padding(.horizontal)
    }

    private var filteredSentences: [Sentence] {
        SentenceLibrary.all.filter { sentence in
            let categoryMatch = selectedCategory == nil || sentence.category == selectedCategory
            let difficultyMatch = selectedDifficulty == nil || sentence.difficulty == selectedDifficulty
            let searchMatch = searchText.isEmpty || sentence.text.localizedCaseInsensitiveContains(searchText)
            return categoryMatch && difficultyMatch && searchMatch
        }
    }

    // MARK: - Practice Sheet

    private func practiceSheet(for sentence: Sentence) -> some View {
        PracticeView(
            vm: PracticeViewModel(
                sentence: sentence,
                speechService: speechService,
                audioPlayer: audioPlayer
            )
        )
    }

    // MARK: - Toolbar

    @ToolbarContentBuilder
    private var toolbarContent: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                showHistory = true
            } label: {
                Image(systemName: "clock.arrow.circlepath")
            }
        }
    }
}

// MARK: - Category Chip

struct CategoryChip: View {
    let label: String
    let icon: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Label(label, systemImage: icon)
                .font(.caption.bold())
                .padding(.horizontal, 14)
                .padding(.vertical, 9)
                .background(
                    isSelected ? Color.accentColor : Color(.secondarySystemBackground),
                    in: Capsule()
                )
                .foregroundStyle(isSelected ? .white : .primary)
        }
        .buttonStyle(.plain)
    }
}

// MARK: - Sentence Card

struct SentenceCard: View {
    let sentence: Sentence
    let onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("\(sentence.difficulty.emoji) \(sentence.difficulty.rawValue)")
                        .font(.caption.bold())
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .background(difficultyColor.opacity(0.15), in: Capsule())
                        .foregroundStyle(difficultyColor)

                    Spacer()

                    Label(sentence.category.rawValue, systemImage: sentence.category.icon)
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                }

                Text(sentence.text)
                    .font(.body)
                    .foregroundStyle(.primary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)

                HStack {
                    ForEach(sentence.focusSounds.prefix(3), id: \.self) { sound in
                        Text("/\(sound)/")
                            .font(.caption2.bold())
                            .padding(.horizontal, 6)
                            .padding(.vertical, 2)
                            .background(Color.purple.opacity(0.1), in: Capsule())
                            .foregroundStyle(Color.purple)
                    }

                    Spacer()

                    Image(systemName: "chevron.right")
                        .font(.caption)
                        .foregroundStyle(.tertiary)
                }
            }
            .padding(16)
            .background(Color(.systemBackground), in: RoundedRectangle(cornerRadius: 16))
            .shadow(color: .black.opacity(0.04), radius: 6, y: 3)
        }
        .buttonStyle(.plain)
    }

    private var difficultyColor: Color {
        switch sentence.difficulty {
        case .beginner:     return .green
        case .intermediate: return .blue
        case .advanced:     return .purple
        case .tongueTwister: return .orange
        }
    }
}

// MARK: - History View

struct HistoryView: View {
    @State private var sessions: [PracticeSession] = []

    var body: some View {
        NavigationStack {
            Group {
                if sessions.isEmpty {
                    ContentUnavailableView(
                        "No Sessions Yet",
                        systemImage: "clock.arrow.circlepath",
                        description: Text("Complete a practice session to see your history here.")
                    )
                } else {
                    List(sessions) { session in
                        HistoryRow(session: session)
                    }
                    .listStyle(.insetGrouped)
                }
            }
            .navigationTitle("History")
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear {
            sessions = PracticeViewModel.loadSessions()
        }
    }
}

struct HistoryRow: View {
    let session: PracticeSession

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                Text(session.sentenceText)
                    .font(.subheadline)
                    .lineLimit(1)
                Spacer()
                Text("\(Int(session.overallScore))")
                    .font(.title3.bold())
                    .foregroundStyle(scoreColor)
            }

            HStack(spacing: 12) {
                Label(session.sentenceDifficulty, systemImage: "flag.fill")
                    .font(.caption2)
                    .foregroundStyle(.secondary)
                Text(session.date, style: .relative)
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
            }
        }
        .padding(.vertical, 4)
    }

    private var scoreColor: Color {
        switch session.overallScore {
        case 90...: return .yellow
        case 75..<90: return .green
        case 60..<75: return .blue
        case 40..<60: return .orange
        default: return .red
        }
    }
}
