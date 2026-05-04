import Foundation

struct SentenceLibrary {

    static var all: [Sentence] {
        beginner + intermediate + advanced
        + dataAndAIBeginner + dataAndAIIntermediate + dataAndAIAdvanced
        + workplaceIntermediate + workplaceAdvanced
        + etlIntermediate + etlAdvanced
        + cloudIntermediate + cloudAdvanced
        + neuroscienceIntermediate + neuroscienceAdvanced
        + smallTalkBeginner + smallTalkIntermediate + smallTalkAdvanced
        + tongueTwisters
    }

    // MARK: - Beginner Everyday & Travel

    static let beginner: [Sentence] = [

        // --- Everyday ---
        Sentence(
            id: UUID(),
            text: "The weather is nice today.",
            difficulty: .beginner, category: .everyday,
            phonetics: "/ðə ˈwɛðər ɪz naɪs təˈdeɪ/",
            focusSounds: ["th", "w"],
            tip: "The 'th' in 'the' is voiced — let your vocal cords vibrate as you place your tongue between your teeth."
        ),
        Sentence(
            id: UUID(),
            text: "Please pass the butter.",
            difficulty: .beginner, category: .everyday,
            phonetics: "/pliːz pæs ðə ˈbʌtər/",
            focusSounds: ["p", "b"],
            tip: "Distinguish the voiced 'b' from the unvoiced 'p' — 'butter' starts with a soft puff of air."
        ),
        Sentence(
            id: UUID(),
            text: "I would like a glass of water.",
            difficulty: .beginner, category: .everyday,
            phonetics: "/aɪ wʊd laɪk ə ɡlæs əv ˈwɔːtər/",
            focusSounds: ["w", "l"],
            tip: "Round your lips for 'water' and keep the 'l' in 'like' clear and lateral."
        ),
        Sentence(
            id: UUID(),
            text: "Can you help me, please?",
            difficulty: .beginner, category: .everyday,
            phonetics: "/kæn juː hɛlp miː pliːz/",
            focusSounds: ["h", "p"],
            tip: "Don't drop the 'h' in 'help' — it's a clear aspiration."
        ),
        Sentence(
            id: UUID(),
            text: "Good morning! How are you feeling today?",
            difficulty: .beginner, category: .everyday,
            phonetics: "/ɡʊd ˈmɔːrnɪŋ haʊ ɑːr juː ˈfiːlɪŋ təˈdeɪ/",
            focusSounds: ["ing", "ow"],
            tip: "The '-ing' ending is nasal — your tongue touches the soft palate, not the ridge behind your teeth."
        ),
        Sentence(
            id: UUID(),
            text: "Excuse me, could you repeat that more slowly?",
            difficulty: .beginner, category: .everyday,
            phonetics: "/ɪkˈskjuːz miː kʊd juː rɪˈpiːt ðæt mɔːr ˈsloʊli/",
            focusSounds: ["ex", "r"],
            tip: "'Excuse' as a verb — ex-CUSE. The 'x' sounds like /ks/. Don't stress the first syllable."
        ),
        Sentence(
            id: UUID(),
            text: "I think the meeting starts at nine o'clock.",
            difficulty: .beginner, category: .everyday,
            phonetics: "/aɪ θɪŋk ðə ˈmiːtɪŋ stɑːrts æt naɪn əˈklɒk/",
            focusSounds: ["th", "ng"],
            tip: "The 'th' in 'think' is voiceless — place your tongue between your teeth and blow air, no vibration."
        ),
        Sentence(
            id: UUID(),
            text: "Sorry, I did not catch your name.",
            difficulty: .beginner, category: .everyday,
            phonetics: "/ˈsɒri aɪ dɪd nɒt kætʃ jɔːr neɪm/",
            focusSounds: ["r", "ch"],
            tip: "'Catch' ends with a crisp /tʃ/ affricate. The 'r' in 'sorry' is brief — don't roll it."
        ),
        Sentence(
            id: UUID(),
            text: "Could you please hold the door for me?",
            difficulty: .beginner, category: .everyday,
            phonetics: "/kʊd juː pliːz hoʊld ðə dɔːr fər miː/",
            focusSounds: ["h", "d"],
            tip: "Don't drop the final 'd' in 'hold' — it's a voiced stop that closes the word cleanly."
        ),
        Sentence(
            id: UUID(),
            text: "I am really looking forward to the weekend.",
            difficulty: .beginner, category: .everyday,
            phonetics: "/aɪ æm ˈrɪəli ˈlʊkɪŋ ˈfɔːrwərd tə ðə ˈwiːkɛnd/",
            focusSounds: ["r", "w", "f"],
            tip: "Stress LOOK-ing FOR-ward — the unstressed syllables reduce naturally in connected speech."
        ),
        Sentence(
            id: UUID(),
            text: "My phone battery is almost dead.",
            difficulty: .beginner, category: .everyday,
            phonetics: "/maɪ foʊn ˈbætəri ɪz ˈɔːlmoʊst dɛd/",
            focusSounds: ["ph", "b"],
            tip: "'Phone' starts with /f/ not /p/ — 'ph' is always the /f/ sound in English."
        ),
        Sentence(
            id: UUID(),
            text: "Let me know if you need anything else.",
            difficulty: .beginner, category: .everyday,
            phonetics: "/lɛt miː noʊ ɪf juː niːd ˈɛniθɪŋ ɛls/",
            focusSounds: ["th", "n"],
            tip: "The 'th' in 'anything' is voiceless — feel no vibration in your throat as you say it."
        ),
        Sentence(
            id: UUID(),
            text: "Would you like to join us for coffee?",
            difficulty: .beginner, category: .everyday,
            phonetics: "/wʊd juː laɪk tə dʒɔɪn ʌs fər ˈkɒfi/",
            focusSounds: ["w", "j"],
            tip: "'Join' begins with /dʒ/ — the same sound as the start of 'judge'. Not a 'y' sound."
        ),
        Sentence(
            id: UUID(),
            text: "I have an appointment at three in the afternoon.",
            difficulty: .beginner, category: .everyday,
            phonetics: "/aɪ hæv ən əˈpɔɪntmənt æt θriː ɪn ðiː ˌæftərˈnuːn/",
            focusSounds: ["oi", "th"],
            tip: "The 'oi' in 'appointment' is a diphthong — glide from /ɔ/ to /ɪ/ in one smooth motion."
        ),
        Sentence(
            id: UUID(),
            text: "Do you mind if I open the window?",
            difficulty: .beginner, category: .everyday,
            phonetics: "/duː juː maɪnd ɪf aɪ ˈoʊpən ðə ˈwɪndoʊ/",
            focusSounds: ["nd", "w"],
            tip: "Don't drop the final 'd' in 'mind' — it's a voiced stop. 'Window' — WIN-doh."
        ),
        Sentence(
            id: UUID(),
            text: "Thank you for your patience and understanding.",
            difficulty: .beginner, category: .everyday,
            phonetics: "/θæŋk juː fər jɔːr ˈpeɪʃəns ænd ˌʌndərˈstændɪŋ/",
            focusSounds: ["th", "sh"],
            tip: "'Patience' — the '-tience' sounds like /ʃəns/. Stress: PA-tience, un-der-STAND-ing."
        ),
        Sentence(
            id: UUID(),
            text: "It was nice talking to you. See you later!",
            difficulty: .beginner, category: .everyday,
            phonetics: "/ɪt wɒz naɪs ˈtɔːkɪŋ tə juː siː juː ˈleɪtər/",
            focusSounds: ["t", "l"],
            tip: "In natural speech 'talking to you' often blends: 'tawking tuh yoo'. The 'l' in 'talking' is usually silent."
        ),
        Sentence(
            id: UUID(),
            text: "The supermarket closes at ten o'clock.",
            difficulty: .beginner, category: .everyday,
            phonetics: "/ðə ˈsuːpərˌmɑːrkɪt ˈkloʊzɪz æt tɛn əˈklɒk/",
            focusSounds: ["s", "k"],
            tip: "Stress: SU-per-mar-ket. Keep each syllable clear — don't merge the vowels together."
        ),

        // --- Travel & Food ---
        Sentence(
            id: UUID(),
            text: "Where is the nearest station?",
            difficulty: .beginner, category: .travel,
            phonetics: "/wɛr ɪz ðə ˈnɪərɪst ˈsteɪʃən/",
            focusSounds: ["w", "st"],
            tip: "Start 'where' with rounded lips. The 'st' in 'station' blends smoothly without a pause."
        ),
        Sentence(
            id: UUID(),
            text: "I will have the soup, thank you.",
            difficulty: .beginner, category: .travel,
            phonetics: "/aɪ wɪl hæv ðə suːp θæŋk juː/",
            focusSounds: ["th", "s"],
            tip: "The 'th' in 'thank' is voiceless — teeth together, no vibration in your throat."
        ),
        Sentence(
            id: UUID(),
            text: "Could I see the menu, please?",
            difficulty: .beginner, category: .travel,
            phonetics: "/kʊd aɪ siː ðə ˈmɛnjuː pliːz/",
            focusSounds: ["m", "n"],
            tip: "The 'u' in 'menu' sounds like /juː/ — 'MEN-yoo', not 'MEN-oo'."
        ),
        Sentence(
            id: UUID(),
            text: "What time does the last train leave?",
            difficulty: .beginner, category: .travel,
            phonetics: "/wɒt taɪm dʌz ðə lɑːst treɪn liːv/",
            focusSounds: ["tr", "l"],
            tip: "The 'tr' in 'train' sounds almost like 'chr' — your tongue and lips work together instantly."
        ),
        Sentence(
            id: UUID(),
            text: "I would like a room with a view, please.",
            difficulty: .beginner, category: .travel,
            phonetics: "/aɪ wʊd laɪk ə ruːm wɪð ə vjuː pliːz/",
            focusSounds: ["v", "w"],
            tip: "'View' starts with /vj/ — upper teeth on lower lip, then immediately glide into the vowel."
        ),
        Sentence(
            id: UUID(),
            text: "Is this seat taken?",
            difficulty: .beginner, category: .travel,
            phonetics: "/ɪz ðɪs siːt ˈteɪkən/",
            focusSounds: ["s", "t"],
            tip: "The 't' in 'taken' is lightly aspirated — a small puff of air follows it."
        ),
        Sentence(
            id: UUID(),
            text: "How far is it to the city center?",
            difficulty: .beginner, category: .travel,
            phonetics: "/haʊ fɑːr ɪz ɪt tə ðə ˈsɪti ˈsɛntər/",
            focusSounds: ["f", "c"],
            tip: "Both 'far' and 'center' end in the American /r/ — keep your tongue curled back equally for both."
        ),
        Sentence(
            id: UUID(),
            text: "Can I pay by credit card?",
            difficulty: .beginner, category: .travel,
            phonetics: "/kæn aɪ peɪ baɪ ˈkrɛdɪt kɑːrd/",
            focusSounds: ["cr", "k"],
            tip: "The 'cr' in 'credit' — /k/ and /r/ blend instantly. No vowel sound between them."
        ),
        Sentence(
            id: UUID(),
            text: "The bill, please. We would like to pay separately.",
            difficulty: .beginner, category: .travel,
            phonetics: "/ðə bɪl pliːz wiː wʊd laɪk tə peɪ ˈsɛpərɪtli/",
            focusSounds: ["b", "p", "r"],
            tip: "'Separately' — SEP-ar-ate-ly. Four syllables. Don't collapse it to 'SÈP-rut-lee'."
        ),
    ]

