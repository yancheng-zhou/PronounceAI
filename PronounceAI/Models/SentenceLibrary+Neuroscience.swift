import Foundation

// MARK: - Neuroscience

extension SentenceLibrary {

    // MARK: Intermediate

    static let neuroscienceIntermediate: [Sentence] = [
        Sentence(
            id: UUID(),
            text: "The hippocampus plays a central role in converting short-term memories into long-term ones through a process called memory consolidation.",
            difficulty: .intermediate, category: .neuroscience,
            phonetics: "/ðə ˌhɪpəˈkæmpəs pleɪz ə ˈsɛntrəl roʊl ɪn kənˈvɜːrtɪŋ ʃɔːrt tɜːrm ˈmɛmərɪz/",
            focusSounds: ["hip", "c", "m"],
            tip: "hip-po-CAM-pus — four syllables, stress on third. con-sol-i-DA-tion — five syllables. 'Memories' — MEM-or-ies."
        ),
        Sentence(
            id: UUID(),
            text: "When a neuron fires repeatedly along the same pathway, the synaptic connection it uses becomes stronger — a principle described by the phrase: neurons that fire together wire together.",
            difficulty: .intermediate, category: .neuroscience,
            phonetics: "/wɛn ə ˈnjʊərɒn faɪərz rɪˈpiːtɪdli əˈlɒŋ ðə seɪm ˈpɑːθweɪ ðə sɪˈnæptɪk kəˈnɛkʃən/",
            focusSounds: ["n", "syn"],
            tip: "'Neuron' — NYOOR-on. sy-NAP-tic — stress on second syllable. 're-PEAT-ed-ly' — four syllables."
        ),
        Sentence(
            id: UUID(),
            text: "The prefrontal cortex is responsible for executive functions such as planning, decision-making, working memory, and the regulation of impulsive behavior.",
            difficulty: .intermediate, category: .neuroscience,
            phonetics: "/ðə priːˈfrʌntəl ˈkɔːrtɛks ɪz rɪˈspɒnsɪbəl fər ɪɡˈzɛkjʊtɪv ˈfʌŋkʃənz/",
            focusSounds: ["fr", "ex"],
            tip: "pre-FRON-tal — stress on second syllable. ex-EC-u-tive — four syllables. reg-u-LA-tion."
        ),
        Sentence(
            id: UUID(),
            text: "Neuroplasticity refers to the brain's remarkable ability to reorganize itself by forming new synaptic connections throughout life in response to experience or injury.",
            difficulty: .intermediate, category: .neuroscience,
            phonetics: "/ˌnjʊərəʊplæˈstɪsɪti rɪˈfɜːrz tə ðə breɪnz rɪˈmɑːrkəbəl əˈbɪlɪti tə riːˌɔːrɡəˈnaɪz ɪtˈsɛlf/",
            focusSounds: ["n", "pl", "st"],
            tip: "neu-ro-plas-TIC-i-ty — six syllables. re-mark-a-ble — four syllables. re-or-gan-IZE."
        ),
        Sentence(
            id: UUID(),
            text: "Dopamine is released in the brain's reward circuitry when we anticipate or receive a pleasurable outcome, reinforcing the behavior that preceded it.",
            difficulty: .intermediate, category: .neuroscience,
            phonetics: "/ˈdoʊpəmiːn ɪz rɪˈliːst ɪn ðə breɪnz rɪˈwɔːrd ˈsɜːrkɪtri wɛn wiː ænˈtɪsɪpeɪt/",
            focusSounds: ["d", "r", "pl"],
            tip: "DO-pa-mine — three syllables, stress on first. 'Circuitry' — SIR-kit-ry. 'Pleasurable' — PLEZH-er-a-ble."
        ),
        Sentence(
            id: UUID(),
            text: "During slow-wave sleep, the brain replays experiences from the day and transfers them from the hippocampus to the neocortex for long-term storage.",
            difficulty: .intermediate, category: .neuroscience,
            phonetics: "/ˈdjʊərɪŋ sloʊ weɪv sliːp ðə breɪn rɪˈpleɪz ɪkˈspɪərɪənsɪz frɒm ðə deɪ ænd ˈtrænsˌfɜːrz ðɛm/",
            focusSounds: ["r", "tr", "n"],
            tip: "neo-COR-tex — stress on second syllable. 'Experiences' — ex-PER-i-en-ces, five syllables."
        ),
        Sentence(
            id: UUID(),
            text: "The amygdala detects emotionally significant stimuli — especially potential threats — and coordinates the body's rapid fight-or-flight response through the autonomic nervous system.",
            difficulty: .intermediate, category: .neuroscience,
            phonetics: "/ðiː əˈmɪɡdələ dɪˈtɛkts ɪˈmoʊʃənəli sɪɡˈnɪfɪkənt ˈstɪmjʊlaɪ/",
            focusSounds: ["am", "st"],
            tip: "a-MYG-da-la — four syllables, stress on second. 'Stimuli' — STIM-yoo-lie. au-to-NOM-ic."
        ),
        Sentence(
            id: UUID(),
            text: "Myelination wraps axons in a fatty insulating sheath that dramatically increases the speed of electrical signal transmission through saltatory conduction.",
            difficulty: .intermediate, category: .neuroscience,
            phonetics: "/ˌmaɪəlɪˈneɪʃən ræps ˈæksɒnz ɪn ə ˈfæti ˈɪnsjʊleɪtɪŋ ʃiːθ/",
            focusSounds: ["m", "sh", "th"],
            tip: "my-el-in-A-tion — five syllables. 'Axons' — AX-ons. sal-ta-TO-ry — four syllables. 'Sheath' — ends in voiceless /θ/."
        ),
        Sentence(
            id: UUID(),
            text: "Functional MRI measures changes in blood-oxygen-level-dependent contrast to identify which brain regions are most active while a participant performs a cognitive task.",
            difficulty: .intermediate, category: .neuroscience,
            phonetics: "/ˈfʌŋkʃənəl ɛm ɑːr ˈaɪ ˈmɛʒərz ˈtʃeɪndʒɪz ɪn blʌd ˈɒksɪdʒən ˈlɛvəl dɪˈpɛndənt ˈkɒntræst/",
            focusSounds: ["f", "m"],
            tip: "FUNC-tion-al. 'Measures' — MEZH-ers. de-PEN-dent. 'Cognitive' — COG-ni-tive, three syllables."
        ),
        Sentence(
            id: UUID(),
            text: "Glial cells — including astrocytes, oligodendrocytes, and microglia — provide structural support, regulate the synaptic environment, and are now understood to play active roles in neural signaling.",
            difficulty: .intermediate, category: .neuroscience,
            phonetics: "/ˈɡlaɪəl sɛlz ɪnˈkluːdɪŋ ˈæstrəˌsaɪts ˌɒlɪɡoʊˈdɛndrəˌsaɪts ænd maɪˈkroʊɡliə/",
            focusSounds: ["gl", "ol"],
            tip: "GLIA-al. AS-tro-cytes. ol-i-go-DEN-dro-cytes — six syllables. mi-CROG-lia. Each is a distinct word."
        ),
        Sentence(
            id: UUID(),
            text: "The default mode network is most active when we are not focused on the external world — during mind-wandering, autobiographical memory retrieval, and imagining future scenarios.",
            difficulty: .intermediate, category: .neuroscience,
            phonetics: "/ðə dɪˈfɔːlt moʊd ˈnɛtwɜːrk ɪz moʊst ˈæktɪv wɛn wiː ɑːr nɒt ˈfoʊkəst ɒn ðiː ɪkˈstɜːrnəl wɜːrld/",
            focusSounds: ["d", "f"],
            tip: "de-FAULT. au-to-bi-o-GRAPH-ic-al — seven syllables. re-TRIEV-al. im-AG-in-ing."
        ),
        Sentence(
            id: UUID(),
            text: "Neurotransmitters are chemical messengers that travel across the synaptic cleft and bind to receptors on the postsynaptic membrane to excite or inhibit the receiving neuron.",
            difficulty: .intermediate, category: .neuroscience,
            phonetics: "/ˌnjʊərəʊˈtrænsmɪtərz ɑːr ˈkɛmɪkəl ˈmɛsɪndʒərz ðæt ˈtrævəl əˈkrɒs ðə sɪˈnæptɪk klɛft/",
            focusSounds: ["n", "tr", "syn"],
            tip: "neu-ro-TRANS-mit-ters — five syllables. sy-NAP-tic. post-sy-NAP-tic. in-HIB-it. 'Cleft' — a single tight consonant cluster."
        ),
    ]

