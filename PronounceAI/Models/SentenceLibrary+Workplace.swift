import Foundation

// MARK: - Workplace Small Talk

extension SentenceLibrary {

    // MARK: Intermediate (everyday · business)

    static let workplaceIntermediate: [Sentence] = [

        // -- Daily check-ins & openers --
        Sentence(
            id: UUID(),
            text: "Did you catch the all-hands meeting yesterday? I thought the CEO made some really interesting points about where we're heading.",
            difficulty: .intermediate, category: .business,
            phonetics: "/dɪd juː kætʃ ðiː ɔːl hændz ˈmiːtɪŋ ˈjɛstərdeɪ/",
            focusSounds: ["ch", "th", "h"],
            tip: "'Catch' ends with /tʃ/. 'Heading' — HED-ing. Don't swallow the 'h' in 'hands' or 'heading'."
        ),
        Sentence(
            id: UUID(),
            text: "I can't believe it's already Thursday. This week has absolutely flown by.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/aɪ kɑːnt bɪˈliːv ɪts ɔːlˈrɛdi ˈθɜːrzdeɪ ðɪs wiːk hæz ˈæbsəluːtli floʊn baɪ/",
            focusSounds: ["th", "fl"],
            tip: "'Thursday' — THURS-day, voiceless /θ/. 'Flown' — the /fl/ cluster blends instantly."
        ),
        Sentence(
            id: UUID(),
            text: "Are you heading to the team lunch today? I heard they're trying that new Thai place just down the street.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/ɑːr juː ˈhɛdɪŋ tə ðə tiːm lʌntʃ təˈdeɪ aɪ hɜːrd ðɛr ˈtraɪɪŋ ðæt njuː taɪ pleɪs/",
            focusSounds: ["h", "tr", "th"],
            tip: "'Heard' — don't drop the /d/. 'Trying' — TRY-ing, the /tr/ cluster is tight."
        ),
        Sentence(
            id: UUID(),
            text: "I've been absolutely swamped with this project all week. I haven't even had time to check my emails properly.",
            difficulty: .intermediate, category: .business,
            phonetics: "/aɪv bɪn ˈæbsəluːtli swɒmpt wɪð ðɪs ˈprɒdʒɛkt ɔːl wiːk/",
            focusSounds: ["sw", "pr"],
            tip: "'Swamped' — /sw/ onset then final /mpt/ cluster: all four sounds. 'Project' — PRO-ject as a noun."
        ),
        Sentence(
            id: UUID(),
            text: "How did your presentation go? I know you were really nervous going in.",
            difficulty: .intermediate, category: .business,
            phonetics: "/haʊ dɪd jɔːr ˌprɛzənˈteɪʃən ɡoʊ aɪ noʊ juː wɜːr ˈrɪəli ˈnɜːrvəs ˈɡoʊɪŋ ɪn/",
            focusSounds: ["pr", "sh"],
            tip: "pre-zen-TA-tion — stress the third syllable. 'Nervous' — NER-vous, with a clear retroflex /r/."
        ),
        Sentence(
            id: UUID(),
            text: "We should probably sync up before the client call. Do you have fifteen minutes free this afternoon?",
            difficulty: .intermediate, category: .business,
            phonetics: "/wiː ʃʊd ˈprɒbəbli sɪŋk ʌp bɪˈfɔːr ðə ˈklaɪənt kɔːl/",
            focusSounds: ["pr", "cl", "ng"],
            tip: "'Probably' — PROB-ab-ly, three syllables. 'Sync' ends with /ŋk/ — feel the back nasal then the stop."
        ),
        Sentence(
            id: UUID(),
            text: "I'm thinking of taking a few days off after this sprint. I really need to recharge my batteries.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/aɪm ˈθɪŋkɪŋ əv ˈteɪkɪŋ ə fjuː deɪz ɒf ˈɑːftər ðɪs sprɪnt/",
            focusSounds: ["th", "spr"],
            tip: "'Thinking' — THINK-ing, voiceless /θ/. 'Sprint' — the /spr/ cluster: three consecutive consonants."
        ),
        Sentence(
            id: UUID(),
            text: "Have you been introduced to the new hire yet? She seems really sharp and comes with a lot of relevant experience.",
            difficulty: .intermediate, category: .business,
            phonetics: "/hæv juː bɪn ˌɪntrəˈdjuːst tə ðə njuː haɪər jɛt/",
            focusSounds: ["intr", "sh"],
            tip: "in-tro-DUCED — stress on third syllable. 'Sharp' — the /ʃ/ is clear before the vowel."
        ),
        Sentence(
            id: UUID(),
            text: "The office is so quiet today. Half the team must be working from home.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/ðiː ˈɒfɪs ɪz soʊ ˈkwaɪət təˈdeɪ hɑːf ðə tiːm mʌst biː ˈwɜːrkɪŋ frɒm hoʊm/",
            focusSounds: ["qu", "h"],
            tip: "'Quiet' — KWAI-et, two syllables. The 'h' in 'half' and 'home' — don't aspirate them too heavily."
        ),
        Sentence(
            id: UUID(),
            text: "I stayed late yesterday trying to track down that bug, but I finally got it sorted this morning.",
            difficulty: .intermediate, category: .business,
            phonetics: "/aɪ steɪd leɪt ˈjɛstərdeɪ ˈtraɪɪŋ tə træk daʊn ðæt bʌɡ/",
            focusSounds: ["tr", "st"],
            tip: "'Stayed' ends with /d/ — don't devoice it to /t/. 'Track' — the /tr/ onset is a tight cluster."
        ),
        Sentence(
            id: UUID(),
            text: "What are you working on at the moment? It sounds like your team has been incredibly busy lately.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/wɒt ɑːr juː ˈwɜːrkɪŋ ɒn æt ðə ˈmoʊmənt ɪt saʊndz laɪk jɔːr tiːm hæz bɪn ɪnˈkrɛdɪbli ˈbɪzi ˈleɪtli/",
            focusSounds: ["w", "r", "cr"],
            tip: "'Incredibly' — in-CRED-i-bly. 'Working' — WORK-ing, the /w/ onset needs rounded lips."
        ),
        Sentence(
            id: UUID(),
            text: "I heard we might be getting new standing desks. It's about time — my back has been absolutely killing me.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/aɪ hɜːrd wiː maɪt biː ˈɡɛtɪŋ njuː ˈstændɪŋ dɛsks/",
            focusSounds: ["st", "nd"],
            tip: "'Standing' — STAND-ing, with a clear /nd/ cluster before the '-ing'. Don't merge them."
        ),
        Sentence(
            id: UUID(),
            text: "Did you manage to get through all your action items from last week's retrospective?",
            difficulty: .intermediate, category: .business,
            phonetics: "/dɪd juː ˈmænɪdʒ tə ɡɛt θruː ɔːl jɔːr ˈækʃən ˈaɪtəmz frɒm lɑːst wiːks ˌrɛtrəˈspɛktɪv/",
            focusSounds: ["th", "sp"],
            tip: "ret-ro-SPEC-tive — stress on the third syllable. 'Through' — voiceless /θ/ + /r/ together."
        ),
        Sentence(
            id: UUID(),
            text: "I just got out of a two-hour back-to-back and I am completely drained. I need at least ten minutes to decompress.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/aɪ dʒʌst ɡɒt aʊt əv ə tuː aʊər bæk tə bæk ænd aɪ æm kəmˈpliːtli dreɪnd/",
            focusSounds: ["dr", "pl"],
            tip: "'Drained' — /dr/ onset, don't separate the sounds. 'Completely' — com-PLETE-ly."
        ),
        Sentence(
            id: UUID(),
            text: "Happy Monday! How was your weekend? I finally managed to see that film everyone's been talking about.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/ˈhæpi ˈmʌndeɪ haʊ wɒz jɔːr ˈwiːkɛnd aɪ ˈfaɪnəli ˈmænɪdʒd tə siː ðæt fɪlm ˈɛvrɪwʌnz bɪn ˈtɔːkɪŋ əˈbaʊt/",
            focusSounds: ["f", "v"],
            tip: "'Film' — a single syllable: /fɪlm/. 'Everyone's' — EV-ry-wunz, three syllables in fast speech."
        ),
        Sentence(
            id: UUID(),
            text: "We wrapped up the project ahead of schedule, which is always a great feeling. The client seemed really pleased with how everything turned out.",
            difficulty: .intermediate, category: .business,
            phonetics: "/wiː ræpt ʌp ðə ˈprɒdʒɛkt əˈhɛd əv ˈʃɛdjuːl wɪtʃ ɪz ˈɔːlweɪz ə ɡreɪt ˈfiːlɪŋ/",
            focusSounds: ["sch", "pl"],
            tip: "'Schedule' — SKED-jool (American). 'Pleased' — ends with /zd/, a voiced cluster."
        ),
        Sentence(
            id: UUID(),
            text: "Could you cover for me at the stand-up tomorrow morning? I have a dentist appointment first thing.",
            difficulty: .intermediate, category: .business,
            phonetics: "/kʊd juː ˈkʌvər fər miː æt ðə stænd ʌp təˈmɒroʊ ˈmɔːrnɪŋ/",
            focusSounds: ["v", "st"],
            tip: "'Cover' — CUV-er, the /v/ is voiced. 'Stand-up' — the /nd/ cluster before the pause."
        ),
        Sentence(
            id: UUID(),
            text: "Is the Wi-Fi playing up for anyone else, or is it just my laptop acting up again?",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/ɪz ðə ˈwaɪfaɪ ˈpleɪɪŋ ʌp fər ˈɛniwʌn ɛls ɔːr ɪz ɪt dʒʌst maɪ ˈlæptɒp ˈæktɪŋ ʌp əˈɡɛn/",
            focusSounds: ["pl", "l"],
            tip: "'Playing' — PLAY-ing. 'Laptop' — LAP-top, stress on first syllable. Don't drop the /t/."
        ),
        Sentence(
            id: UUID(),
            text: "Did you hear that Sarah got promoted? She's been with the company for nearly four years — really well deserved.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/dɪd juː hɪər ðæt ˈsɛrə ɡɒt prəˈmoʊtɪd ʃiːz bɪn wɪð ðə ˈkʌmpəni fər ˈnɪərli fɔːr jɪərz/",
            focusSounds: ["pr", "m"],
            tip: "pro-MOT-ed — stress on second syllable. 'Nearly' — NEAR-ly, the /r/ is retroflex before the /l/."
        ),
        Sentence(
            id: UUID(),
            text: "I feel like every meeting this week could have been an email. Anyone else getting that sense?",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/aɪ fiːl laɪk ˈɛvri ˈmiːtɪŋ ðɪs wiːk kʊd hæv bɪn ən ˈiːmeɪl ˈɛniwʌn ɛls ˈɡɛtɪŋ ðæt sɛns/",
            focusSounds: ["f", "th"],
            tip: "'Feel' — the /f/ needs upper teeth on lower lip. The two 'th' sounds: voiced in 'this', voiceless in 'that'."
        ),
        Sentence(
            id: UUID(),
            text: "The new project management tool is taking some getting used to, but I think once we're past the learning curve it'll be worth it.",
            difficulty: .intermediate, category: .business,
            phonetics: "/ðə njuː ˈprɒdʒɛkt ˈmænɪdʒmənt tuːl ɪz ˈteɪkɪŋ sʌm ˈɡɛtɪŋ juːst tuː/",
            focusSounds: ["pr", "m"],
            tip: "'Management' — MAN-age-ment, three syllables. 'Worth' — ends with voiceless /θ/."
        ),
        Sentence(
            id: UUID(),
            text: "I've started blocking out deep-work time in my calendar each morning. Otherwise I end up in meetings all day and barely get anything done.",
            difficulty: .intermediate, category: .business,
            phonetics: "/aɪv ˈstɑːrtɪd ˈblɒkɪŋ aʊt diːp wɜːrk taɪm ɪn maɪ ˈkælɪndər iːtʃ ˈmɔːrnɪŋ/",
            focusSounds: ["bl", "cal"],
            tip: "'Blocking' — /bl/ cluster, don't insert a vowel. 'Calendar' — CAL-en-der, three syllables."
        ),
        Sentence(
            id: UUID(),
            text: "Thanks for stepping in and handling that client escalation yesterday. That was a really stressful situation and you dealt with it brilliantly.",
            difficulty: .intermediate, category: .business,
            phonetics: "/θæŋks fər ˈstɛpɪŋ ɪn ænd ˈhændlɪŋ ðæt ˈklaɪənt ˌɛskəˈleɪʃən ˈjɛstərdeɪ/",
            focusSounds: ["th", "str"],
            tip: "'Thanks' — voiceless /θ/ at the start. es-ca-LA-tion — stress the third syllable."
        ),
        Sentence(
            id: UUID(),
            text: "I think the sprint went better than expected overall, though we did hit a few blockers toward the very end.",
            difficulty: .intermediate, category: .business,
            phonetics: "/aɪ θɪŋk ðə sprɪnt wɛnt ˈbɛtər ðæn ɪkˈspɛktɪd ˈoʊvərɔːl ðoʊ wiː dɪd hɪt ə fjuː ˈblɒkərz/",
            focusSounds: ["spr", "bl"],
            tip: "'Sprint' — /spr/ three-way cluster. 'Blockers' — /bl/ cluster. 'Though' — voiced /ð/ + /oʊ/."
        ),
        Sentence(
            id: UUID(),
            text: "I can't decide whether to take Friday off or just push through and start the long weekend with a clear conscience.",
            difficulty: .intermediate, category: .everyday,
            phonetics: "/aɪ kɑːnt dɪˈsaɪd ˈwɛðər tə teɪk ˈfraɪdeɪ ɒf ɔːr dʒʌst pʊʃ θruː ænd stɑːrt ðə lɒŋ ˈwiːkɛnd/",
            focusSounds: ["wh", "th", "fr"],
            tip: "'Whether' — voiced /ð/ in the middle. 'Through' — voiceless /θ/ + /r/. 'Friday' — FRI-day, clear /r/."
        ),

        // -- Short paragraphs --
        Sentence(
            id: UUID(),
            text: "I just got out of a three-hour workshop and my brain is completely fried. On the plus side, we finally aligned on the product roadmap for the next two quarters. Now I just need about a week to recover.",
            difficulty: .intermediate, category: .business,
            phonetics: "/aɪ dʒʌst ɡɒt aʊt əv ə θriː aʊər ˈwɜːrkʃɒp ænd maɪ breɪn ɪz kəmˈpliːtli fraɪd/",
            focusSounds: ["wr", "sh", "fr"],
            tip: "'Workshop' — WORK-shop, clear /ʃ/. 'Fried' — /fr/ cluster then diphthong /aɪ/. 'Three' — /θr/ voiceless."
        ),
        Sentence(
            id: UUID(),
            text: "We wrapped up the quarterly business review this morning and I think it went down pretty well. The numbers are looking strong, and leadership seemed genuinely impressed with the team's progress. Let's see if that translates into some additional headcount.",
            difficulty: .intermediate, category: .business,
            phonetics: "/wiː ræpt ʌp ðə ˈkwɔːrtərli ˈbɪznɪs rɪˈvjuː ðɪs ˈmɔːrnɪŋ/",
            focusSounds: ["qu", "r", "tr"],
            tip: "'Quarterly' — QUAR-ter-ly. 'Translates' — /tr/ onset + /z/ ending. 'Headcount' — HEAD-count."
        ),
    ]

