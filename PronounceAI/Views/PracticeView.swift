import SwiftUI

struct PracticeView: View {
    @StateObject var vm: PracticeViewModel
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground).ignoresSafeArea()

                switch vm.state {
                case .idle, .recording:
                    recordingScreen
                case .analyzing:
                    analyzingScreen
                case .results(let result):
                    ResultsView(
                        result: result,
                        sentence: vm.selectedSentence,
                        onRetry: vm.retry,
                        onNext: { dismiss() },
                        onPlayWord: vm.playWord,
                        onPlayReference: vm.playReference
                    )
                case .error(let msg):
                    errorScreen(message: msg)
                }
            }
            .navigationTitle("Practice")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { toolbarContent }
        }
    }

    // MARK: - Recording Screen

    private var recordingScreen: some View {
        ScrollView {
            VStack(spacing: 28) {
                difficultyBadge
                sentenceCard
                phoneticsToggle
                waveformSection
                controlButtons
            }
            .padding(.horizontal)
            .padding(.top, 16)
            .padding(.bottom, 40)
        }
    }

    private var difficultyBadge: some View {
        HStack {
            Label(
                "\(vm.selectedSentence.difficulty.emoji) \(vm.selectedSentence.difficulty.rawValue)",
                systemImage: "flag.fill"
            )
            .font(.caption.bold())
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(Color.accentColor.opacity(0.12), in: Capsule())
            .foregroundStyle(Color.accentColor)

            Spacer()

            Label(vm.selectedSentence.category.rawValue, systemImage: vm.selectedSentence.category.icon)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }

    private var sentenceCard: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(vm.selectedSentence.text)
                .font(.title3.bold())
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.leading)

            if vm.showPhonetics {
                Text(vm.selectedSentence.phonetics)
                    .font(.system(.callout, design: .monospaced))
                    .foregroundStyle(.secondary)
                    .transition(.opacity.combined(with: .move(edge: .top)))
            }

            Divider()

            // Focus sounds
            if !vm.selectedSentence.focusSounds.isEmpty {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Focus sounds")
                        .font(.caption.bold())
                        .foregroundStyle(.secondary)
                    HStack {
                        ForEach(vm.selectedSentence.focusSounds, id: \.self) { sound in
                            Text("/\(sound)/")
                                .font(.system(.caption, design: .monospaced, weight: .semibold))
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(Color.purple.opacity(0.12), in: Capsule())
                                .foregroundStyle(Color.purple)
                        }
                    }
                }
            }

            // Tip
            HStack(alignment: .top, spacing: 8) {
                Image(systemName: "lightbulb.fill")
                    .foregroundStyle(.yellow)
                    .font(.caption)
                Text(vm.selectedSentence.tip)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(10)
            .background(Color.yellow.opacity(0.08), in: RoundedRectangle(cornerRadius: 10))
        }
        .padding(20)
        .background(Color(.systemBackground), in: RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.04), radius: 8, y: 4)
    }

    private var phoneticsToggle: some View {
        Toggle(isOn: $vm.showPhonetics.animation()) {
            Label("Show Phonetics", systemImage: "textformat.abc")
                .font(.subheadline)
        }
        .toggleStyle(.switch)
        .padding(.horizontal, 4)
    }

    private var waveformSection: some View {
        VStack(spacing: 12) {
            if vm.state == .recording {
                WaveformView(levels: vm.speechService.audioLevels, barColor: .red)
                    .frame(height: 64)
                    .transition(.opacity)

                Text(vm.speechService.liveTranscript.isEmpty
                     ? "Listening..." : vm.speechService.liveTranscript)
                    .font(.callout)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .padding(.horizontal)
                    .animation(.default, value: vm.speechService.liveTranscript)
            } else {
                IdleWaveformView()
                    .frame(height: 40)
                    .transition(.opacity)

                Text("Tap the microphone to begin")
                    .font(.callout)
                    .foregroundStyle(.tertiary)
            }
        }
        .padding(16)
        .background(Color(.systemBackground), in: RoundedRectangle(cornerRadius: 16))
    }

    private var controlButtons: some View {
        VStack(spacing: 16) {
            // Big record button
            Button {
                if vm.state == .recording {
                    vm.stopRecording()
                } else {
                    vm.startRecording()
                }
            } label: {
                ZStack {
                    Circle()
                        .fill(vm.state == .recording ? Color.red : Color.accentColor)
                        .frame(width: 80, height: 80)
                        .shadow(color: (vm.state == .recording ? Color.red : Color.accentColor).opacity(0.4),
                                radius: vm.state == .recording ? 12 : 6, y: 4)
                        .scaleEffect(vm.state == .recording ? 1.08 : 1)
                        .animation(.easeInOut(duration: 0.8).repeatForever(autoreverses: true),
                                   value: vm.state == .recording)

                    Image(systemName: vm.state == .recording ? "stop.fill" : "mic.fill")
                        .font(.system(size: 30, weight: .semibold))
                        .foregroundStyle(.white)
                }
            }

            // Listen buttons
            if vm.state == .idle {
                HStack(spacing: 12) {
                    Button(action: vm.playReference) {
                        Label("Normal Speed", systemImage: "speaker.wave.2.fill")
                            .font(.subheadline.bold())
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 12)
                            .background(Color(.secondarySystemBackground), in: RoundedRectangle(cornerRadius: 12))
                    }
                    Button(action: vm.playSlowly) {
                        Label("Slow Speed", systemImage: "speaker.wave.1.fill")
                            .font(.subheadline.bold())
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 12)
                            .background(Color(.secondarySystemBackground), in: RoundedRectangle(cornerRadius: 12))
                    }
                }
                .foregroundStyle(.primary)
            }
        }
    }

    // MARK: - Analyzing Screen

    private var analyzingScreen: some View {
        VStack(spacing: 20) {
            ProgressView()
                .scaleEffect(1.5)
            Text("Analyzing your pronunciation...")
                .font(.headline)
            Text("This will take just a moment")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }

    // MARK: - Error Screen

    private func errorScreen(message: String) -> some View {
        VStack(spacing: 20) {
            Image(systemName: "exclamationmark.triangle.fill")
                .font(.system(size: 48))
                .foregroundStyle(.orange)
            Text("Something went wrong")
                .font(.headline)
            Text(message)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Button("Try Again", action: vm.retry)
                .buttonStyle(.borderedProminent)
        }
    }

    // MARK: - Toolbar

    @ToolbarContentBuilder
    private var toolbarContent: some ToolbarContent {
        ToolbarItem(placement: .cancellationAction) {
            Button("Close") {
                vm.audioPlayer.stop()
                dismiss()
            }
        }
    }
}