    // MARK: - Intermediate

    static let intermediate: [Sentence] = [

        // --- Everyday ---
        Sentence(
            id: UUID(),
            text: "I'm not sure I agree with that perspective.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/aɪm nɒt ʃʊər aɪ əˈɡriː wɪð ðæt pərˈspɛktɪv/",
            focusSounds: ["shr", "sp"],
            tip: "Stress: per-SPEC-tive. The 'sp' cluster — no vowel sound between /s/ and /p/."
        ),
        Sentence(
            id: UUID(),
            text: "Could we reschedule the appointment to Thursday?",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/kʊd wiː ˌriːˈʃɛdjuːl ðiː əˈpɔɪntmənt tə ˈθɜːrzdeɪ/",
            focusSounds: ["sch", "th"],
            tip: "American: SKED-jool. British: SHED-jool. Pick one and be consistent throughout."
        ),
        Sentence(
            id: UUID(),
            text: "I have been really struggling with jet lag since I arrived.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/aɪ hæv bɪn ˈrɪəli ˈstrʌɡlɪŋ wɪð dʒɛt læɡ sɪns aɪ əˈraɪvd/",
            focusSounds: ["str", "j"],
            tip: "'Struggling' starts with 'str' — three sounds in a row: /s/ /t/ /r/. Don't insert a vowel."
        ),
        Sentence(
            id: UUID(),
            text: "I completely forgot that today was her birthday.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/aɪ kəmˈpliːtli fərˈɡɒt ðæt təˈdeɪ wɒz hɜːr ˈbɜːrθdeɪ/",
            focusSounds: ["pl", "th"],
            tip: "The 'th' in 'birthday' is voiceless /θ/. 'Completely' — com-PLETE-ly, stress the second syllable."
        ),
        Sentence(
            id: UUID(),
            text: "Let's grab lunch together and catch up properly.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/lɛts ɡræb lʌntʃ təˈɡɛðər ænd kætʃ ʌp ˈprɒpərli/",
            focusSounds: ["gr", "ch"],
            tip: "'Together' — to-GETH-er, stress the middle. 'Catch' ends with a clean /tʃ/ — don't devoice it."
        ),
        Sentence(
            id: UUID(),
            text: "I really appreciate your help with that presentation.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/aɪ ˈrɪəli əˈpriːʃieɪt jɔːr hɛlp wɪð ðæt ˌprɛzənˈteɪʃən/",
            focusSounds: ["sh", "pr"],
            tip: "ap-PRE-ci-ate — the 'ci' sounds like /ʃ/. Stress: pre-zen-TA-tion."
        ),
        Sentence(
            id: UUID(),
            text: "We should probably leave early to avoid the traffic.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/wiː ʃʊd ˈprɒbəbli liːv ˈɜːrli tə əˈvɔɪd ðə ˈtræfɪk/",
            focusSounds: ["pr", "tr"],
            tip: "'Probably' — PROB-ab-ly. 'Traffic' — TRAF-fic. Both have front-loaded stress."
        ),
        Sentence(
            id: UUID(),
            text: "She gave a very convincing argument about the new policy.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/ʃiː ɡeɪv ə ˈvɛri kənˈvɪnsɪŋ ˈɑːrɡjumənt əˈbaʊt ðə njuː ˈpɒlɪsi/",
            focusSounds: ["v", "ng"],
            tip: "'Argument' — AR-gu-ment, three syllables. 'Convincing' — con-VIN-cing, stress the middle."
        ),
        Sentence(
            id: UUID(),
            text: "Do you think the weather will hold up over the long weekend?",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/duː juː θɪŋk ðə ˈwɛðər wɪl hoʊld ʌp ˈoʊvər ðə lɒŋ ˈwiːkɛnd/",
            focusSounds: ["th", "w", "ng"],
            tip: "Two 'th' sounds here: voiceless in 'think', voiced in 'the' and 'weather'. Notice the difference."
        ),
        Sentence(
            id: UUID(),
            text: "Honestly, I think we should just be more flexible about this.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/ˈɒnɪstli aɪ θɪŋk wiː ʃʊd dʒʌst biː mɔːr ˈflɛksɪbl əˈbaʊt ðɪs/",
            focusSounds: ["fl", "x"],
            tip: "The 'x' in 'flexible' sounds like /ks/ — FLEX-i-ble. 'Honestly' — ON-est-ly, the 'h' is silent."
        ),

        // --- Business ---
        Sentence(
            id: UUID(),
            text: "Corporate communication requires clear and concise language.",
            difficulty: .intermediate, category: .business,
            phonetics: "/ˈkɔːrpərɪt kəˌmjuːnɪˈkeɪʃən rɪˈkwaɪərz klɪər ænd kənˈsaɪs ˈlæŋɡwɪdʒ/",
            focusSounds: ["r", "k"],
            tip: "Stress: cor-PO-rate, com-mu-ni-CA-tion, con-CISE. Identify the main stress in each word."
        ),
        Sentence(
            id: UUID(),
            text: "The world's most valuable resource is not oil, but fresh water.",
            difficulty: .intermediate, category: .business,
            phonetics: "/ðə wɜːldz məʊst ˈvæljuəbl rɪˈzɔːrs ɪz nɒt ɔɪl bʌt frɛʃ ˈwɔːtər/",
            focusSounds: ["w", "r", "l"],
            tip: "Don't confuse 'world' and 'word' — 'world' has an /l/ before the final consonant cluster."
        ),
        Sentence(
            id: UUID(),
            text: "I would like to schedule a follow-up call to discuss the proposal.",
            difficulty: .intermediate, category: .business,
            phonetics: "/aɪ wʊd laɪk tə ˈskɛdʒuːl ə ˈfɒloʊ ʌp kɔːl tə dɪˈskʌs ðə prəˈpoʊzəl/",
            focusSounds: ["sch", "pr"],
            tip: "'Proposal' — pro-PO-sal. 'Discuss' — di-SCUSS. Stress falls on the second syllable in both."
        ),
        Sentence(
            id: UUID(),
            text: "We need to align all stakeholders before moving the project forward.",
            difficulty: .intermediate, category: .business,
            phonetics: "/wiː niːd tə əˈlaɪn ɔːl ˈsteɪkhoʊldərz bɪˈfɔːr ˈmuːvɪŋ ðə ˈprɒdʒɛkt ˈfɔːrwərd/",
            focusSounds: ["st", "pr", "f"],
            tip: "'Stakeholders' — STAKE-hold-ers. 'Project' as noun: PRO-ject. As verb: pro-JECT."
        ),
        Sentence(
            id: UUID(),
            text: "Our quarterly revenue exceeded projections by fifteen percent.",
            difficulty: .intermediate, category: .business,
            phonetics: "/aʊər ˈkwɔːrtərli ˈrɛvənjuː ɪkˈsiːdɪd prəˈdʒɛkʃənz baɪ ˌfɪfˈtiːn pərˈsɛnt/",
            focusSounds: ["r", "qu", "v"],
            tip: "'Revenue' — REV-e-nue, three syllables. 'Quarterly' — QUAR-ter-ly. Don't swallow the middle syllable."
        ),
        Sentence(
            id: UUID(),
            text: "The thirty-three thieves thought that they thrilled the throne throughout Thursday.",
            difficulty: .intermediate, category: .academic,
            phonetics: "/ðə ˌθɜːtiˈθriː θiːvz θɔːt ðæt ðeɪ θrɪld ðə θrəʊn θruːˌaʊt ˈθɜːzdeɪ/",
            focusSounds: ["th"],
            tip: "Alternate voiced 'th' (the, that, they) and voiceless 'th' (thirty, thieves, thought, three, through)."
        ),
        Sentence(
            id: UUID(),
            text: "She sells seashells by the seashore.",
            difficulty: .intermediate, category: .tongueTwisters,
            phonetics: "/ʃiː sɛlz ˈsiːʃɛlz baɪ ðə ˈsiːʃɔːr/",
            focusSounds: ["sh", "s"],
            tip: "Alternate between the hissing /s/ and the hushing /ʃ/ sounds — they use different tongue positions."
        ),
        Sentence(
            id: UUID(),
            text: "The right choice requires careful thought and precise reasoning.",
            difficulty: .intermediate, category: .academic,
            phonetics: "/ðə raɪt tʃɔɪs rɪˈkwaɪərz ˈkɛərfəl θɔːt ænd prɪˈsaɪs ˈriːzənɪŋ/",
            focusSounds: ["r", "ch", "th"],
            tip: "The American 'r' is retroflex — curl your tongue tip back slightly without touching the roof."
        ),
        Sentence(
            id: UUID(),
            text: "How much wood would a woodchuck chuck if a woodchuck could chuck wood?",
            difficulty: .intermediate, category: .tongueTwisters,
            phonetics: "/haʊ mʌtʃ wʊd wʊd ə ˈwʊdtʃʌk tʃʌk ɪf ə ˈwʊdtʃʌk kʊd tʃʌk wʊd/",
            focusSounds: ["w", "ch"],
            tip: "Keep 'w' rounded throughout. The 'ch' /tʃ/ is a quick affricate — tongue tip then release forward."
        ),
    ]

