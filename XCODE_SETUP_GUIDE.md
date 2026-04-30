# PronounceAI — Complete Xcode Setup Guide

## Before You Begin

### Requirements
| Item | Minimum |
|---|---|
| macOS | Ventura 13.0 or later |
| Xcode | 15.0 or later |
| iOS deployment target | 16.0 |
| Test device | Physical iPhone strongly recommended |
| Apple ID | Free Apple ID is enough for device testing |

> **Note:** Xcode only runs on macOS. If your source files are on a Windows machine,
> copy the entire `PronounceAI` folder to your Mac first (USB, AirDrop, shared folder, etc.).

---

## Part 1 — Transfer Files to Your Mac

Copy the entire `PronounceAI` folder to a location on your Mac, for example:
```
~/Developer/PronounceAI/
```

After copying, the structure should look like this:
```
PronounceAI/
├── SETUP.md
├── XCODE_SETUP_GUIDE.md
└── PronounceAI/                    ← inner folder contains all Swift files
    ├── PronounceAIApp.swift
    ├── Info.plist
    ├── Models/
    │   ├── Models.swift
    │   ├── SentenceLibrary.swift
    │   ├── SentenceLibrary+Workplace.swift
    │   ├── SentenceLibrary+DataExpansions.swift
    │   └── SentenceLibrary+Neuroscience.swift
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

---

## Part 2 — Create the Xcode Project

### Step 1 — Open Xcode
Launch Xcode from your Applications folder or Spotlight.

### Step 2 — Create a new project
1. On the Welcome screen click **Create New Project…**
   *(or use the menu: File → New → Project)*
2. Select the **iOS** tab at the top
3. Choose **App** and click **Next**

### Step 3 — Configure the project options

Fill in each field exactly as shown:

| Field | Value |
|---|---|
| Product Name | `PronounceAI` |
| Team | Your Apple ID (select from the dropdown) |
| Organization Identifier | `com.yourname` (e.g. `com.john`) |
| Bundle Identifier | auto-filled as `com.yourname.PronounceAI` |
| Interface | **SwiftUI** |
| Language | **Swift** |
| Storage | None |
| Include Tests | unchecked |

Click **Next**.

### Step 4 — Choose save location
1. In the save dialog, navigate to `~/Developer/` (or wherever you copied the files)
2. **Important:** Set the folder to `PronounceAI` — the *outer* folder that already exists
3. Make sure **Create Git repository on my Mac** is unchecked (optional)
4. Click **Create**

Xcode will create its project file (`.xcodeproj`) inside the outer `PronounceAI` folder.

---

## Part 3 — Configure Project Settings

### Step 5 — Set the deployment target
1. In the **Project Navigator** (left panel), click the blue **PronounceAI** project icon at the very top
2. Under **TARGETS**, select **PronounceAI**
3. Click the **General** tab
4. Under **Minimum Deployments**, set **iOS** to **16.0**

### Step 6 — Delete Xcode's generated files
Xcode auto-generated two files you do not need. Delete them:

1. In the Project Navigator, find **ContentView.swift** — right-click → **Delete** → **Move to Trash**
2. Find **Assets.xcassets** — keep this one (you will use it in Step 10)

> Do **not** delete `PronounceAIApp.swift` yet — you will replace it in the next part.

---

## Part 4 — Add All Source Files

You will now add every `.swift` file from the inner `PronounceAI/` folder into the Xcode project. The safest approach is to create the groups first, then add files into each group.

### Step 7 — Replace PronounceAIApp.swift
1. In the Project Navigator, click **PronounceAIApp.swift**
2. Press **⌘A** to select all, then delete the content
3. Open the source file at `PronounceAI/PronounceAI/PronounceAIApp.swift` in any text editor
4. Copy everything and paste it into Xcode
5. Press **⌘S** to save

### Step 8 — Create folder groups in Xcode

You need to create matching groups in the Project Navigator:

1. Right-click the **PronounceAI** yellow folder group in the Navigator
2. Select **New Group**
3. Name it `Models`
4. Repeat to create: `Services`, `ViewModels`, `Views`
5. Right-click the `Views` group → **New Group** → name it `Components`

Your Navigator should now look like:
```
PronounceAI (project)
└── PronounceAI (group)
    ├── PronounceAIApp.swift
    ├── Models/
    ├── Services/
    ├── ViewModels/
    └── Views/
        └── Components/
