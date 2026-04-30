import SwiftUI

struct ScoreRingView: View {
    let score: Double
    let grade: PronunciationResult.Grade
    var diameter: CGFloat = 180
    var lineWidth: CGFloat = 16

    @State private var animatedScore: Double = 0

    var body: some View {
        ZStack {
            // Track ring
            Circle()
                .stroke(Color(.systemGray5), lineWidth: lineWidth)

            // Filled arc
            Circle()
                .trim(from: 0, to: animatedScore / 100)
                .stroke(
                    AngularGradient(
                        colors: [scoreColor.opacity(0.6), scoreColor],
                        center: .center,
                        startAngle: .degrees(-90),
                        endAngle: .degrees(270)
                    ),
                    style: StrokeStyle(lineWidth: lineWidth, lineCap: .round)
                )
                .rotationEffect(.degrees(-90))
                .animation(.easeOut(duration: 1.2), value: animatedScore)

            // Center content
            VStack(spacing: 4) {
                Text(grade.emoji)
                    .font(.system(size: 32))
                Text("\(Int(animatedScore))")
                    .font(.system(size: 44, weight: .bold, design: .rounded))
                    .foregroundStyle(scoreColor)
                Text(grade.label)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
            }
        }
        .frame(width: diameter, height: diameter)
        .onAppear {
            animatedScore = score
        }
    }

    private var scoreColor: Color {
        switch score {
        case 90...: return Color.yellow
        case 75..<90: return Color.green
        case 60..<75: return Color.blue
        case 40..<60: return Color.orange
        default: return Color.red
        }
    }
}

struct SubScoreCard: View {
    let label: String
    let score: Double
    let icon: String
    let color: Color

    @State private var animatedScore: Double = 0

    var body: some View {
        VStack(spacing: 6) {
            Image(systemName: icon)
                .font(.system(size: 18))
                .foregroundStyle(color)

            ZStack {
                Circle()
                    .stroke(color.opacity(0.2), lineWidth: 5)
                Circle()
                    .trim(from: 0, to: animatedScore / 100)
                    .stroke(color, style: StrokeStyle(lineWidth: 5, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                    .animation(.easeOut(duration: 1.0), value: animatedScore)
            }
            .frame(width: 52, height: 52)
            .overlay {
                Text("\(Int(animatedScore))")
                    .font(.system(size: 14, weight: .bold, design: .rounded))
            }

            Text(label)
                .font(.caption2)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 12)
        .background(color.opacity(0.07), in: RoundedRectangle(cornerRadius: 14))
        .onAppear { animatedScore = score }
    }
}

#Preview {
    VStack(spacing: 24) {
        ScoreRingView(score: 87, grade: .good)

        HStack {
            SubScoreCard(label: "Accuracy", score: 90, icon: "mic.fill", color: .green)
            SubScoreCard(label: "Fluency", score: 75, icon: "waveform", color: .blue)
            SubScoreCard(label: "Complete", score: 100, icon: "checkmark.seal.fill", color: .purple)
        }
        .padding(.horizontal)
    }
}