    // MARK: - Advanced

    static let advanced: [Sentence] = [
        Sentence(
            id: UUID(),
            text: "The hypothesis was thoroughly scrutinized before the researchers reached a conclusion.",
            difficulty: .advanced, category: .academic,
            phonetics: "/ðə haɪˈpɒθɪsɪs wɒz ˈθɜːrəli ˈskruːtɪnaɪzd bɪˈfɔːr ðə rɪˈsɜːrtʃərz riːtʃt ə kənˈkluːʒən/",
            focusSounds: ["th", "r", "scr"],
            tip: "Stress: hy-POTH-e-sis, scru-ti-NIZED, con-CLU-sion. The 'th' in 'thoroughly' is voiced."
        ),
        Sentence(
            id: UUID(),
            text: "Particularly preliminary preparations are preferably performed promptly.",
            difficulty: .advanced, category: .business,
            phonetics: "/pəˈtɪkjʊləli prɪˈlɪmɪnəri ˌprɛpəˈreɪʃənz ɑːr ˈprɛfərəbli pərˈfɔːrmd ˈprɒmptli/",
            focusSounds: ["p", "r"],
            tip: "This 'p' alliteration challenge needs crisp bilabial closure each time — don't let the 'p' smear."
        ),
        Sentence(
            id: UUID(),
            text: "The inexplicable phenomenon perplexed even the most experienced archaeologists.",
            difficulty: .advanced, category: .academic,
            phonetics: "/ðiː ˌɪnɪkˈsplɪkəbl fɪˈnɒmɪnɒn pərˈplɛkst ˈiːvən ðə məʊst ɪkˈspɪərɪənst ˌɑːrkiˈɒlədʒɪsts/",
            focusSounds: ["x", "ph", "pl"],
            tip: "In-EX-pli-ca-ble. phe-NOM-e-non. ar-chae-OL-o-gists. Don't rush — each syllable earns its place."
        ),
        Sentence(
            id: UUID(),
            text: "Virtuoso violinists virtually always volunteer vivid vibrato.",
            difficulty: .advanced, category: .academic,
            phonetics: "/vɜːrtʃuˈoʊsoʊ ˌvaɪəˈlɪnɪsts ˈvɜːrtʃuəli ˈɔːlweɪz ˌvɒlənˈtɪər ˈvɪvɪd vɪˈbrɑːtoʊ/",
            focusSounds: ["v"],
            tip: "Every word starts with 'v' — upper teeth lightly on lower lip, then vibrate. Feel the buzz."
        ),
        Sentence(
            id: UUID(),
            text: "Whether the weather is warm or cold, we'll weather the weather whether we like it or not.",
            difficulty: .advanced, category: .tongueTwisters,
            phonetics: "/ˈwɛðər ðə ˈwɛðər ɪz wɔːrm ɔːr koʊld wiːl ˈwɛðər ðə ˈwɛðər ˈwɛðər wiː laɪk ɪt ɔːr nɒt/",
            focusSounds: ["w", "wh", "th"],
            tip: "Three distinct sounds: /w/ in 'warm', /wɛð/ in 'whether/weather', /ð/ in 'the'. Keep them separate."
        ),
        Sentence(
            id: UUID(),
            text: "Unprecedented technological advancements are fundamentally reshaping the global economic landscape.",
            difficulty: .advanced, category: .academic,
            phonetics: "/ʌnˈprɛsɪdɛntɪd ˌtɛknəˈlɒdʒɪkəl ədˈvɑːnsmənts ɑːr ˌfʌndəˈmɛntəli rɪˈʃeɪpɪŋ ðə ˈɡloʊbəl ˌiːkəˈnɒmɪk ˈlændskeɪp/",
            focusSounds: ["un", "tech", "sh"],
            tip: "un-PREC-e-dent-ed. tech-no-LOG-i-cal. fun-da-MEN-tal-ly. Each word has exactly one main stress."
        ),
        Sentence(
            id: UUID(),
            text: "The pharmaceutical industry relies heavily on rigorous clinical trials to ensure efficacy and safety.",
            difficulty: .advanced, category: .academic,
            phonetics: "/ðə fɑːrˈmæsjuːtɪkəl ˈɪndəstri rɪˈlaɪz ˈhɛvɪli ɒn ˈrɪɡərəs ˈklɪnɪkəl ˈtraɪəlz tə ɪnˈʃʊər ɪˈfɪkəsi ænd ˈseɪfti/",
            focusSounds: ["ph", "r", "cl"],
            tip: "far-ma-SEW-ti-cal. EF-fi-ca-cy. RIG-or-ous. Each is a multi-syllable trap — map them before speaking."
        ),
        Sentence(
            id: UUID(),
            text: "The constitutional amendment required a two-thirds supermajority vote in both legislative chambers.",
            difficulty: .advanced, category: .academic,
            phonetics: "/ðə ˌkɒnstɪˈtjuːʃənəl əˈmɛndmənt rɪˈkwaɪərd ə tuː θɜːrdz ˌsuːpərməˈdʒɒrɪti voʊt ɪn boʊθ ˈlɛdʒɪslətɪv ˈtʃeɪmbərz/",
            focusSounds: ["con", "su", "leg"],
            tip: "con-sti-TU-tion-al. su-per-ma-JOR-i-ty. leg-IS-la-tive. Map each stress before you speak."
        ),
    ]

