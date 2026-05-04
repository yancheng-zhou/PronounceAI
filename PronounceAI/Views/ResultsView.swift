import SwiftUI

struct ResultsView: View {
    let result: PronunciationResult
    let sentence: Sentence
    let onRetry: () -> Void
    let onNext: () -> Void
    let onPlayWord: (String) -> Void
    let onPlayReference: () -> Void

    @State private var selectedWord: WordResult?
    @State private var showTranscript = false

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                scoreSection
                subScoresSection
                wordAnalysisSection
                if let selected = selectedWord {
                    WordDetailCard(result: selected, sentenceContext: sentence.text) {
                        onPlayWord(selected.word)
                    }
                    .padding(.horizontal)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                }
                transcriptSection
                actionButtons
            }
            .padding(.top, 24)
            .padding(.bottom, 40)
        }
        .background(Color(.systemGroupedBackground))
        .navigationTitle("Your Results")
        .navigationBarTitleDisplayMode(.inline)
    }

    // MARK: - Score Section

    private var scoreSection: some View {
        VStack(spacing: 8) {
            ScoreRingView(score: result.overallScore, grade: result.grade, diameter: 180)
            Text("Overall Pronunciation Score")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding(.vertical, 8)
    }

    // MARK: - Sub-Scores

    private var subScoresSection: some View {
        HStack(spacing: 10) {
            SubScoreCard(label: "Accuracy", score: result.accuracyScore, icon: "mic.fill", color: .blue)
            SubScoreCard(label: "Fluency", score: result.fluencyScore, icon: "waveform", color: .purple)
            SubScoreCard(label: "Complete", score: result.completenessScore, icon: "checkmark.seal.fill", color: .green)
        }
        .padding(.horizontal)
    }

    // MARK: - Word Analysis

    private var wordAnalysisSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Word Breakdown")
                    .font(.headline)
                Spacer()
                WordLegend()
            }
            .padding(.horizontal)

            // Word chips flow layout
            FlowLayout(spacing: 8) {
                ForEach(result.wordResults) { wordResult in
                    WordChip(
                        result: wordResult,
                        isSelected: selectedWord?.id == wordResult.id
                    ) {
                        withAnimation(.spring(duration: 0.3)) {
                            if selectedWord?.id == wordResult.id {
                                selectedWord = nil
                            } else {
                                selectedWord = wordResult
                            }
                        }
                    }
                }
            }
            .padding(.horizontal)

            Text("Tap any word for detailed feedback")
                .font(.caption)
                .foregroundStyle(.tertiary)
                .padding(.horizontal)
        }
        .padding(.vertical, 16)
        .background(Color(.systemBackground), in: RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal)
    }

    // MARK: - Transcript Section

    private var transcriptSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Button {
                withAnimation { showTranscript.toggle() }
            } label: {
                HStack {
                    Label("What we heard", systemImage: "text.quote")
                        .font(.headline)
                    Spacer()
                    Image(systemName: showTranscript ? "chevron.up" : "chevron.down")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
            .foregroundStyle(.primary)

            if showTranscript {
                VStack(alignment: .leading, spacing: 8) {
                    Text(result.transcript.isEmpty ? "(No speech detected)" : result.transcript)
                        .font(.body)
                        .foregroundStyle(result.transcript.isEmpty ? .secondary : .primary)
                        .fixedSize(horizontal: false, vertical: true)

                    Divider()

                    HStack {
                        Image(systemName: "speaker.wave.2.fill")
                        Text("Reference:")
                            .font(.caption.bold())
                        Text(result.targetSentence)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
        .padding(16)
        .background(Color(.systemBackground), in: RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal)
    }

    // MARK: - Action Buttons

    private var actionButtons: some View {
        VStack(spacing: 12) {
            Button(action: onPlayReference) {
                Label("Hear Correct Pronunciation", systemImage: "speaker.wave.2.fill")
                    .font(.body.bold())
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(Color.accentColor.opacity(0.12), in: RoundedRectangle(cornerRadius: 14))
                    .foregroundStyle(Color.accentColor)
            }

            HStack(spacing: 12) {
                Button(action: onRetry) {
                    Label("Try Again", systemImage: "arrow.counterclockwise")
                        .font(.body.bold())
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                        .background(Color(.secondarySystemBackground), in: RoundedRectangle(cornerRadius: 14))
                        .foregroundStyle(.primary)
                }

                Button(action: onNext) {
                    Label("Next Sentence", systemImage: "arrow.right")
                        .font(.body.bold())
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                        .background(Color.accentColor, in: RoundedRectangle(cornerRadius: 14))
                        .foregroundStyle(.white)
                }
            }
        }
        .padding(.horizontal)
    }
}

// MARK: - Flow Layout (wrapping HStack)

struct FlowLayout: Layout {
    var spacing: CGFloat = 8

    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        let maxWidth = proposal.width ?? 0
        var height: CGFloat = 0
        var rowWidth: CGFloat = 0
        var rowHeight: CGFloat = 0

        for subview in subviews {
            let size = subview.sizeThatFits(.unspecified)
            if rowWidth + size.width > maxWidth, rowWidth > 0 {
                height += rowHeight + spacing
                rowWidth = 0
                rowHeight = 0
            }
            rowWidth += size.width + spacing
            rowHeight = max(rowHeight, size.height)
        }
        height += rowHeight
        return CGSize(width: maxWidth, height: height)
    }

    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        var x = bounds.minX
        var y = bounds.minY
        var rowHeight: CGFloat = 0

        for subview in subviews {
            let size = subview.sizeThatFits(.unspecified)
            if x + size.width > bounds.maxX, x > bounds.minX {
                y += rowHeight + spacing
                x = bounds.minX
                rowHeight = 0
            }
            subview.place(at: CGPoint(x: x, y: y), proposal: ProposedViewSize(size))
            x += size.width + spacing
            rowHeight = max(rowHeight, size.height)
        }
    }
}