```

### Step 9 — Add files to each group

For each group, follow this procedure:

1. Right-click the group in the Navigator
2. Select **Add Files to "PronounceAI"…**
3. Navigate to the matching subfolder inside `PronounceAI/PronounceAI/`
4. Select all the files listed below for that group
5. In the options at the bottom of the dialog:
   - **Destination:** uncheck "Copy items if needed" *(files are already in place)*
   - **Added folders:** select "Create groups"
   - **Add to targets:** make sure **PronounceAI** is checked
6. Click **Add**

#### Models group — add these 5 files:
```
Models/Models.swift
Models/SentenceLibrary.swift
Models/SentenceLibrary+Workplace.swift
Models/SentenceLibrary+DataExpansions.swift
Models/SentenceLibrary+Neuroscience.swift
```

#### Services group — add these 3 files:
```
Services/SpeechService.swift
Services/PronunciationAnalyzer.swift
Services/AudioPlayer.swift
```

#### ViewModels group — add this 1 file:
```
ViewModels/PracticeViewModel.swift
```

#### Views group — add these 3 files:
```
Views/HomeView.swift
Views/PracticeView.swift
Views/ResultsView.swift
```

#### Views/Components group — add these 3 files:
```
Views/Components/WaveformView.swift
Views/Components/ScoreRingView.swift
Views/Components/WordFeedbackRow.swift
```

After adding all files, your Navigator should look like this:
```
PronounceAI
└── PronounceAI
    ├── PronounceAIApp.swift
    ├── Assets.xcassets
    ├── Models
    │   ├── Models.swift
    │   ├── SentenceLibrary.swift
    │   ├── SentenceLibrary+Workplace.swift
    │   ├── SentenceLibrary+DataExpansions.swift
    │   └── SentenceLibrary+Neuroscience.swift
    ├── Services
    │   ├── SpeechService.swift
    │   ├── PronunciationAnalyzer.swift
    │   └── AudioPlayer.swift
    ├── ViewModels
    │   └── PracticeViewModel.swift
    └── Views
        ├── HomeView.swift
        ├── PracticeView.swift
        ├── ResultsView.swift
        └── Components
            ├── WaveformView.swift
            ├── ScoreRingView.swift
            └── WordFeedbackRow.swift