    // MARK: - Data & AI · Beginner

    static let dataAndAIBeginner: [Sentence] = [
        Sentence(
            id: UUID(),
            text: "Can you run the query and send me the results?",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/kæn juː rʌn ðə ˈkwɪəri ænd sɛnd miː ðə rɪˈzʌlts/",
            focusSounds: ["qu", "r"],
            tip: "'Query' — KWEER-ee. Both sounds /k/ and /w/ blend together at the start. Don't separate them."
        ),
        Sentence(
            id: UUID(),
            text: "The dataset has over one million rows.",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/ðə ˈdeɪtəsɛt hæz ˈoʊvər wʌn ˈmɪljən roʊz/",
            focusSounds: ["d", "t"],
            tip: "American English: DAY-ta-set. British: DAH-ta-set. Pick one pronunciation and be consistent."
        ),
        Sentence(
            id: UUID(),
            text: "We need to clean the data before running the analysis.",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/wiː niːd tə kliːn ðə ˈdeɪtə bɪˈfɔːr ˈrʌnɪŋ ðiː əˈnæləsɪs/",
            focusSounds: ["cl", "an"],
            tip: "a-NAL-y-sis — stress the second syllable. Four syllables total. The final 's' is soft /s/."
        ),
        Sentence(
            id: UUID(),
            text: "The dashboard is loading slowly today.",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/ðə ˈdæʃbɔːrd ɪz ˈloʊdɪŋ ˈsloʊli təˈdeɪ/",
            focusSounds: ["sh", "d"],
            tip: "'Dashboard' — DASH-board. The 'sh' /ʃ/ is clear in the middle — don't let it become /s/."
        ),
        Sentence(
            id: UUID(),
            text: "Please update the report with this week's numbers.",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/pliːz ʌpˈdeɪt ðə rɪˈpɔːrt wɪð ðɪs wiːks ˈnʌmbərz/",
            focusSounds: ["up", "r"],
            tip: "up-DATE — verb stress falls on 'DATE'. re-PORT — stress on second syllable."
        ),
        Sentence(
            id: UUID(),
            text: "The algorithm processes thousands of records per second.",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/ðiː ˈælɡərɪðəm ˈprɒsɛsɪz ˈθaʊzəndz əv ˈrɛkərdz pər ˈsɛkənd/",
            focusSounds: ["alg", "th"],
            tip: "AL-go-rith-m — four syllables. The 'th' at the end is voiced, like in 'the'."
        ),
        Sentence(
            id: UUID(),
            text: "Can you share your screen so I can see the output?",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/kæn juː ʃɛr jɔːr skriːn soʊ aɪ kæn siː ðiː ˈaʊtpʊt/",
            focusSounds: ["sh", "scr"],
            tip: "'Screen' — three consecutive consonants: /s/ /k/ /r/. Don't insert vowels between them."
        ),
        Sentence(
            id: UUID(),
            text: "The model predicted the wrong label for this example.",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/ðə ˈmɒdəl prɪˈdɪktɪd ðə rɒŋ ˈleɪbəl fər ðɪs ɪɡˈzɑːmpəl/",
            focusSounds: ["pr", "ex"],
            tip: "pre-DICT-ed. 'Example' — the 'x' sounds like /ɡz/: eg-ZAM-ple, not ex-AM-ple."
        ),
        Sentence(
            id: UUID(),
            text: "We are tracking three key performance indicators this quarter.",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/wiː ɑːr ˈtrækkɪŋ θriː kiː pərˈfɔːrməns ˈɪndɪkeɪtərz ðɪs ˈkwɔːrtər/",
            focusSounds: ["tr", "k", "qu"],
            tip: "'Indicators' — IN-di-ca-tors. 'Performance' — per-FOR-mance. Stress always on a specific syllable."
        ),
        Sentence(
            id: UUID(),
            text: "The pipeline failed during the overnight batch job.",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/ðə ˈpaɪplaɪn feɪld ˈdjʊərɪŋ ðiː ˈoʊvərnaɪt bætʃ dʒɒb/",
            focusSounds: ["pl", "ch"],
            tip: "'Pipeline' — PIPE-line. 'Batch' ends with /tʃ/ — tongue tip to the ridge, then release forward."
        ),
        Sentence(
            id: UUID(),
            text: "Could you export this table to a CSV file?",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/kʊd juː ɪkˈspɔːrt ðɪs ˈteɪbəl tə ə siː ɛs ˈviː faɪl/",
            focusSounds: ["ex", "v"],
            tip: "'Export' as a verb: ex-PORT (stress on second syllable). CSV is spelled out: C-S-V."
        ),
        Sentence(
            id: UUID(),
            text: "I will schedule a meeting to go over the findings.",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/aɪ wɪl ˈskɛdʒuːl ə ˈmiːtɪŋ tə ɡoʊ ˈoʊvər ðə ˈfaɪndɪŋz/",
            focusSounds: ["sch", "ng"],
            tip: "American: SKED-jool. British: SHED-jool. 'Findings' — FIND-ings, the '-ng' is a back nasal."
        ),
        Sentence(
            id: UUID(),
            text: "The API returned a four-hundred error on that request.",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/ðiː eɪ piː ˈaɪ rɪˈtɜːrnd ə fɔːr ˈhʌndrəd ˈɛrər ɒn ðæt rɪˈkwɛst/",
            focusSounds: ["r", "qu"],
            tip: "'API' is spelled out: A-P-I. re-TURNED. re-QUEST — both have stress on the second syllable."
        ),
        Sentence(
            id: UUID(),
            text: "Please make sure the data is backed up before you migrate.",
            difficulty: .beginner, category: .dataAndAI,
            phonetics: "/pliːz meɪk ʃʊər ðə ˈdeɪtə ɪz bækt ʌp bɪˈfɔːr juː ˈmaɪɡreɪt/",
            focusSounds: ["sh", "m"],
            tip: "'Migrate' — MY-grate. 'Sure' — /ʃʊər/, the 'sh' sound at the start."
        ),
    ]

