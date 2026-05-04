import Foundation

extension SentenceLibrary {

    // MARK: - Small Talk · Beginner

    static let smallTalkBeginner: [Sentence] = [

        Sentence(
            id: UUID(),
            text: "How was your weekend?",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/haʊ wɒz jər ˈwiːkˌɛnd/",
            focusSounds: ["w", "aʊ"],
            tip: "Keep 'how' as one smooth syllable — /haʊ/. Don't separate it into two distinct vowel sounds."
        ),
        Sentence(
            id: UUID(),
            text: "Do you have any plans for the holiday?",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/duː juː hæv ˈɛni plænz fər ðə ˈhɒlɪˌdeɪ/",
            focusSounds: ["h", "pl"],
            tip: "In natural speech 'do you' reduces to /djə/ — 'dya have any plans?'. 'Plans' uses a flat /æ/ vowel."
        ),
        Sentence(
            id: UUID(),
            text: "Have you tried the new café around the corner?",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/hæv juː traɪd ðə njuː kæˈfeɪ əˈraʊnd ðə ˈkɔːrnər/",
            focusSounds: ["tr", "aʊ"],
            tip: "'Tried' starts with a tight /tr/ blend. 'Around' uses the /aʊ/ diphthong — start with an open mouth then round your lips."
        ),
        Sentence(
            id: UUID(),
            text: "I can't believe how fast this year is going.",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/aɪ kænt bɪˈliːv haʊ fæst ðɪs jɪər ɪz ˈɡoʊɪŋ/",
            focusSounds: ["b", "f", "ɪ"],
            tip: "Put extra stress on 'fast' and 'going' to convey the feeling of surprise — these are the emotional core of the sentence."
        ),
        Sentence(
            id: UUID(),
            text: "Are you watching anything good on TV lately?",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/ɑːr juː ˈwɒtʃɪŋ ˈɛnɪθɪŋ ɡʊd ɒn ˌtiːˈviː ˈleɪtli/",
            focusSounds: ["w", "tʃ"],
            tip: "'Watching' — the /tʃ/ is like the 'ch' in 'cheese'; don't soften it to /ʃ/. 'Anything' — three syllables: /ˈɛ-nɪ-θɪŋ/."
        ),
        Sentence(
            id: UUID(),
            text: "What do you usually do in your free time?",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/wɒt duː juː ˈjuːʒuəli duː ɪn jər friː taɪm/",
            focusSounds: ["juː", "ʒ"],
            tip: "'Usually' has a soft /ʒ/ sound in the middle — like the 's' in 'measure'. Say /ˈjuːʒ-jʊ-ə-li/, not with hard sounds."
        ),
        Sentence(
            id: UUID(),
            text: "I've been trying to get into running lately.",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/aɪv bɪn ˈtraɪɪŋ tə ˌɡɛt ˈɪntə ˈrʌnɪŋ ˈleɪtli/",
            focusSounds: ["tr", "r", "ɪ"],
            tip: "Reduce 'trying to' to 'trying tuh' in natural speech — unstressed 'to' sounds like the schwa /tə/."
        ),
        Sentence(
            id: UUID(),
            text: "It's been so busy at work this week.",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/ɪts bɪn soʊ ˈbɪzi æt wɜːrk ðɪs wiːk/",
            focusSounds: ["b", "z", "ɜː"],
            tip: "'Busy' is /ˈbɪzi/ — the 's' makes a /z/ sound. 'Work' uses the /ɜː/ vowel, similar to the sound in 'bird'."
        ),
        Sentence(
            id: UUID(),
            text: "Have you been to any good restaurants recently?",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/hæv juː bɪn tə ˈɛni ɡʊd ˈrɛstərɒnts ˈriːsəntli/",
            focusSounds: ["r", "str"],
            tip: "'Restaurants' — many native speakers say /ˈrɛstrɒnts/ (three syllables, not four). Don't over-articulate each syllable."
        ),
        Sentence(
            id: UUID(),
            text: "I'm really looking forward to the long weekend.",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/aɪm ˈrɪəli ˈlʊkɪŋ ˈfɔːrwərd tə ðə lɒŋ ˈwiːkˌɛnd/",
            focusSounds: ["l", "ɔː", "ŋ"],
            tip: "'Looking forward' is a fixed phrase — link the /k/ of 'looking' smoothly into the /f/ of 'forward': /ˈlʊkɪŋ.fɔːrwərd/."
        ),
        Sentence(
            id: UUID(),
            text: "The traffic was terrible this morning.",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/ðə ˈtræfɪk wɒz ˈtɛrɪbəl ðɪs ˈmɔːrnɪŋ/",
            focusSounds: ["tr", "r", "ɪ"],
            tip: "'Terrible' — stress the first syllable: /ˈtɛr-ɪ-bəl/. The last syllable is a very weak /bəl/."
        ),
        Sentence(
            id: UUID(),
            text: "Did you catch the game last night?",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/dɪd juː kætʃ ðə ɡeɪm læst naɪt/",
            focusSounds: ["tʃ", "ɡ"],
            tip: "'Did you' naturally blends to /dɪdʒə/ in fast speech — 'didja catch the game?'. This is completely normal."
        ),
        Sentence(
            id: UUID(),
            text: "I love that coffee shop — the atmosphere is so cozy.",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/aɪ lʌv ðæt ˈkɒfi ʃɒp — ðə ˈætməsfɪər ɪz soʊ ˈkoʊzi/",
            focusSounds: ["l", "v", "ʃ"],
            tip: "'Atmosphere' — stress the first syllable: /ˈæt-məs-fɪər/. Don't stress the '-sphere' ending."
        ),
        Sentence(
            id: UUID(),
            text: "Are you from around here originally?",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/ɑːr juː frɒm əˈraʊnd hɪər əˈrɪdʒɪnəli/",
            focusSounds: ["r", "aʊ", "ɪ"],
            tip: "'Originally' has five syllables: /ə-ˈrɪdʒ-ɪ-nə-li/. Many learners drop the third syllable — try saying each one clearly."
        ),
        Sentence(
            id: UUID(),
            text: "We should grab lunch sometime soon.",
            difficulty: .beginner, category: .smallTalk,
            phonetics: "/wiː ʃʊd ɡræb lʌntʃ ˈsʌmtaɪm suːn/",
            focusSounds: ["ɡr", "tʃ"],
            tip: "'Grab lunch' is very natural conversational English — the /b/ at the end of 'grab' can soften before 'lunch'."
        ),
    ]

