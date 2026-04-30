import SwiftUI

struct WaveformView: View {
    let levels: [Float]
    var barColor: Color = .accentColor
    var barCount: Int = 40

    var body: some View {
        GeometryReader { geo in
            HStack(spacing: 3) {
                ForEach(displayLevels.indices, id: \.self) { i in
                    RoundedRectangle(cornerRadius: 2)
                        .fill(barColor.gradient)
                        .frame(
                            width: barWidth(in: geo),
                            height: barHeight(level: displayLevels[i], in: geo)
                        )
                        .animation(.easeOut(duration: 0.05), value: displayLevels[i])
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
    }

    private var displayLevels: [Float] {
        let source = levels.suffix(barCount)
        if source.count >= barCount { return Array(source) }
        let padding = Array(repeating: Float(0), count: barCount - source.count)
        return padding + Array(source)
    }

    private func barWidth(in geo: GeometryProxy) -> CGFloat {
        let total = geo.size.width
        let spacing = CGFloat(barCount - 1) * 3
        return max(2, (total - spacing) / CGFloat(barCount))
    }

    private func barHeight(level: Float, in geo: GeometryProxy) -> CGFloat {
        let maxH = geo.size.height
        let minH = maxH * 0.08
        return minH + CGFloat(level) * (maxH - minH)
    }
}

// Idle animated waveform shown when not recording
struct IdleWaveformView: View {
    @State private var phase: Double = 0

    var body: some View {
        GeometryReader { geo in
            HStack(spacing: 3) {
                ForEach(0..<40, id: \.self) { i in
                    let height = idleHeight(for: i, in: geo)
                    RoundedRectangle(cornerRadius: 2)
                        .fill(Color(.systemGray4).gradient)
                        .frame(width: max(2, (geo.size.width - 40 * 3) / 40), height: height)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
        .onAppear {
            withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                phase = .pi * 2
            }
        }
    }

    private func idleHeight(for index: Int, in geo: GeometryProxy) -> CGFloat {
        let maxH = geo.size.height
        let wave = sin(Double(index) * 0.4 + phase)
        return maxH * (0.12 + 0.08 * wave)
    }
}

#Preview {
    VStack(spacing: 20) {
        WaveformView(levels: (0..<60).map { _ in Float.random(in: 0...1) })
            .frame(height: 60)
            .padding(.horizontal)

        IdleWaveformView()
            .frame(height: 40)
            .padding(.horizontal)
    }
}