    // MARK: Advanced (everyday · business)

    static let workplaceAdvanced: [Sentence] = [

        // -- Reflective / opinionated --
        Sentence(
            id: UUID(),
            text: "I've been reflecting on what came out of yesterday's retro, and I genuinely believe we need to address the communication gaps between engineering and product before they start affecting delivery timelines.",
            difficulty: .advanced, category: .business,
            phonetics: "/aɪv bɪn rɪˈflɛktɪŋ ɒn wɒt keɪm aʊt əv ˈjɛstərdeɪz ˈrɛtroʊ/",
            focusSounds: ["fl", "r"],
            tip: "re-FLECT-ing. 'Communication' — com-mu-ni-CA-tion. 'Timelines' — TIME-lines. Each carries its own stress."
        ),
        Sentence(
            id: UUID(),
            text: "The feedback from my performance review was more constructive than I expected. It gave me a lot to think about in terms of where I want to take my career over the next couple of years.",
            difficulty: .advanced, category: .business,
            phonetics: "/ðə ˈfiːdbæk frɒm maɪ pərˈfɔːrməns rɪˈvjuː wɒz mɔːr kənˈstrʌktɪv ðæn aɪ ɪkˈspɛktɪd/",
            focusSounds: ["f", "str", "r"],
            tip: "per-FOR-mance. con-STRUC-tive — /str/ cluster at the start of the stressed syllable."
        ),
        Sentence(
            id: UUID(),
            text: "It's becoming increasingly clear that we need a more structured approach to knowledge sharing across teams. Right now, too much institutional knowledge is locked inside people's heads.",
            difficulty: .advanced, category: .business,
            phonetics: "/ɪts bɪˈkʌmɪŋ ɪnˈkriːsɪŋli klɪər ðæt wiː niːd ə mɔːr ˈstrʌktʃərd əˈproʊtʃ/",
            focusSounds: ["str", "sh", "kn"],
            tip: "in-CREAS-ing-ly. STRUC-tured — /str/ then /tʃ/. 'Knowledge' — NOL-ij, the 'kn' is silent /k/."
        ),
        Sentence(
            id: UUID(),
            text: "What struck me about the offsite was how candid the conversations were. There's clearly some underlying tension around resource allocation that hasn't been properly surfaced yet.",
            difficulty: .advanced, category: .business,
            phonetics: "/wɒt strʌk miː əˈbaʊt ðiː ˈɒfsaɪt wɒz haʊ ˈkændɪd ðə ˌkɒnvərˈseɪʃənz wɜːr/",
            focusSounds: ["str", "c", "sh"],
            tip: "'Struck' — /str/ cluster. con-ver-SA-tions. al-lo-CA-tion — both have third-syllable stress."
        ),
        Sentence(
            id: UUID(),
            text: "I wanted to check in with you about the roadmap priorities. Given the shifting business requirements, I'm not convinced our current trajectory still aligns with what leadership expects by end of quarter.",
            difficulty: .advanced, category: .business,
            phonetics: "/aɪ ˈwɒntɪd tə tʃɛk ɪn wɪð juː əˈbaʊt ðə ˈroʊdmæp praɪˈɒrɪtɪz/",
            focusSounds: ["ch", "pr", "tr"],
            tip: "pri-OR-i-ties. tra-JEC-to-ry — stress on second syllable. re-QUIRE-ments. Three different stress patterns."
        ),
        Sentence(
            id: UUID(),
            text: "I've noticed that team morale tends to dip noticeably during the weeks leading up to a major release. It might be worth exploring how we could build in more structured recovery time between cycles.",
            difficulty: .advanced, category: .business,
            phonetics: "/aɪv ˈnoʊtɪst ðæt tiːm məˈrɑːl tɛndz tə dɪp ˈnoʊtɪsəbli ˈdjʊərɪŋ ðə wiːks ˈliːdɪŋ ʌp tə ə ˈmeɪdʒər rɪˈliːs/",
            focusSounds: ["m", "r", "str"],
            tip: "mo-RALE — stress on second syllable. 'Noticeably' — NO-tice-ab-ly, four syllables. STRUCtured."
        ),
        Sentence(
            id: UUID(),
            text: "To be honest, I think the scope of the project was underestimated from the very beginning. By the time the real complexity became apparent, we were already too committed to course-correct meaningfully.",
            difficulty: .advanced, category: .business,
            phonetics: "/tə biː ˈɒnɪst aɪ θɪŋk ðə skoʊp əv ðə ˈprɒdʒɛkt wɒz ˌʌndərˈɛstɪmeɪtɪd frɒm ðə ˈvɛri bɪˈɡɪnɪŋ/",
            focusSounds: ["sc", "un", "pl"],
            tip: "un-der-ES-ti-ma-ted — six syllables. com-PLEX-i-ty. ap-PAR-ent. Each has a different stress position."
        ),
        Sentence(
            id: UUID(),
            text: "The disconnect between what the sales team is promising clients and what engineering can realistically deliver within the current sprint capacity is becoming genuinely unsustainable.",
            difficulty: .advanced, category: .business,
            phonetics: "/ðə ˌdɪskəˈnɛkt bɪˈtwiːn wɒt ðə seɪlz tiːm ɪz ˈprɒmɪsɪŋ ˈklaɪənts/",
            focusSounds: ["dis", "pr", "un"],
            tip: "dis-con-NECT. re-al-IS-ti-cally — five syllables. un-sus-TAIN-a-ble — five syllables."
        ),
        Sentence(
            id: UUID(),
            text: "One thing I've found genuinely effective is protecting the first hour of the morning before Slack notifications start accumulating. It's the only reliable way I've managed to defend any meaningful flow state.",
            difficulty: .advanced, category: .everyday,
            phonetics: "/wʌn θɪŋ aɪv faʊnd ˈdʒɛnjuɪnli ɪˈfɛktɪv ɪz prəˈtɛktɪŋ ðə fɜːrst aʊər əv ðə ˈmɔːrnɪŋ/",
            focusSounds: ["j", "pr", "fl"],
            tip: "'Genuinely' — JEN-yoo-in-ly, four syllables. 'Flow' — /fl/ onset. ac-CUM-u-lat-ing."
        ),
        Sentence(
            id: UUID(),
            text: "I would argue that onboarding is one of the highest-leverage investments we can make right now. Getting people productive quickly compounds in a way that's genuinely difficult to overstate.",
            difficulty: .advanced, category: .business,
            phonetics: "/aɪ wʊd ˈɑːrɡjuː ðæt ˈɒnbɔːrdɪŋ ɪz wʌn əv ðə ˈhaɪɪst ˈlɛvərɪdʒ ɪnˈvɛstmənts/",
            focusSounds: ["gu", "ov", "nd"],
            tip: "LEV-er-age — three syllables. com-POUNDS. o-ver-STATE. Each phrase has its own stress architecture."
        ),

        // -- Advanced short paragraphs --
        Sentence(
            id: UUID(),
            text: "I've been thinking about the feedback from last quarter's review, and I think there's a real opportunity to improve how we handle cross-functional dependencies. If we establish clearer ownership models upfront, we can prevent a lot of the last-minute escalations that tend to derail our timelines. I'd love to get your perspective on how to frame this for the leadership team.",
            difficulty: .advanced, category: .business,
            phonetics: "/ˈkrɒs ˈfʌŋkʃənəl dɪˈpɛndənsɪz ɪf wiː ɪˈstæblɪʃ ˈklɪərər ˈoʊnərʃɪp ˈmɒdəlz ˈʌpfrʌnt/",
            focusSounds: ["cr", "sh", "fr"],
            tip: "de-PEN-den-cies. es-TAB-lish. es-ca-LA-tions. de-RAIL. Map each stress before reading aloud."
        ),
        Sentence(
            id: UUID(),
            text: "The onboarding experience for new team members has been inconsistent at best. Some people ramp up quickly because they happen to sit near the right colleagues, while others flounder without any structured guidance. We should treat onboarding as a product — with defined quality metrics, a feedback loop, and a deliberate iteration cycle.",
            difficulty: .advanced, category: .business,
            phonetics: "/ðiː ˈɒnbɔːrdɪŋ ɪkˈspɪərɪəns fər njuː tiːm ˈmɛmbərz hæz bɪn ɪnˈkɒnsɪstənt/",
            focusSounds: ["on", "str", "it"],
            tip: "in-con-SIS-tent. STRUC-tured. it-er-A-tion — four syllables. de-LIB-er-ate."
        ),
        Sentence(
            id: UUID(),
            text: "There's a pattern I keep noticing in how we scope projects. We tend to anchor on an optimistic estimate, then add buffer without really interrogating the underlying assumptions. By the time risks materialize, we've already committed publicly to a deadline we can no longer defend.",
            difficulty: .advanced, category: .business,
            phonetics: "/ðɛrz ə ˈpætərn aɪ kiːp ˈnoʊtɪsɪŋ ɪn haʊ wiː skoʊp ˈprɒdʒɛkts/",
            focusSounds: ["sc", "r", "un"],
            tip: "in-ter-ROG-a-ting — five syllables, stress on third. un-der-LY-ing. ma-TER-i-al-ize — five syllables."
        ),
        Sentence(
            id: UUID(),
            text: "Psychological safety within the team is something I think we've been taking for granted. When people don't feel comfortable raising concerns early, small problems quietly compound into larger ones. Building that culture requires consistent, visible behavior from leadership — it genuinely cannot be delegated to a workshop.",
            difficulty: .advanced, category: .business,
            phonetics: "/ˌsaɪkəˈlɒdʒɪkəl ˈseɪfti wɪˈðɪn ðə tiːm ɪz ˈsʌmθɪŋ aɪ θɪŋk wiːv bɪn ˈteɪkɪŋ fər ˈɡrɑːntɪd/",
            focusSounds: ["ps", "l", "v"],
            tip: "psy-cho-LOG-i-cal — five syllables, the 'ps' is silent /s/. 'Visible' — VIZ-i-ble. de-le-GA-ted."
        ),
        Sentence(
            id: UUID(),
            text: "What I find genuinely energizing about this environment is the pace at which we're expected to grow. The ambiguity can feel uncomfortable at times, but I'd rather be somewhere that stretches me constantly than somewhere I've stopped learning altogether.",
            difficulty: .advanced, category: .everyday,
            phonetics: "/wɒt aɪ faɪnd ˈdʒɛnjuɪnli ˈɛnərdʒaɪzɪŋ əˈbaʊt ðɪs ɪnˈvaɪrənmənt ɪz ðə peɪs/",
            focusSounds: ["j", "en", "str"],
            tip: "'Energizing' — EN-er-gize-ing. am-BIG-u-ity — five syllables. 'Stretches' — /str/ cluster."
        ),
        Sentence(
            id: UUID(),
            text: "I think one of the most underrated skills in this industry is the ability to communicate uncertainty clearly. It's far easier to project confidence than to say 'I don't know yet, but here's how I'm going to find out.' The latter is actually much harder and much more valuable.",
            difficulty: .advanced, category: .business,
            phonetics: "/aɪ θɪŋk wʌn əv ðə moʊst ˌʌndərˈreɪtɪd skɪlz ɪn ðɪs ˈɪndəstri ɪz ðiː əˈbɪlɪti/",
            focusSounds: ["un", "r", "v"],
            tip: "un-der-RAT-ed. com-MUN-i-cate. un-CER-tain-ty — four syllables. 'Valuable' — VAL-yoo-a-ble."
        ),
    ]
}
