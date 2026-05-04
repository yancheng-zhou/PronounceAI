import SwiftUI

// Inline colored word chips shown in results
struct WordChip: View {
    let result: WordResult
    let isSelected: Bool
    let onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            Text(result.word)
                .font(.system(.callout, design: .rounded, weight: .semibold))
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(chipBackground, in: Capsule())
                .foregroundStyle(chipForeground)
                .overlay(
                    Capsule()
                        .strokeBorder(isSelected ? chipAccent : .clear, lineWidth: 2)
                )
        }
        .buttonStyle(.plain)
        .scaleEffect(isSelected ? 1.05 : 1)
        .animation(.spring(duration: 0.2), value: isSelected)
    }

    private var chipBackground: Color {
        switch result.status {
        case .correct:      return .green.opacity(0.18)
        case .mispronounced: return .orange.opacity(0.18)
        case .omitted:      return .red.opacity(0.18)
        case .inserted:     return .blue.opacity(0.18)
        }
    }

    private var chipForeground: Color {
        switch result.status {
        case .correct:      return .green
        case .mispronounced: return .orange
        case .omitted:      return .red
        case .inserted:     return .blue
        }
    }

    private var chipAccent: Color { chipForeground }
}

// Expanded detail card for a selected word
struct WordDetailCard: View {
    let result: WordResult
    let sentenceContext: String
    let onPlayWord: () -> Void

    @State private var isSaved = false

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: result.status.icon)
                    .foregroundStyle(statusColor)
                VStack(alignment: .leading, spacing: 2) {
                    Text(result.word)
                        .font(.title3.bold())
                    if let meaning = WordTranslations.meaning(for: result.word) {
                        Text(meaning)
                            .font(.subheadline)
                            .foregroundStyle(Color.accentColor)
                    }
                }
                Spacer()
                Button(action: onPlayWord) {
                    Image(systemName: "speaker.wave.2.fill")
                        .foregroundStyle(.white)
                        .frame(width: 36, height: 36)
                        .background(Color.accentColor, in: Circle())
                }
            }

            // Phonetic
            HStack(spacing: 6) {
                Text("IPA:")
                    .font(.caption.bold())
                    .foregroundStyle(.secondary)
                Text(result.phonetic)
                    .font(.system(.callout, design: .monospaced))
                    .foregroundStyle(.primary)
            }

            // Status + recognized as
            if result.status == .mispronounced, let heard = result.recognizedAs {
                HStack(spacing: 6) {
                    Image(systemName: "ear.fill")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Text("Heard as: \"\(heard)\"")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }

            // Tip
            if let tip = result.tip {
                HStack(alignment: .top, spacing: 8) {
                    Image(systemName: "lightbulb.fill")
                        .font(.caption)
                        .foregroundStyle(.yellow)
                    Text(tip)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(10)
                .background(Color.yellow.opacity(0.1), in: RoundedRectangle(cornerRadius: 10))
            }

            // Score bar
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Score")
                        .font(.caption2.bold())
                        .foregroundStyle(.secondary)
                    Spacer()
                    Text("\(Int(result.score))%")
                        .font(.caption2.bold())
                        .foregroundStyle(statusColor)
                }
                GeometryReader { geo in
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color(.systemGray5))
                        RoundedRectangle(cornerRadius: 4)
                            .fill(statusColor.gradient)
                            .frame(width: geo.size.width * (result.score / 100))
                    }
                }
                .frame(height: 6)
                .animation(.easeOut(duration: 0.8), value: result.score)
            }

            // Save to vocabulary (only for problem words)
            if result.status == .mispronounced || result.status == .omitted {
                Button {
                    VocabularyStore.add(word: result.word, context: sentenceContext)
                    withAnimation { isSaved = true }
                } label: {
                    Label(isSaved ? "Saved to Vocabulary" : "Save to Vocabulary",
                          systemImage: isSaved ? "bookmark.fill" : "bookmark")
                        .font(.subheadline.bold())
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(
                            isSaved ? Color.green.opacity(0.12) : Color.accentColor.opacity(0.1),
                            in: RoundedRectangle(cornerRadius: 10)
                        )
                        .foregroundStyle(isSaved ? .green : Color.accentColor)
                }
                .buttonStyle(.plain)
                .disabled(isSaved)
            }
        }
        .padding(16)
        .background(Color(.systemBackground), in: RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.06), radius: 8, y: 4)
        .onAppear { isSaved = VocabularyStore.contains(word: result.word) }
    }

    private var statusColor: Color {
        switch result.status {
        case .correct:       return .green
        case .mispronounced: return .orange
        case .omitted:       return .red
        case .inserted:      return .blue
        }
    }
}

// Legend bar
struct WordLegend: View {
    var body: some View {
        HStack(spacing: 16) {
            LegendItem(color: .green,  label: "Correct")
            LegendItem(color: .orange, label: "Mispronounced")
            LegendItem(color: .red,    label: "Missing")
        }
    }
}

private struct LegendItem: View {
    let color: Color
    let label: String

    var body: some View {
        HStack(spacing: 4) {
            Circle().fill(color).frame(width: 8, height: 8)
            Text(label).font(.caption2).foregroundStyle(.secondary)
        }
    }
}