    // MARK: - Data & AI · Intermediate

    static let dataAndAIIntermediate: [Sentence] = [
        Sentence(
            id: UUID(),
            text: "We need to normalize the features before feeding them into the model.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː niːd tə ˈnɔːrməlaɪz ðə ˈfiːtʃərz bɪˈfɔːr ˈfiːdɪŋ ðɛm ˈɪntuː ðə ˈmɒdəl/",
            focusSounds: ["n", "f"],
            tip: "'Normalize' — NOR-ma-lize. 'Features' — FEA-tures, the 'tu' makes a /tʃ/ sound."
        ),
        Sentence(
            id: UUID(),
            text: "The confusion matrix shows our precision is high but recall is low.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðə kənˈfjuːʒən ˈmeɪtrɪks ʃoʊz aʊər prɪˈsɪʒən ɪz haɪ bʌt rɪˈkɔːl ɪz loʊ/",
            focusSounds: ["zh", "pr"],
            tip: "'Precision' ends in /ʒən/ — voiced, like the middle of 'measure'. PRE-ci-sion. ma-TRIX."
        ),
        Sentence(
            id: UUID(),
            text: "We ran an A/B test to validate the hypothesis before shipping the feature.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː ræn ən ˈeɪ biː tɛst tə ˈvælɪdeɪt ðə haɪˈpɒθɪsɪs bɪˈfɔːr ˈʃɪpɪŋ ðə ˈfiːtʃər/",
            focusSounds: ["v", "hyp", "th"],
            tip: "hy-POTH-e-sis — stress on the second syllable. The 'th' is voiceless /θ/."
        ),
        Sentence(
            id: UUID(),
            text: "The ETL pipeline extracts raw data, transforms it, and loads it into the warehouse.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðiː iː tiː ˈɛl ˈpaɪplaɪn ɪkˈstræcts rɔː ˈdeɪtə trænsˈfɔːrmz ɪt ænd loʊdz ɪt ˈɪntuː ðə ˈwɛrhaʊs/",
            focusSounds: ["str", "tr"],
            tip: "'Extracts' — ex-TRACTS, with a dense cluster: /kstr/. Don't skip the /k/. WARE-house."
        ),
        Sentence(
            id: UUID(),
            text: "The gradient descent algorithm minimizes the loss function iteratively.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðə ˈɡreɪdiənt dɪˈsɛnt ˈælɡərɪðəm ˈmɪnɪmaɪzɪz ðə lɒs ˈfʌŋkʃən ɪˈtɛrətɪvli/",
            focusSounds: ["gr", "sc", "th"],
            tip: "'Gradient' — GRAY-dee-ent. 'Iteratively' — i-TER-a-tive-ly. Five syllables — take your time."
        ),
        Sentence(
            id: UUID(),
            text: "Our data governance framework ensures regulatory compliance across all datasets.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/aʊər ˈdeɪtə ˈɡʌvərnəns ˈfreɪmwɜːrk ɪnˈʃʊərz ˈrɛɡjʊlətəri kəmˈplaɪəns əˈkrɒs ɔːl ˈdeɪtəsɛts/",
            focusSounds: ["g", "fr", "r"],
            tip: "GOV-er-nance. REG-u-la-to-ry. com-PLI-ance. Three long words, each with a distinct stress center."
        ),
        Sentence(
            id: UUID(),
            text: "I'll aggregate the sales data by region and visualize the distribution.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/aɪl ˈæɡrɪɡeɪt ðə seɪlz ˈdeɪtə baɪ ˈriːdʒən ænd ˈvɪʒuəlaɪz ðə ˌdɪstrɪˈbjuːʃən/",
            focusSounds: ["agg", "v", "zh"],
            tip: "'Visualize' — VIZH-u-al-ize. The 'su' sounds like /ʒ/ — voiced, like the middle of 'measure'."
        ),
        Sentence(
            id: UUID(),
            text: "The latency spikes correlate with the batch inference jobs running in parallel.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðə ˈleɪtənsi spaɪks ˈkɒrəleɪt wɪð ðə bætʃ ˈɪnfərəns dʒɒbz ˈrʌnɪŋ ɪn ˈpærəlɛl/",
            focusSounds: ["l", "sp", "nf"],
            tip: "'Latency' — LAY-ten-cy. 'Inference' — IN-fer-ence. 'Parallel' — PAIR-a-lel."
        ),
        Sentence(
            id: UUID(),
            text: "Can you write a SQL query to join the user table on the transaction ID?",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/kæn juː raɪt ə ˈsiːkwəl ˈkwɪəri tə dʒɔɪn ðə ˈjuːzər ˈteɪbəl ɒn ðə trænˈzækʃən aɪˈdiː/",
            focusSounds: ["qu", "j", "oi"],
            tip: "SQL is pronounced 'sequel' — SEE-kwel. 'Join' — the /ɔɪ/ diphthong glides from /ɔ/ to /ɪ/."
        ),
        Sentence(
            id: UUID(),
            text: "We should use cross-validation to prevent overfitting on the training set.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː ʃʊd juːz krɒs ˌvælɪˈdeɪʃən tə prɪˈvɛnt ˌoʊvərˈfɪtɪŋ ɒn ðə ˈtreɪnɪŋ sɛt/",
            focusSounds: ["cr", "v", "ov"],
            tip: "val-i-DA-tion. O-ver-FIT-ting — stress on 'FIT'. These compound terms carry internal stress."
        ),
        Sentence(
            id: UUID(),
            text: "The schema was updated to include a foreign key constraint on the orders table.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðə ˈskiːmə wɒz ʌpˈdeɪtɪd tə ɪnˈkluːd ə ˈfɒrɪn kiː kənˈstreɪnt ɒn ðiː ˈɔːrdərz ˈteɪbəl/",
            focusSounds: ["sch", "str"],
            tip: "'Schema' — SKEE-ma, not SHA-ma. 'Constraint' — con-STRAINT. The 'str' cluster is dense."
        ),
        Sentence(
            id: UUID(),
            text: "The model's accuracy improved by twelve percentage points after hyperparameter tuning.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðə ˈmɒdəlz ˈækjərəsi ɪmˈpruːvd baɪ twɛlv pərˈsɛntɪdʒ pɔɪnts ˈɑːftər ˌhaɪpərpəˈræmɪtər ˈtjuːnɪŋ/",
            focusSounds: ["acc", "hyp", "par"],
            tip: "'Hyperparameter' — HY-per-pa-RAM-e-ter, six syllables. 'Accuracy' — AC-cu-ra-cy, four syllables."
        ),
        Sentence(
            id: UUID(),
            text: "We partitioned the table by date to improve query performance at scale.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː pɑːrˈtɪʃənd ðə ˈteɪbəl baɪ deɪt tə ɪmˈpruːv ˈkwɪəri pərˈfɔːrməns æt skeɪl/",
            focusSounds: ["par", "qu"],
            tip: "par-TI-tioned — stress on second syllable. 'Query' — KWEER-ee. /kw/ blend, not separate."
        ),
        Sentence(
            id: UUID(),
            text: "The regression model showed a strong positive correlation between income and spending.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðə rɪˈɡrɛʃən ˈmɒdəl ʃoʊd ə strɒŋ ˈpɒzɪtɪv ˌkɒrəˈleɪʃən bɪˈtwiːn ˈɪnkʌm ænd ˈspɛndɪŋ/",
            focusSounds: ["r", "cor", "str"],
            tip: "re-GRES-sion. cor-re-LA-tion. 'Positive' — POZ-i-tive. Each main word carries its own stress peak."
        ),
        Sentence(
            id: UUID(),
            text: "I am going to refactor the ingestion script so it handles null values gracefully.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/aɪ æm ˈɡoʊɪŋ tə ˈriːfæktər ðiː ɪnˈdʒɛstʃən skrɪpt soʊ ɪt ˈhændəlz nʌl ˈvæljuːz ˈɡreɪsfəli/",
            focusSounds: ["r", "ing", "gr"],
            tip: "RE-fac-tor. in-GES-tion — stress on second syllable. 'Gracefully' — GRACE-ful-ly."
        ),
    ]