    // MARK: - Small Talk · Intermediate

    static let smallTalkIntermediate: [Sentence] = [

        Sentence(
            id: UUID(),
            text: "I've been meaning to try that new place downtown — have you heard anything about it?",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/aɪv bɪn ˈmiːnɪŋ tə traɪ ðæt njuː pleɪs ˌdaʊnˈtaʊn/",
            focusSounds: ["miː", "tr", "aʊ"],
            tip: "'Meaning to' often reduces to /ˈmiːnɪŋ tə/ — the second 'to' is a schwa. 'Downtown' — stress the second syllable."
        ),
        Sentence(
            id: UUID(),
            text: "Honestly, working from home has completely changed my routine.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/ˈɒnɪstli ˈwɜːrkɪŋ frɒm hoʊm hæz kəmˈpliːtli tʃeɪndʒd maɪ ruːˈtiːn/",
            focusSounds: ["h", "tʃ", "ɪ"],
            tip: "'Honestly' can open with a soft /h/ or even drop it: /ˈɒnɪstli/. 'Changed' — the /tʃ/ must be sharp and crisp."
        ),
        Sentence(
            id: UUID(),
            text: "I signed up for a cooking class last month and I've been absolutely hooked.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/aɪ saɪnd ʌp fər ə ˈkʊkɪŋ klæs læst mʌnθ ænd aɪv bɪn ˈæbsəluːtli hʊkt/",
            focusSounds: ["k", "θ", "st"],
            tip: "'Month' ends with /nθ/ — place your tongue tip behind the top teeth for the /θ/. Don't drop it to sound like 'mun'."
        ),
        Sentence(
            id: UUID(),
            text: "I've been trying to cut back on coffee, but it's easier said than done.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/aɪv bɪn ˈtraɪɪŋ tə kʌt bæk ɒn ˈkɒfi bʌt ɪts ˈiːziər sɛd ðən dʌn/",
            focusSounds: ["tr", "k", "ð"],
            tip: "'Easier said than done' is a common idiom — keep the rhythm natural: /ˈiː.zi.ər ˈsɛd.ðən.dʌn/."
        ),
        Sentence(
            id: UUID(),
            text: "My commute has been brutal lately — they've been doing roadwork on every major street.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/maɪ kəˈmjuːt hæz bɪn ˈbruːtəl ˈleɪtli ðeɪv bɪn ˈduːɪŋ ˈroʊdwɜːrk ɒn ˈɛvri ˈmeɪdʒər striːt/",
            focusSounds: ["kj", "br", "l"],
            tip: "'Commute' — the /kj/ at the start is subtle: /kəˈmjuːt/. 'Brutal' — don't swallow the final /l/."
        ),
        Sentence(
            id: UUID(),
            text: "I've been getting back into reading — turns out I'd forgotten how much I enjoyed it.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/aɪv bɪn ˈɡɛtɪŋ bæk ˈɪntə ˈriːdɪŋ — tɜːrnz aʊt aɪd fərˈɡɒtən haʊ mʌtʃ aɪ ɪnˈdʒɔɪd ɪt/",
            focusSounds: ["r", "aʊ", "dʒ"],
            tip: "'Turns out' is a spoken filler — say it as one flowing unit: /tɜːrnz.aʊt/. 'Enjoyed' ends with a /dʒd/ cluster."
        ),
        Sentence(
            id: UUID(),
            text: "We ended up staying in last weekend and it was honestly exactly what we needed.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/wiː ˈɛndɪd ʌp ˈsteɪɪŋ ɪn læst ˈwiːkɛnd ænd ɪt wɒz ˈɒnɪstli ɪɡˈzæktli wɒt wiː ˈniːdɪd/",
            focusSounds: ["st", "z", "ks"],
            tip: "'Exactly' has a /ɡz/ cluster: /ɪɡˈzækt.li/ — don't simplify to /ɪkˈzækt.li/. The 'x' is voiced here."
        ),
        Sentence(
            id: UUID(),
            text: "Have you noticed prices going up everywhere? Even groceries are getting expensive.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/hæv juː ˈnoʊtɪst ˈpraɪsɪz ˈɡoʊɪŋ ʌp ˈɛvrɪwɛr — ˈiːvən ˈɡroʊsəriz ɑːr ˈɡɛtɪŋ ɪkˈspɛnsɪv/",
            focusSounds: ["pr", "ɪ", "ks"],
            tip: "'Groceries' — three syllables in natural speech: /ˈɡroʊ-sə-riz/. Don't add an extra vowel between syllables."
        ),
        Sentence(
            id: UUID(),
            text: "I finally finished that series everyone was talking about — the ending was a bit disappointing.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/aɪ ˈfaɪnəli ˈfɪnɪʃt ðæt ˈsɪəriz ˈɛvrɪwʌn wɒz ˈtɔːkɪŋ əˈbaʊt/",
            focusSounds: ["f", "ɪ", "ɔː"],
            tip: "'Finished' — the '-ed' after /ʃ/ is pronounced /t/: /ˈfɪnɪʃt/, not /ˈfɪnɪʃɪd/. Don't add an extra syllable."
        ),
        Sentence(
            id: UUID(),
            text: "I'm trying to get back into a gym routine, but finding the motivation after work is rough.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/aɪm ˈtraɪɪŋ tə ɡɛt bæk ˈɪntə ə dʒɪm ruːˈtiːn bʌt ˈfaɪndɪŋ ðə ˌmoʊtɪˈveɪʃən ˈɑːftər wɜːrk ɪz rʌf/",
            focusSounds: ["tr", "dʒ", "ʃ"],
            tip: "'Motivation' — stress the third syllable: /ˌmoʊ-tɪ-ˈveɪ-ʃən/. Don't flatten all syllables to the same level."
        ),
        Sentence(
            id: UUID(),
            text: "We're planning a short trip for the summer — nothing too ambitious, just somewhere to unwind.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/wɪər ˈplænɪŋ ə ʃɔːrt trɪp fər ðə ˈsʌmər — ˈnʌθɪŋ tuː æmˈbɪʃəs dʒʌst ˈsʌmwɛr tə ʌnˈwaɪnd/",
            focusSounds: ["pl", "tr", "ɪ"],
            tip: "'Ambitious' — /æmˈbɪʃ.əs/. The /ʃ/ is a soft breath; don't replace it with the harder /tʃ/."
        ),
        Sentence(
            id: UUID(),
            text: "I've been trying to cook more at home instead of ordering in every night.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/aɪv bɪn ˈtraɪɪŋ tə kʊk mɔːr æt hoʊm ɪnˈstɛd əv ˈɔːrdərɪŋ ɪn ˈɛvri naɪt/",
            focusSounds: ["k", "ɔː", "ɪn"],
            tip: "'Instead of' runs together in speech: /ɪnˈstɛdəv/ — say it as one smooth phrase rather than three separate words."
        ),
        Sentence(
            id: UUID(),
            text: "The office has been so quiet since they moved to the hybrid schedule.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/ðə ˈɒfɪs hæz bɪn soʊ ˈkwaɪət sɪns ðeɪ muːvd tə ðə ˈhaɪbrɪd ˈʃɛdjuːl/",
            focusSounds: ["kw", "aɪ", "ʃ"],
            tip: "'Schedule' is /ˈʃɛdjuːl/ in British English or /ˈskɛdʒuːl/ in American English. Choose one pronunciation and be consistent."
        ),
        Sentence(
            id: UUID(),
            text: "I ran into someone from college the other day and barely recognized them.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/aɪ ræn ˈɪntə ˈsʌmwʌn frɒm ˈkɒlɪdʒ ði ˈʌðər deɪ ænd ˈbɛərli ˈrɛkəɡnaɪzd ðɛm/",
            focusSounds: ["r", "ɪ", "dʒ"],
            tip: "'Recognized' — four syllables: /ˈrɛk-əɡ-naɪzd/. Don't drop the /ɡ/ in the middle or compress it to two syllables."
        ),
        Sentence(
            id: UUID(),
            text: "I've been thinking about picking up a new hobby — maybe something creative like pottery or painting.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/aɪv bɪn ˈθɪŋkɪŋ əˈbaʊt ˈpɪkɪŋ ʌp ə njuː ˈhɒbi — ˈmeɪbi ˈsʌmθɪŋ kriˈeɪtɪv laɪk ˈpɒtəri ɔːr ˈpeɪntɪŋ/",
            focusSounds: ["θ", "p", "kr"],
            tip: "'Creative' — stress the second syllable: /kriˈeɪ-tɪv/. 'Pottery' — three syllables: /ˈpɒ-tə-ri/."
        ),
        Sentence(
            id: UUID(),
            text: "The weather has been all over the place this week — yesterday felt like winter, today like summer.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/ðə ˈwɛðər hæz bɪn ɔːl ˈoʊvər ðə pleɪs ðɪs wiːk/",
            focusSounds: ["w", "ð", "ɔː"],
            tip: "'All over the place' is an idiom meaning 'inconsistent'. Keep the /l/ in 'all' clear — don't let it merge with 'over'."
        ),
        Sentence(
            id: UUID(),
            text: "My neighbor just got a dog and it wakes me up barking at three in the morning.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/maɪ ˈneɪbər dʒʌst ɡɒt ə dɒɡ ænd ɪt weɪks miː ʌp ˈbɑːrkɪŋ æt θriː ɪn ðə ˈmɔːrnɪŋ/",
            focusSounds: ["n", "b", "θ"],
            tip: "'Neighbor' — the 'gh' is completely silent: /ˈneɪ-bər/. 'Three' starts with /θr/ — tongue on teeth before the /r/."
        ),
        Sentence(
            id: UUID(),
            text: "Did you see the news about the development they're planning near the park?",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/dɪd juː siː ðə njuːz əˈbaʊt ðə dɪˈvɛləpmənt ðeər ˈplænɪŋ nɪər ðə pɑːrk/",
            focusSounds: ["n", "dɪ", "pl"],
            tip: "'Development' is often reduced to /dɪˈvɛl-mənt/ in fast speech — four syllables rather than five. Both are acceptable."
        ),
        Sentence(
            id: UUID(),
            text: "I feel like everyone I know is either getting married or having kids right now.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/aɪ fiːl laɪk ˈɛvrɪwʌn aɪ noʊ ɪz ˈiːðər ˈɡɛtɪŋ ˈmærid ɔːr ˈhævɪŋ kɪdz raɪt naʊ/",
            focusSounds: ["l", "ð", "m"],
            tip: "'Either' — both /ˈiːðər/ and /ˈaɪðər/ are correct in standard English. Choose one and stick to it."
        ),
        Sentence(
            id: UUID(),
            text: "I finally cleaned out my closet this weekend — it's amazing how much stuff you accumulate.",
            difficulty: .intermediate, category: .smallTalk,
            phonetics: "/aɪ ˈfaɪnəli kliːnd aʊt maɪ ˈklɒzɪt ðɪs ˈwiːkɛnd — ɪts əˈmeɪzɪŋ haʊ mʌtʃ stʌf juː əˈkjuːmjʊleɪt/",
            focusSounds: ["kl", "z", "kjuː"],
            tip: "'Accumulate' — /ə-ˈkjuː-mjʊ-leɪt/. The /kj/ cluster sounds like the 'cu' in 'cute'. Don't drop the /j/ sound."
        ),
    ]

