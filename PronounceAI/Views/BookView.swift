import SwiftUI

struct BookView: View {
    @ObservedObject var speechService: SpeechService
    @ObservedObject var audioPlayer: AudioPlayer

    @AppStorage("showChineseTranslation") private var showChinese = false
    @State private var selectedCategory: Sentence.Category? = nil
    @State private var practiceSentence: Sentence?

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    categoryPicker
                        .padding(.bottom, 16)
                    sentenceEntries
                        .padding(.bottom, 40)
                }
                .padding(.top, 8)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Learning Book")
            .navigationBarTitleDisplayMode(.large)
            .toolbar { toolbarContent }
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
    }

    // MARK: - Category Picker

    private var categoryPicker: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                CategoryChip(label: "All", icon: "books.vertical.fill", isSelected: selectedCategory == nil) {
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
        .padding(.top, 8)
    }

    // MARK: - Sentence Entries

    private var sentenceEntries: some View {
        LazyVStack(spacing: 0, pinnedViews: .sectionHeaders) {
            ForEach(visibleSections, id: \.category) { section in
                Section {
                    ForEach(Array(section.sentences.enumerated()), id: \.element.id) { index, sentence in
                        BookEntryRow(
                            index: index + 1,
                            sentence: sentence,
                            showChinese: showChinese
                        ) {
                            practiceSentence = sentence
                        }
                        if index < section.sentences.count - 1 {
                            Divider()
                                .padding(.leading, 56)
                        }
                    }
                    .background(Color(.systemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                    .shadow(color: .black.opacity(0.04), radius: 6, y: 3)
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                } header: {
                    SectionHeader(category: section.category)
                }
            }
        }
    }

    // MARK: - Sections

    private struct SentenceSection {
        let category: Sentence.Category
        let sentences: [Sentence]
    }

    private var visibleSections: [SentenceSection] {
        let categories: [Sentence.Category] = selectedCategory.map { [$0] } ?? Sentence.Category.allCases
        return categories.compactMap { cat in
            let sentences = SentenceLibrary.all.filter { $0.category == cat }
            guard !sentences.isEmpty else { return nil }
            return SentenceSection(category: cat, sentences: sentences)
        }
    }

    // MARK: - Toolbar

    @ToolbarContentBuilder
    private var toolbarContent: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                withAnimation(.spring(response: 0.3)) {
                    showChinese.toggle()
                }
            } label: {
                HStack(spacing: 4) {
                    Image(systemName: showChinese ? "character.bubble.fill" : "character.bubble")
                    Text("中文")
                        .font(.caption.bold())
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 6)
                .background(
                    showChinese ? Color.accentColor : Color(.secondarySystemBackground),
                    in: Capsule()
                )
                .foregroundStyle(showChinese ? .white : .primary)
                .animation(.spring(response: 0.3), value: showChinese)
            }
        }
    }
}

// MARK: - Word Token Button

private struct WordTokenButton: View {
    let token: String
    @Binding var tappedWord: String?

    private var clean: String {
        token.trimmingCharacters(in: .punctuationCharacters).lowercased()
    }

    private var meaning: String? { WordTranslations.meaning(for: clean) }

    private var isSelected: Bool { tappedWord == clean && meaning != nil }

    var body: some View {
        Button {
            guard meaning != nil else { return }
            withAnimation(.spring(response: 0.2)) {
                tappedWord = isSelected ? nil : clean
            }
        } label: {
            Text(token)
                .font(.callout)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(
                    isSelected
                        ? Color.accentColor
                        : (meaning != nil ? Color.accentColor.opacity(0.1) : Color.clear),
                    in: Capsule()
                )
                .foregroundStyle(
                    isSelected ? .white
                        : (meaning != nil ? Color.accentColor : Color.secondary)
                )
        }
        .buttonStyle(.plain)
    }
}

// MARK: - Section Header

private struct SectionHeader: View {
    let category: Sentence.Category

    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: category.icon)
                .font(.subheadline.bold())
                .foregroundStyle(Color.accentColor)
            Text(category.rawValue)
                .font(.headline)
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .background(.ultraThinMaterial)
    }
}

// MARK: - Book Entry Row

private struct BookEntryRow: View {
    let index: Int
    let sentence: Sentence
    let showChinese: Bool
    let onPractice: () -> Void