```

---

## Part 5 — Add Privacy Permissions

The app requires microphone and speech recognition access. These must be declared in Info.plist or the app will crash at runtime.

### Step 10 — Add permission keys

**Method A — via Xcode's Info tab (recommended):**

1. Click the **PronounceAI** project in the Navigator
2. Select the **PronounceAI** target
3. Click the **Info** tab
4. Under **Custom iOS Target Properties**, hover over any row and click the **+** button
5. Add the first key:
   - Key: `Privacy - Microphone Usage Description`
   - Type: `String`
   - Value: `PronounceAI needs microphone access to record your voice and evaluate your pronunciation.`
6. Click **+** again and add the second key:
   - Key: `Privacy - Speech Recognition Usage Description`
   - Type: `String`
   - Value: `PronounceAI uses speech recognition to transcribe what you say and compare it to the target sentence.`

**Method B — edit Info.plist directly:**

1. In the Project Navigator, find the file named **Info.plist** that Xcode generated inside the PronounceAI group
2. Right-click → **Open As** → **Source Code**
3. Before the closing `</dict>` tag, paste:

```xml
<key>NSMicrophoneUsageDescription</key>
<string>PronounceAI needs microphone access to record your voice and evaluate your pronunciation.</string>
<key>NSSpeechRecognitionUsageDescription</key>
<string>PronounceAI uses speech recognition to transcribe what you say and compare it to the target sentence.</string>
```

---

## Part 6 — Connect a Device & Run

### Step 11 — Connect your iPhone
1. Plug your iPhone into your Mac with a USB cable
2. On your iPhone, tap **Trust** when prompted
3. In Xcode, click the device selector in the toolbar (top-left, next to the play button)
4. Select your iPhone from the list

> **Why not Simulator?**
> The iOS Simulator has limited `SFSpeechRecognizer` support — it may not recognize speech at all.
> A physical device gives accurate results and tests the real microphone.

### Step 12 — Sign the app
1. In the project settings → **General** tab → **Signing & Capabilities**
2. Check **Automatically manage signing**
3. Select your **Team** (your Apple ID)
4. If you see a "Could not launch" error about provisioning, click **Fix Issue** — Xcode handles this automatically with a free account

### Step 13 — Build and run
Press **⌘R** or click the **▶ Run** button.

The first build will take 30–60 seconds. On your device:
1. A system dialog asks for **Microphone** permission — tap **Allow**
2. A system dialog asks for **Speech Recognition** permission — tap **Allow**
3. The Home screen loads with sentence categories

---

## Part 7 — Verify Everything Works

### Quick smoke test
1. Tap any sentence card on the Home screen
2. The Practice sheet opens — tap the **speaker icon** to hear the reference audio
3. Tap the large **microphone button** — the waveform should animate as you speak
4. Tap the **stop button** — wait a few seconds for analysis
5. The Results screen should show your score, colored word chips, and feedback

### Console check (optional)
In Xcode, open the **Debug area** (⌘⇧Y). After a practice session, you can temporarily add this line anywhere in `HomeView.onAppear` to verify counts:

```swift
print("Total sentences: \(SentenceLibrary.all.count)")
// Expected output: Total sentences: 209
```

Remove it after confirming.

---

## Part 8 — Common Errors & Fixes

### Error: "Cannot find type 'X' in scope"
**Cause:** One or more files were not added to the target.
**Fix:**
1. Click the missing file in the Navigator
2. Open the **File Inspector** panel (⌘⌥1)
3. Under **Target Membership**, check the box next to **PronounceAI**

### Error: "This app has crashed because it attempted to access privacy-sensitive data"
**Cause:** The privacy permission keys are missing from Info.plist.
**Fix:** Complete Step 10 above.

### Error: "Speech recognizer not available"
**Cause:** Running on Simulator, or device language is not set to English.
**Fix:**
- Run on a physical iPhone
- On the device: Settings → General → Language & Region → set to English

### Error: "Signing for 'PronounceAI' requires a development team"
**Cause:** No Apple ID is signed into Xcode.
**Fix:**
1. Xcode menu → Settings → Accounts
2. Click **+** → Apple ID → sign in with your Apple ID
3. Return to Signing & Capabilities and select your team

### Error: Multiple commands produce Info.plist
**Cause:** Xcode found both the generated and the provided `Info.plist`.
**Fix:**
1. In the Project Navigator, find any `Info.plist` that was automatically added
2. Click it → **File Inspector** (⌘⌥1) → uncheck it from **Target Membership**
3. Keep only the one inside the PronounceAI group

### Warning: "Static property 'all' is not concurrency-safe"
**Cause:** Swift 6 strict concurrency checking on a static computed var.
**Fix:** Suppress for now by setting **Swift Language Version** to Swift 5 in Build Settings, or annotate the property:
```swift
@MainActor static var all: [Sentence] { ... }
```

---

## Part 9 — Optional Enhancements

### Use a higher-quality TTS voice (iOS 17+)
In `AudioPlayer.swift`, find `makeUtterance(_:rate:)` and change the voice line to:
```swift
utterance.voice =
    AVSpeechSynthesisVoice(identifier: "com.apple.voice.premium.en-US.Zoe")
    ?? AVSpeechSynthesisVoice(identifier: "com.apple.voice.enhanced.en-US.Samantha")
    ?? AVSpeechSynthesisVoice(language: "en-US")
```
To list every voice available on the device, run this in a Playground:
```swift
AVSpeechSynthesisVoice.speechVoices().forEach { print($0.identifier, $0.quality.rawValue) }
```

### Upgrade to Azure Pronunciation Assessment
For phoneme-level accuracy scores (scored per phoneme, not just per word):
1. Add the Azure Speech SDK via Swift Package Manager:
   - File → Add Package Dependencies
   - URL: `https://github.com/Azure-Samples/cognitive-services-speech-sdk`
2. In `SpeechService.swift`, replace `SFSpeechRecognizer` with `SPXSpeechRecognizer`
3. Use `SPXPronunciationAssessmentConfig` with `referenceText` set to `sentence.text`
4. The SDK returns `AccuracyScore`, `FluencyScore`, `CompletenessScore`, and per-phoneme `ErrorType`

Azure free tier: **5 hours/month** of speech recognition, no credit card required.

---

## Summary Checklist

- [ ] Files copied to Mac
- [ ] Xcode project created (SwiftUI, iOS, Swift)
- [ ] Deployment target set to iOS 16.0
- [ ] Xcode-generated ContentView.swift deleted
- [ ] PronounceAIApp.swift content replaced
- [ ] 5 groups created in Navigator (Models, Services, ViewModels, Views, Views/Components)
- [ ] All 15 Swift files added to their groups with target membership checked
- [ ] Microphone permission key added to Info.plist
- [ ] Speech Recognition permission key added to Info.plist
- [ ] Automatic signing configured with Apple ID
- [ ] App builds with ⌘B (zero errors)
- [ ] App runs on physical iPhone (⌘R)
- [ ] Both permission dialogs appear and are accepted
- [ ] Practice session completes and shows results screen