    // MARK: - Small Talk · Advanced

    static let smallTalkAdvanced: [Sentence] = [

        Sentence(
            id: UUID(),
            text: "I've been reflecting lately on how differently I spend my time compared to five years ago — priorities really do shift when you least expect them to.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/aɪv bɪn rɪˈflɛktɪŋ ˈleɪtli ɒn haʊ ˈdɪfrəntli aɪ spɛnd maɪ taɪm kəmˈpɛrd tə faɪv jɪərz əˈɡoʊ/",
            focusSounds: ["r", "fl", "ɪ"],
            tip: "'Reflecting' — stress the second syllable: /rɪ-ˈflɛk-tɪŋ/. The /fl/ blend must be clean — don't insert a vowel between the consonants."
        ),
        Sentence(
            id: UUID(),
            text: "There's something oddly satisfying about finally tackling a task you've been putting off for months.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/ðɛrz ˈsʌmθɪŋ ˈɒdli ˈsætɪsfaɪɪŋ əˈbaʊt ˈfaɪnəli ˈtæklɪŋ ə tæsk jʊv bɪn ˈpʊtɪŋ ɒf fər mʌnθs/",
            focusSounds: ["θ", "s", "tæ"],
            tip: "'Satisfying' — four syllables: /ˈsæt-ɪs-faɪ-ɪŋ/. Don't compress it to three. 'Tackling' — keep the short /æ/ vowel open."
        ),
        Sentence(
            id: UUID(),
            text: "I think our relationship with social media has fundamentally changed — most people I know are consciously scaling back.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/aɪ θɪŋk aʊər rɪˈleɪʃənʃɪp wɪð ˈsoʊʃəl ˈmiːdiə hæz ˌfʌndəˈmɛntəli tʃeɪndʒd/",
            focusSounds: ["θ", "ʃ", "tʃ"],
            tip: "'Fundamentally' — five syllables with stress on the third: /ˌfʌn-də-ˈmɛn-tə-li/. 'Consciously' reduces to three syllables naturally."
        ),
        Sentence(
            id: UUID(),
            text: "It's interesting how remote work affected people so differently — for some it was liberating, for others it was genuinely isolating.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/ɪts ˈɪntrəstɪŋ haʊ rɪˈmoʊt wɜːrk əˈfɛktɪd ˈpiːpəl soʊ ˈdɪfrəntli/",
            focusSounds: ["ɪ", "r", "t"],
            tip: "'Interesting' — most native speakers use three syllables: /ˈɪn-trəs-tɪŋ/. Four syllables (/ˈɪn-tər-ɛs-tɪŋ/) is also correct."
        ),
        Sentence(
            id: UUID(),
            text: "I've started being much more intentional about who I spend time with — you realize energy is finite and that clarity comes with age.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/aɪv ˈstɑːrtɪd ˈbiːɪŋ mʌtʃ mɔːr ɪnˈtɛnʃənəl əˈbaʊt huː aɪ spɛnd taɪm wɪð/",
            focusSounds: ["ɪn", "ʃ", "ð"],
            tip: "'Intentional' — /ɪn-ˈtɛn-ʃən-əl/. The /ʃ/ in the third syllable is a soft breath; don't harden it to /tʃ/."
        ),
        Sentence(
            id: UUID(),
            text: "There's a real tension between wanting to stay informed and recognizing when the news is just adding to your anxiety.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/ðɛrz ə rɪəl ˈtɛnʃən bɪˈtwiːn ˈwɒntɪŋ tə steɪ ɪnˈfɔːrmd ænd ˌrɛkəɡˈnaɪzɪŋ wɛn ðə njuːz ɪz dʒʌst ˈædɪŋ tə jər æŋˈzaɪɪti/",
            focusSounds: ["ʃ", "r", "ŋ"],
            tip: "'Anxiety' — /æŋˈzaɪ-ɪ-ti/. The /ŋz/ at the start: 'ang-ZY-uh-tee'. Don't say /ˈænsaɪɪti/ with an /s/."
        ),
        Sentence(
            id: UUID(),
            text: "I find it fascinating how food trends cycle back — everything considered old-fashioned eventually gets rebranded as artisanal.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/aɪ faɪnd ɪt ˈfæsɪneɪtɪŋ haʊ fuːd trɛndz ˈsaɪkəl bæk — ˈɛvrɪθɪŋ kənˈsɪdərd ˌoʊldˈfæʃənd ɪˈvɛntʃuəli ɡɛts riˈbrændɪd æz ˈɑːrtɪzənəl/",
            focusSounds: ["f", "s", "z"],
            tip: "'Artisanal' — stress the first syllable in American English: /ˈɑːr-tɪ-zə-nəl/. Don't stress '-san-' as in the French origin."
        ),
        Sentence(
            id: UUID(),
            text: "The more I travel, the more I appreciate coming back to somewhere familiar — there's a kind of comfort in the ordinary.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/ðə mɔːr aɪ ˈtrævəl ðə mɔːr aɪ əˈpriːʃieɪt ˈkʌmɪŋ bæk tə ˈsʌmwɛr fəˈmɪliər/",
            focusSounds: ["tr", "ʃ", "r"],
            tip: "'Appreciate' — five syllables: /ə-ˈpriː-ʃi-eɪt/. Stress 'pree'. The /ʃ/ in the middle is a soft glide into the next syllable."
        ),
        Sentence(
            id: UUID(),
            text: "I've been thinking about the relationship between routine and creativity — too much structure and you feel stifled, too little and nothing gets done.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/aɪv bɪn ˈθɪŋkɪŋ əˈbaʊt ðə rɪˈleɪʃənʃɪp bɪˈtwiːn ruːˈtiːn ænd kriˌeɪˈtɪvɪti/",
            focusSounds: ["θ", "ʃ", "kr"],
            tip: "'Creativity' — stress the fourth syllable: /ˌkriː-eɪ-ˈtɪv-ɪ-ti/. Keep all five syllables present and distinct."
        ),
        Sentence(
            id: UUID(),
            text: "Getting consistent sleep has made more of a difference to how I feel than any supplement or wellness routine I've tried.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/ˈɡɛtɪŋ kənˈsɪstənt sliːp hæz meɪd mɔːr əv ə ˈdɪfrəns tə haʊ aɪ fiːl ðæn ˈɛni ˈsʌplɪmənt ɔːr ˈwɛlnɪs ruːˈtiːn aɪv traɪd/",
            focusSounds: ["k", "sl", "ɪ"],
            tip: "'Supplement' — three syllables: /ˈsʌp-lɪ-mənt/. Don't insert an extra vowel to make it four syllables."
        ),
        Sentence(
            id: UUID(),
            text: "It's genuinely hard to maintain close friendships as an adult — everyone's pulled in different directions and you have to be quite deliberate about it.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/ɪts ˈdʒɛnjuɪnli hɑːrd tə meɪnˈteɪn kloʊs ˈfrɛndʃɪps æz ən ˈædʌlt/",
            focusSounds: ["dʒ", "fr", "ɪ"],
            tip: "'Genuinely' — four syllables: /ˈdʒɛn-ju-ɪn-li/. Don't drop the '-ine-' to make it three. The /dʒ/ onset must be firm."
        ),
        Sentence(
            id: UUID(),
            text: "I've become pretty skeptical of productivity content — most of it just repackages common sense and sells it as a system.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/aɪv bɪˈkʌm ˈprɪti ˈskɛptɪkəl əv prɒˈdʌktɪvɪti ˈkɒntɛnt/",
            focusSounds: ["sk", "p", "t"],
            tip: "'Skeptical' — /ˈskɛp-tɪ-kəl/. The /sk/ onset must be clear — don't soften the /k/ or drop it entirely."
        ),
        Sentence(
            id: UUID(),
            text: "The concept of work-life balance feels increasingly outdated — integration seems more realistic, even if the line is harder to draw.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/ðə ˈkɒnsɛpt əv ˈwɜːrk laɪf ˈbæləns fiːlz ɪnˈkriːsɪŋli ˌaʊtˈdeɪtɪd/",
            focusSounds: ["k", "ɪŋ", "l"],
            tip: "'Increasingly' — four syllables: /ɪnˈkriː-sɪŋ-li/. 'Creas' rhymes with 'trees'. Keep the /ŋ/ nasal at the end of '-ing'."
        ),
        Sentence(
            id: UUID(),
            text: "I think a lot about the cost of convenience — every subscription, every delivery, every shortcut has a tradeoff we've quietly normalized.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/aɪ θɪŋk ə lɒt əˈbaʊt ðə kɒst əv kənˈviːniəns — ˈɛvri səbˈskrɪpʃən ˈɛvri dɪˈlɪvəri ˈɛvri ˈʃɔːrtkʌt hæz ə ˈtreɪdɒf wiːv ˈkwaɪətli ˈnɔːrməlaɪzd/",
            focusSounds: ["k", "v", "skr"],
            tip: "'Subscription' — /səb-ˈskrɪp-ʃən/. The /skr/ blend in the middle requires all three consonants in quick succession."
        ),
        Sentence(
            id: UUID(),
            text: "There's a kind of mental overhead that comes from having too many unfinished threads — projects started, messages unread, decisions deferred — that quietly drains you.",
            difficulty: .advanced, category: .smallTalk,
            phonetics: "/ðɛrz ə kaɪnd əv ˈmɛntəl ˌoʊvərˈhɛd ðæt kʌmz frɒm ˈhævɪŋ tuː ˈmɛni ˌʌnˈfɪnɪʃt θrɛdz/",
            focusSounds: ["m", "v", "θ"],
            tip: "'Overhead' — stress the last syllable as a noun: /ˌoʊ-vər-ˈhɛd/. 'Threads' — /θrɛdz/ — tongue on teeth for /θ/, then voiced /r/."
        ),
    ]
}