    // MARK: - Data & AI · Advanced

    static let dataAndAIAdvanced: [Sentence] = [
        Sentence(
            id: UUID(),
            text: "We implemented a transformer-based architecture with multi-head self-attention to capture long-range dependencies.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/wiː ˈɪmplɪmɛntɪd ə trænsˈfɔːrmər beɪst ˈɑːrkɪtɛktʃər wɪð ˈmʌlti hɛd sɛlf əˈtɛnʃən tə ˈkæptʃər lɒŋ reɪndʒ dɪˈpɛndənsɪz/",
            focusSounds: ["tr", "arch", "att"],
            tip: "AR-chi-tec-ture. de-PEN-den-cies. at-TEN-tion. Each technical term has one dominant stress syllable."
        ),
        Sentence(
            id: UUID(),
            text: "Federated learning enables model training across distributed nodes without centralizing sensitive user data.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ˈfɛdəreɪtɪd ˈlɜːrnɪŋ ɪˈneɪblz ˈmɒdəl ˈtreɪnɪŋ əˈkrɒs dɪˈstrɪbjuːtɪd noʊdz wɪˈðaʊt ˈsɛntrəlaɪzɪŋ ˈsɛnsɪtɪv ˈjuːzər ˈdeɪtə/",
            focusSounds: ["fed", "str", "tr"],
            tip: "FED-er-a-ted. dis-TRIB-u-ted. CEN-tral-ize-ing. Three words, three patterns — each front-loaded."
        ),
        Sentence(
            id: UUID(),
            text: "The dimensionality reduction pipeline applies principal component analysis before fitting the clustering algorithm.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ðə dɪˌmɛnʃəˈnælɪti rɪˈdʌkʃən ˈpaɪplaɪn əˈplaɪz ˈprɪnsɪpəl kəmˈpoʊnənt əˈnælɪsɪs bɪˈfɔːr ˈfɪtɪŋ ðə ˈklʌstərɪŋ ˈælɡərɪðəm/",
            focusSounds: ["dim", "red", "alg"],
            tip: "di-men-sion-AL-i-ty — six syllables. com-PON-ent. a-NAL-y-sis. Map each stress before speaking."
        ),
        Sentence(
            id: UUID(),
            text: "Bayesian optimization outperformed random search by converging to the optimal hyperparameter configuration in fewer trials.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ˈbeɪziən ˌɒptɪmaɪˈzeɪʃən ˌaʊtpərˈfɔːrmd ˈrændəm sɜːrtʃ baɪ kənˈvɜːrdʒɪŋ tə ðiː ˈɒptɪməl ˌhaɪpərpəˈræmɪtər ˌkɒnfɪɡjʊˈreɪʃən ɪn ˈfjuːər ˈtraɪəlz/",
            focusSounds: ["bay", "opt", "con"],
            tip: "BAY-zee-an. op-ti-mi-ZA-tion. con-fig-u-RA-tion — six syllables. Slow down for the long words."
        ),
        Sentence(
            id: UUID(),
            text: "We addressed the class imbalance by applying SMOTE oversampling and adjusting the decision threshold.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/wiː əˈdrɛst ðə klɑːs ɪmˈbæləns baɪ əˈplaɪɪŋ smoʊt ˈoʊvərsæmplɪŋ ænd əˈdʒʌstɪŋ ðə dɪˈsɪʒən ˈθrɛʃhoʊld/",
            focusSounds: ["imb", "th", "dec"],
            tip: "im-BAL-ance. de-CI-sion — the 'ci' sounds like /ʒ/. THRESH-hold — the 'th' is voiceless /θ/."
        ),
        Sentence(
            id: UUID(),
            text: "The retrieval-augmented generation framework grounds the language model's responses in verified knowledge sources.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ðə rɪˈtriːvəl ˈɔːɡmɛntɪd ˌdʒɛnəˈreɪʃən ˈfreɪmwɜːrk ɡraʊndz ðə ˈlæŋɡwɪdʒ ˈmɒdəlz rɪˈspɒnsɪz ɪn ˈvɛrɪfaɪd ˈnɒlɪdʒ sɔːrsɪz/",
            focusSounds: ["retr", "aug", "gr"],
            tip: "re-TRIEV-al. AUG-ment-ed. gen-er-A-tion. Three different stress positions — don't default to first-syllable stress."
        ),
        Sentence(
            id: UUID(),
            text: "Stochastic gradient descent with momentum and adaptive learning rate scheduling reduces training instability.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/stəˈkæstɪk ˈɡreɪdiənt dɪˈsɛnt wɪð moʊˈmɛntəm ænd əˈdæptɪv ˈlɜːrnɪŋ reɪt ˈʃɛdjuːlɪŋ rɪˈdjuːsɪz ˈtreɪnɪŋ ɪnstəˈbɪlɪti/",
            focusSounds: ["st", "sch", "m"],
            tip: "sto-CAS-tic. mo-MEN-tum. a-DAP-tive. in-sta-BIL-i-ty. Each word is stressed on a different syllable position."
        ),
        Sentence(
            id: UUID(),
            text: "The observability stack collects distributed traces, logs, and metrics to enable root-cause analysis at scale.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ðiː ˌɒbzɜːrˈvæbɪlɪti stæk kəˈlɛkts dɪˈstrɪbjuːtɪd ˈtreɪsɪz lɒɡz ænd ˈmɛtrɪks tə ɪˈneɪbəl ruːt kɔːz əˈnælɪsɪs æt skeɪl/",
            focusSounds: ["obs", "str", "tr"],
            tip: "ob-serv-a-BIL-i-ty — six syllables. dis-TRIB-u-ted. e-NA-ble. End cleanly on 'scale' with a clear /l/."
        ),
        Sentence(
            id: UUID(),
            text: "We containerized the microservices and deployed them via a Kubernetes orchestration layer.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/wiː kənˈteɪnəraɪzd ðə ˈmaɪkroʊˌsɜːrvɪsɪz ænd dɪˈplɔɪd ðɛm ˈvaɪə ə ˌkuːbərˈnɛtɪz ˌɔːrkɪˈstreɪʃən ˈleɪər/",
            focusSounds: ["con", "mic", "k"],
            tip: "con-TAIN-er-ized. MI-cro-ser-vices. Ku-ber-NE-tes — stress on third syllable. or-ches-TRA-tion."
        ),
        Sentence(
            id: UUID(),
            text: "Regularization techniques such as L2 weight decay and dropout prevent the neural network from memorizing the training distribution.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ˌrɛɡjʊlərɪˈzeɪʃən tɛkˈniːks sʌtʃ æz ɛl tuː weɪt dɪˈkeɪ ænd ˈdroʊaʊt prɪˈvɛnt ðə ˈnjʊərəl ˈnɛtwɜːrk frɒm ˈmɛməraɪzɪŋ ðə ˈtreɪnɪŋ ˌdɪstrɪˈbjuːʃən/",
            focusSounds: ["reg", "neur", "mem"],
            tip: "reg-u-lar-i-ZA-tion — six syllables. NEUR-al — the 'eu' is /jʊ/. mem-o-RIZ-ing. di-stri-BU-tion."
        ),
    ]