    @State private var expanded = false
    @State private var tappedWord: String?

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            mainContent
            if expanded {
                detailContent
                    .transition(.move(edge: .top).combined(with: .opacity))
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            withAnimation(.spring(response: 0.35, dampingFraction: 0.8)) {
                expanded.toggle()
                if !expanded { tappedWord = nil }
            }
        }
    }

    // MARK: - Main Row

    private var mainContent: some View {
        HStack(alignment: .top, spacing: 12) {
            Text("\(index)")
                .font(.caption.monospacedDigit())
                .foregroundStyle(.tertiary)
                .frame(width: 28, alignment: .trailing)
                .padding(.top, 2)

            VStack(alignment: .leading, spacing: 6) {
                Text(sentence.text)
                    .font(.body)
                    .foregroundStyle(.primary)
                    .fixedSize(horizontal: false, vertical: true)

                if !sentence.phonetics.isEmpty {
                    Text(sentence.phonetics)
                        .font(.caption.monospaced())
                        .foregroundStyle(.secondary)
                }

                if showChinese, let entry = ChineseTranslations.entry(for: sentence.text) {
                    chineseBlock(entry: entry)
                }
            }

            Spacer(minLength: 8)

            VStack(spacing: 6) {
                difficultyBadge
                chevron
            }
            .padding(.top, 2)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 14)
    }

    private func chineseBlock(entry: ChineseEntry) -> some View {
        Text(entry.translation)
            .font(.subheadline)
            .foregroundStyle(Color.accentColor)
            .padding(.top, 2)
    }

    private var difficultyBadge: some View {
        Text(sentence.difficulty.emoji)
            .font(.caption)
    }

    private var chevron: some View {
        Image(systemName: expanded ? "chevron.up" : "chevron.down")
            .font(.caption2.bold())
            .foregroundStyle(.tertiary)
    }

    // MARK: - Expanded Detail

    private var detailContent: some View {
        VStack(alignment: .leading, spacing: 12) {
            Divider()
                .padding(.horizontal, 16)

            VStack(alignment: .leading, spacing: 10) {
                wordMeaningsSection
                if !sentence.focusSounds.isEmpty {
                    focusSoundsRow
                }
                if !sentence.tip.isEmpty {
                    tipRow
                }
                practiceButton
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 14)
        }
    }

    // MARK: - Word Meanings

    private var wordMeaningsSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Tap a word for its meaning")
                .font(.caption2.bold().uppercaseSmallCaps())
                .foregroundStyle(.secondary)

            FlowLayout(spacing: 6) {
                ForEach(Array(sentenceTokens.enumerated()), id: \.offset) { _, token in
                    WordTokenButton(token: token, tappedWord: $tappedWord)
                }
            }

            if let word = tappedWord, let meaning = WordTranslations.meaning(for: word) {
                HStack(spacing: 8) {
                    Image(systemName: "character.bubble.fill")
                        .font(.caption)
                        .foregroundStyle(Color.accentColor)
                    Text("\(word)  →  \(meaning)")
                        .font(.subheadline.bold())
                        .foregroundStyle(Color.accentColor)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.accentColor.opacity(0.1), in: RoundedRectangle(cornerRadius: 10))
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
    }

    private var sentenceTokens: [String] {
        sentence.text.components(separatedBy: " ").filter { !$0.isEmpty }
    }

    private var focusSoundsRow: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Focus Sounds")
                .font(.caption2.bold().uppercaseSmallCaps())
                .foregroundStyle(.secondary)
            HStack(spacing: 6) {
                ForEach(sentence.focusSounds, id: \.self) { sound in
                    Text("/\(sound)/")
                        .font(.caption.bold().monospaced())
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.purple.opacity(0.12), in: Capsule())
                        .foregroundStyle(Color.purple)
                }
            }
        }
    }

    private var tipRow: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Tip")
                .font(.caption2.bold().uppercaseSmallCaps())
                .foregroundStyle(.secondary)
            Text(sentence.tip)
                .font(.caption)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)
        }
    }

    private var practiceButton: some View {
        Button(action: onPractice) {
            Label("Practice Pronunciation", systemImage: "mic.fill")
                .font(.subheadline.bold())
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(Color.accentColor, in: RoundedRectangle(cornerRadius: 12))
                .foregroundStyle(.white)
        }
        .buttonStyle(.plain)
    }
}