    // MARK: Advanced

    static let neuroscienceAdvanced: [Sentence] = [
        Sentence(
            id: UUID(),
            text: "Long-term potentiation at glutamatergic synapses in the CA1 region of the hippocampus is widely regarded as a key cellular mechanism underlying the formation of spatial and episodic memory.",
            difficulty: .advanced, category: .neuroscience,
            phonetics: "/lɒŋ tɜːrm ˌpoʊtɛnʃiˈeɪʃən æt ˌɡluːtəməˈtɜːrdʒɪk ˈsɪnæpsɪz ɪn ðə siː eɪ wʌn ˈriːdʒən/",
            focusSounds: ["p", "gl", "syn"],
            tip: "po-ten-ti-A-tion — five syllables. glu-ta-ma-TER-gic — five syllables. ep-i-SOD-ic."
        ),
        Sentence(
            id: UUID(),
            text: "The dysregulation of dopaminergic and serotonergic signaling pathways within the mesolimbic system is implicated in the pathophysiology of schizophrenia, depression, and bipolar disorder.",
            difficulty: .advanced, category: .neuroscience,
            phonetics: "/ðə dɪsˌrɛɡjʊˈleɪʃən əv ˌdoʊpəmɪˈnɜːrdʒɪk ænd ˌsɛrətoʊˈnɜːrdʒɪk ˈsɪɡnəlɪŋ ˈpɑːθweɪz/",
            focusSounds: ["d", "s", "path"],
            tip: "dys-reg-u-LA-tion. do-pa-mi-NER-gic. me-so-LIM-bic. path-o-phys-i-OL-o-gy — seven syllables."
        ),
        Sentence(
            id: UUID(),
            text: "Optogenetics enables researchers to selectively activate or silence specific neuronal populations in vivo using light-sensitive channelrhodopsins delivered via adeno-associated viral vectors.",
            difficulty: .advanced, category: .neuroscience,
            phonetics: "/ˌɒptəʊdʒɪˈnɛtɪks ɪˈneɪbəlz rɪˈsɜːrtʃərz tə sɪˈlɛktɪvli ˈæktɪveɪt ɔːr ˈsaɪləns/",
            focusSounds: ["opt", "ch", "v"],
            tip: "op-to-ge-NET-ics. chan-nel-rho-DOP-sins — five syllables. ad-e-no-as-so-ci-AT-ed — eight syllables. Slow down."
        ),
        Sentence(
            id: UUID(),
            text: "The strength of connectivity between the prefrontal cortex and the amygdala is believed to underlie top-down emotional regulation, a capacity that is measurably reduced in individuals with post-traumatic stress disorder.",
            difficulty: .advanced, category: .neuroscience,
            phonetics: "/ðə strɛŋθ əv kəˈnɛktɪvɪti bɪˈtwiːn ðə priːˈfrʌntəl ˈkɔːrtɛks ænd ðiː əˈmɪɡdələ/",
            focusSounds: ["str", "c", "tr"],
            tip: "con-nec-TIV-i-ty. pre-FRON-tal. mea-SUR-a-bly. post-trau-MAT-ic — four syllables."
        ),
        Sentence(
            id: UUID(),
            text: "Gamma-frequency cortical oscillations in the range of thirty to eighty hertz have been associated with perceptual binding — the process by which distributed neural representations are integrated into a unified conscious percept.",
            difficulty: .advanced, category: .neuroscience,
            phonetics: "/ˈɡæmə ˈfriːkwənsi ˈkɔːrtɪkəl ˌɒsɪˈleɪʃənz ɪn ðə reɪndʒ əv ˈθɜːrti tə ˈeɪti hɜːrts/",
            focusSounds: ["g", "os", "per"],
            tip: "os-cil-LA-tions — four syllables. per-CEP-tu-al. per-CEP-t — stress on second syllable. 'Unified' — YOO-ni-fied."
        ),
        Sentence(
            id: UUID(),
            text: "The gut-brain axis describes the bidirectional communication network linking the enteric nervous system and the central nervous system, mediated in part through vagal afferent signaling and the composition of the gut microbiome.",
            difficulty: .advanced, category: .neuroscience,
            phonetics: "/ðə ɡʌt breɪn ˈæksɪs dɪˈskraɪbz ðə baɪdɪˈrɛkʃənəl kəˌmjuːnɪˈkeɪʃən ˈnɛtwɜːrk/",
            focusSounds: ["b", "d"],
            tip: "bi-di-REC-tion-al — five syllables. en-TER-ic. va-GAL. af-FER-ent. mi-cro-bi-OME — five syllables."
        ),
        Sentence(
            id: UUID(),
            text: "Hebbian learning theory proposes that synaptic efficacy is potentiated when pre-synaptic and post-synaptic neurons are activated in close temporal proximity, providing a mechanistic account of associative learning at the cellular level.",
            difficulty: .advanced, category: .neuroscience,
            phonetics: "/ˈhɛbiən ˈlɜːrnɪŋ ˈθɪəri prəˈpoʊzɪz ðæt sɪˈnæptɪk ɪˈfɪkəsi ɪz poʊˈtɛnʃieɪtɪd/",
            focusSounds: ["h", "th", "syn"],
            tip: "HEB-bi-an. e-FI-ca-cy. po-TEN-ti-at-ed — five syllables. tem-POR-al. as-so-CI-a-tive."
        ),
        Sentence(
            id: UUID(),
            text: "The blood-brain barrier selectively restricts the passage of molecules from systemic circulation into the central nervous system, protecting the neural environment from pathogens and toxins while simultaneously posing a substantial obstacle for pharmacological treatment of brain disorders.",
            difficulty: .advanced, category: .neuroscience,
            phonetics: "/ðə blʌd breɪn ˈbæriər sɪˈlɛktɪvli rɪˈstrɪkts ðə ˈpæsɪdʒ əv ˈmɒlɪkjʊlz frɒm sɪˈstɛmɪk/",
            focusSounds: ["b", "r", "ph"],
            tip: "se-LEC-tive-ly. far-ma-co-LOG-i-cal — six syllables. si-mul-TA-neous-ly — six syllables. ob-STA-cle."
        ),

        // -- Neuroscience paragraphs --
        Sentence(
            id: UUID(),
            text: "Neuroimaging studies using diffusion tensor imaging have revealed that the structural integrity of white matter tracts correlates with cognitive processing speed in aging populations. White matter lesions, often associated with cerebrovascular disease, disrupt efficient signal transmission between cortical and subcortical regions. These findings have motivated longitudinal research programs aimed at identifying early biomarkers of cognitive decline.",
            difficulty: .advanced, category: .neuroscience,
            phonetics: "/ˌnjʊərəʊˈɪmɪdʒɪŋ ˈstʌdɪz ˈjuːzɪŋ dɪˈfjuːʒən ˈtɛnsər ˈɪmɪdʒɪŋ hæv rɪˈviːld/",
            focusSounds: ["n", "d", "l"],
            tip: "dif-FU-sion. cer-e-bro-VAS-cu-lar — six syllables. lon-gi-TU-di-nal — five syllables. bi-o-MARK-ers."
        ),
        Sentence(
            id: UUID(),
            text: "Synaptic pruning is the developmental process by which the brain eliminates weaker neural connections during adolescence and early adulthood. Rather than representing loss, pruning reflects a refinement — the selective strengthening of frequently used pathways. Disruptions to this process have been hypothesized to contribute to the onset of schizophrenia and other neurodevelopmental conditions.",
            difficulty: .advanced, category: .neuroscience,
            phonetics: "/sɪˈnæptɪk ˈpruːnɪŋ ɪz ðə ˌdɛvəˈlɒpmɛntəl ˈprɒsɛs baɪ wɪtʃ ðə breɪn ɪˈlɪmɪneɪts/",
            focusSounds: ["syn", "pr", "dev"],
            tip: "sy-NAP-tic. dev-el-OP-men-tal — five syllables. a-do-LES-cence. hy-POTH-e-sized. neu-ro-dev-el-OP-men-tal — seven syllables."
        ),
        Sentence(
            id: UUID(),
            text: "Transcranial magnetic stimulation allows researchers to transiently disrupt or facilitate activity in targeted cortical regions by inducing electrical currents through a rapidly alternating magnetic field held against the scalp. When combined with simultaneous EEG recording, it provides a powerful tool for probing the causal role of specific brain areas in perception, cognition, and behavior.",
            difficulty: .advanced, category: .neuroscience,
            phonetics: "/trænsˈkreɪniəl mæɡˈnɛtɪk ˌstɪmjʊˈleɪʃən əˈlaʊz rɪˈsɜːrtʃərz tə ˈtrænziəntli/",
            focusSounds: ["tr", "m", "str"],
            tip: "trans-CRA-ni-al. mag-NET-ic. stim-u-LA-tion. tran-SIENT-ly. si-mul-TA-neous — five syllables. per-CEP-tion."
        ),
    ]
}