    // MARK: - Tongue Twisters

    static let tongueTwisters: [Sentence] = [
        Sentence(
            id: UUID(),
            text: "Peter Piper picked a peck of pickled peppers.",
            difficulty: .tongueTwister, category: .tongueTwisters,
            phonetics: "/ˈpiːtər ˈpaɪpər pɪkt ə pɛk əv ˈpɪkld ˈpɛpərz/",
            focusSounds: ["p"],
            tip: "Each 'p' needs a crisp bilabial stop — close both lips completely, build pressure, then release."
        ),
        Sentence(
            id: UUID(),
            text: "Red lorry, yellow lorry, red lorry, yellow lorry.",
            difficulty: .tongueTwister, category: .tongueTwisters,
            phonetics: "/rɛd ˈlɒri ˈjɛloʊ ˈlɒri/",
            focusSounds: ["r", "l"],
            tip: "Switch cleanly between retroflex /r/ (tongue curls back) and lateral /l/ (tongue touches the ridge)."
        ),
        Sentence(
            id: UUID(),
            text: "Unique New York, unique New York, you know you need unique New York.",
            difficulty: .tongueTwister, category: .tongueTwisters,
            phonetics: "/juːˈniːk njuː jɔːrk/",
            focusSounds: ["y", "n", "k"],
            tip: "The sequence /k/ → /n/ needs a full velar stop then nasal release. Don't blend them together."
        ),
        Sentence(
            id: UUID(),
            text: "Which witch watched which wristwatch?",
            difficulty: .tongueTwister, category: .tongueTwisters,
            phonetics: "/wɪtʃ wɪtʃ wɒtʃt wɪtʃ ˈrɪstwɒtʃ/",
            focusSounds: ["w", "ch"],
            tip: "Alternate between the rounded /w/ onset and the affricate /tʃ/ ending each time."
        ),
        Sentence(
            id: UUID(),
            text: "I scream, you scream, we all scream for ice cream.",
            difficulty: .tongueTwister, category: .tongueTwisters,
            phonetics: "/aɪ skriːm juː skriːm wiː ɔːl skriːm fər ˈaɪs kriːm/",
            focusSounds: ["scr", "cr"],
            tip: "The 'scr' cluster needs all three sounds: /s/ + /k/ + /r/. Don't drop the /k/."
        ),
        Sentence(
            id: UUID(),
            text: "Fuzzy Wuzzy was a bear. Fuzzy Wuzzy had no hair. Fuzzy Wuzzy wasn't fuzzy, was he?",
            difficulty: .tongueTwister, category: .tongueTwisters,
            phonetics: "/ˈfʌzi ˈwʊzi wɒz ə bɛr ˈfʌzi ˈwʊzi hæd noʊ hɛr ˈfʌzi ˈwʊzi ˈwɒzənt ˈfʌzi wɒz hiː/",
            focusSounds: ["f", "w", "z"],
            tip: "Alternate between /f/ (upper teeth + lower lip) and /w/ (rounded lips). The 'z' is voiced — feel the buzz."
        ),
        Sentence(
            id: UUID(),
            text: "Six slippery snails slid slowly seaward.",
            difficulty: .tongueTwister, category: .tongueTwisters,
            phonetics: "/sɪks ˈslɪpəri sneɪlz slɪd ˈsloʊli ˈsiːwərd/",
            focusSounds: ["sl", "sn", "s"],
            tip: "Three different /s/ clusters: 'sl', 'sn', and plain 's'. Each lateral /l/ and nasal /n/ must be clear."
        ),
        Sentence(
            id: UUID(),
            text: "A proper copper coffee pot.",
            difficulty: .tongueTwister, category: .tongueTwisters,
            phonetics: "/ə ˈprɒpər ˈkɒpər ˈkɒfi pɒt/",
            focusSounds: ["p", "k"],
            tip: "Alternate bilabial /p/ (both lips) and velar /k/ (back of tongue on soft palate). Keep it crisp."
        ),
        Sentence(
            id: UUID(),
            text: "Swan swam over the sea. Swim, swan, swim! Swan swam back again.",
            difficulty: .tongueTwister, category: .tongueTwisters,
            phonetics: "/swɒn swæm ˈoʊvər ðə siː swɪm swɒn swɪm swɒn swæm bæk əˈɡɛn/",
            focusSounds: ["sw"],
            tip: "The 'sw' cluster — lips rounded for /w/ while /s/ is already flowing. No gap between them."
        ),
    ]

    // MARK: - Helpers

    static func sentences(for difficulty: Sentence.Difficulty) -> [Sentence] {
        all.filter { $0.difficulty == difficulty }
    }

    static func sentences(for category: Sentence.Category) -> [Sentence] {
        all.filter { $0.category == category }
    }

    static var dailyChallenge: Sentence {
        let index = Calendar.current.ordinality(of: .day, in: .year, for: Date()) ?? 0
        return all[index % all.count]
    }
}
