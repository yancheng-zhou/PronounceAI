import Foundation

// MARK: - ETL & Cloud Expansions

extension SentenceLibrary {

    // MARK: ETL · Intermediate

    static let etlIntermediate: [Sentence] = [
        Sentence(
            id: UUID(),
            text: "We run a full refresh every Sunday night and incremental loads throughout the week to keep the warehouse current.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː rʌn ə fʊl rɪˈfrɛʃ ˈɛvri ˈsʌndeɪ naɪt ænd ɪnˈkrɛmɛntəl loʊdz θruːˈaʊt ðə wiːk/",
            focusSounds: ["r", "fr", "th"],
            tip: "re-FRESH. in-CREM-en-tal — four syllables. 'Throughout' — voiceless /θ/ + /r/ together."
        ),
        Sentence(
            id: UUID(),
            text: "The transformation step applies business logic to clean and standardize raw records before they land in the reporting layer.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðə ˌtrænsförˈmeɪʃən stɛp əˈplaɪz ˈbɪznɪs ˈlɒdʒɪk tə kliːn ænd ˈstændədaɪz rɔː ˈrɛkərdz/",
            focusSounds: ["tr", "sh", "st"],
            tip: "trans-for-MA-tion — four syllables. STAN-dard-ize. The /tr/ in 'transformation' blends tightly."
        ),
        Sentence(
            id: UUID(),
            text: "We need to add a deduplication step to the pipeline because we are getting duplicate records from the upstream source system.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː niːd tə æd ə ˌdiːdjʊplɪˈkeɪʃən stɛp tə ðə ˈpaɪplaɪn/",
            focusSounds: ["d", "pl"],
            tip: "de-du-pli-CA-tion — six syllables. 'Pipeline' — PIPE-line. 'Duplicate' noun: DU-pli-cat."
        ),
        Sentence(
            id: UUID(),
            text: "The orchestration tool triggers each task in dependency order and fires an alert if any step exceeds its service-level agreement.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðiː ˌɔːrkɪˈstreɪʃən tuːl ˈtrɪɡərz iːtʃ tɑːsk ɪn dɪˈpɛndənsi ˈɔːrdər/",
            focusSounds: ["or", "tr"],
            tip: "or-ches-TRA-tion — four syllables. de-PEN-den-cy. 'Triggers' — TRIG-gers, the /ɡ/ is voiced."
        ),
        Sentence(
            id: UUID(),
            text: "Data lineage tracking lets us trace exactly which source records contributed to a given downstream metric.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ˈdeɪtə ˈlɪniɪdʒ ˈtrækkɪŋ lɛts ʌs treɪs ɪɡˈzæktli wɪtʃ sɔːrs ˈrɛkərdz/",
            focusSounds: ["l", "tr", "ex"],
            tip: "'Lineage' — LIN-ee-ij, three syllables. 'Exactly' — the 'x' sounds like /ɡz/: eg-ZACT-ly."
        ),
        Sentence(
            id: UUID(),
            text: "We use a watermark column on the source table to identify rows modified since the last successful extraction run.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː juːz ə ˈwɔːtərmɑːrk ˈkɒləm ɒn ðə sɔːrs ˈteɪbəl tə aɪˈdɛntɪfaɪ roʊz ˈmɒdɪfaɪd/",
            focusSounds: ["w", "m"],
            tip: "'Watermark' — WAT-er-mark. i-DEN-ti-fy. 'Modified' — MOD-i-fied. Stress the first syllable each time."
        ),
        Sentence(
            id: UUID(),
            text: "The staging layer acts as a buffer between the raw ingestion zone and the curated data marts further downstream.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðə ˈsteɪdʒɪŋ ˈleɪər ækts æz ə ˈbʌfər bɪˈtwiːn ðə rɔː ɪnˈdʒɛstʃən zoʊn ænd ðə kjʊˈreɪtɪd ˈdeɪtə mɑːrts/",
            focusSounds: ["st", "ing"],
            tip: "in-GES-tion — /dʒ/ sound. 'Curated' — kyu-RAT-ed. 'Buffer' — BUF-fer, the /f/ is unvoiced."
        ),
        Sentence(
            id: UUID(),
            text: "Schema drift in the source system caused the pipeline to fail silently, so we added schema validation at the ingestion boundary.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ˈskiːmə drɪft ɪn ðə sɔːrs ˈsɪstəm kɔːzd ðə ˈpaɪplaɪn tə feɪl ˈsaɪləntli/",
            focusSounds: ["sch", "dr"],
            tip: "'Schema' — SKEE-ma, not SHA-ma. 'Drift' — /dr/ cluster. val-i-DA-tion."
        ),
        Sentence(
            id: UUID(),
            text: "We are migrating our batch jobs to a streaming architecture to cut end-to-end data latency from hours down to minutes.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː ɑːr maɪˈɡreɪtɪŋ aʊər bætʃ dʒɒbz tə ə ˈstriːmɪŋ ˈɑːrkɪtɛktʃər/",
            focusSounds: ["m", "str", "arch"],
            tip: "my-GRAT-ing. AR-chi-tec-ture — four syllables. 'Streaming' — /str/ cluster before the vowel."
        ),
        Sentence(
            id: UUID(),
            text: "Before loading into production, every record is validated against a set of expectation rules to catch anomalies before they propagate downstream.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/bɪˈfɔːr ˈloʊdɪŋ ˈɪntuː prəˈdʌkʃən ˈɛvri ˈrɛkərd ɪz ˈvælɪdeɪtɪd/",
            focusSounds: ["v", "pr"],
            tip: "pro-DUC-tion. 'Validated' — VAL-i-da-ted. 'Propagate' — PROP-a-gate. 'Anomalies' — a-NOM-a-lies."
        ),
        Sentence(
            id: UUID(),
            text: "We partitioned the output tables by event date so downstream queries can skip irrelevant partitions and run significantly faster.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː pɑːrˈtɪʃənd ðiː ˈaʊtpʊt ˈteɪbəlz baɪ ɪˈvɛnt deɪt soʊ ˈdaʊnstriːm ˈkwɪərɪz/",
            focusSounds: ["par", "qu"],
            tip: "par-TI-tioned — stress on second syllable. 'Queries' — KWEER-ees. 'Irrelevant' — ir-REL-e-vant."
        ),
        Sentence(
            id: UUID(),
            text: "The retry logic catches transient network failures and re-executes the failed task up to three times before escalating to an on-call alert.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðə ˈriːtraɪ ˈlɒdʒɪk kætʃɪz ˈtrænziənt ˈnɛtwɜːrk ˈfeɪljərz/",
            focusSounds: ["tr", "ch"],
            tip: "'Transient' — TRAN-zient, two syllables. 'Catches' — /tʃ/ affricate. es-ca-LA-ting."
        ),

        // -- ETL short paragraph --
        Sentence(
            id: UUID(),
            text: "Our pipeline runs in three stages. First, raw events are extracted from the Kafka topic and written to the landing zone. Then a transformation job cleans, enriches, and aggregates the records. Finally, the curated output is loaded into the data warehouse where it becomes available to our analysts.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/aʊər ˈpaɪplaɪn rʌnz ɪn θriː ˈsteɪdʒɪz fɜːrst rɔː ˈiːvənts ɑːr ɪkˈstræktɪd frɒm ðə ˈkæfkə ˈtɒpɪk/",
            focusSounds: ["th", "str", "en"],
            tip: "'Enriches' — en-RICH-es. 'Aggregates' — AG-gre-gates. 'Analysts' — AN-a-lysts. Three distinct stress patterns."
        ),
    ]

    // MARK: ETL · Advanced

    static let etlAdvanced: [Sentence] = [
        Sentence(
            id: UUID(),
            text: "The change data capture mechanism reads directly from the database transaction log, enabling near-real-time replication without imposing additional query load on the source system.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ðə tʃeɪndʒ ˈdeɪtə ˈkæptʃər ˈmɛkənɪzəm riːdz dɪˈrɛktli frɒm ðə ˈdeɪtəbeɪs trænsˈækʃən lɒɡ/",
            focusSounds: ["ch", "m", "tr"],
            tip: "MECH-an-ism — three syllables. trans-AC-tion. rep-li-CA-tion — four syllables. 'Imposing' — im-POS-ing."
        ),
        Sentence(
            id: UUID(),
            text: "We implemented idempotent write patterns across all pipeline stages so that any failed job can be safely re-executed without producing duplicate or inconsistent records.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/wiː ˈɪmplɪmɛntɪd ˌaɪdɛmˈpoʊtənt raɪt ˈpætərnz əˈkrɒs ɔːl ˈpaɪplaɪn ˈsteɪdʒɪz/",
            focusSounds: ["id", "p"],
            tip: "i-dem-PO-tent — four syllables, stress on third. 'Implemented' — IM-ple-ment-ed. in-con-SIS-tent."
        ),
        Sentence(
            id: UUID(),
            text: "The slowly changing dimension type-two implementation preserves historical state by inserting versioned records with valid-from and valid-to timestamps rather than overwriting existing rows.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ðə ˈsloʊli ˈtʃeɪndʒɪŋ dɪˈmɛnʃən taɪp tuː ɪmˌplɪmɛnˈteɪʃən prɪˈzɜːrvz hɪˈstɒrɪkəl steɪt/",
            focusSounds: ["ch", "dim", "his"],
            tip: "di-MEN-sion. im-ple-men-TA-tion — six syllables. his-TOR-i-cal. 'Versioned' — VER-shond."
        ),
        Sentence(
            id: UUID(),
            text: "By adopting a medallion architecture with bronze, silver, and gold layers, we established clear data quality contracts at each tier of the transformation pipeline.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/baɪ əˈdɒptɪŋ ə məˈdæliən ˈɑːrkɪtɛktʃər wɪð brɒnz ˈsɪlvər ænd ɡoʊld ˈleɪərz/",
            focusSounds: ["m", "arch", "br"],
            tip: "me-DAL-lion — three syllables. AR-chi-tec-ture. 'Contracts' as noun: CON-tracts. 'Bronze' — /brɒnz/, don't drop the /z/."
        ),
        Sentence(
            id: UUID(),
            text: "The late-arriving data problem forced us to implement a restatement mechanism that reprocesses affected partitions whenever out-of-order events are detected beyond the watermark boundary.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ðə leɪt əˈraɪvɪŋ ˈdeɪtə ˈprɒbləm fɔːrst ʌs tə ˈɪmplɪmɛnt ə ˌriːˈsteɪtmənt ˈmɛkənɪzəm/",
            focusSounds: ["r", "m", "st"],
            tip: "'Restatement' — re-STATE-ment. MECH-an-ism. 're-processes' — re-PROC-ess-es. 'Boundary' — BOUND-ary."
        ),
        Sentence(
            id: UUID(),
            text: "We decoupled the extraction and loading cadences so high-priority tables refresh on a sub-hourly schedule without destabilizing the broader nightly batch window.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/wiː diːˈkʌpəld ðiː ɪkˈstrækʃən ænd ˈloʊdɪŋ ˈkeɪdənsɪz soʊ haɪ praɪˈɒrɪti ˈteɪbəlz/",
            focusSounds: ["d", "c"],
            tip: "de-COUP-led. ex-TRAC-tion. ca-DEN-ces — three syllables. de-sta-BIL-ize-ing."
        ),
        Sentence(
            id: UUID(),
            text: "The data contract between the producing and consuming teams specifies the schema version, nullability constraints, and latency bounds for each field, creating a formal interface that isolates upstream changes from downstream breakage.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ðə ˈdeɪtə ˈkɒntrækt bɪˈtwiːn ðə prəˈdjuːsɪŋ ænd kənˈsjuːmɪŋ tiːmz ˈspɛsɪfaɪz/",
            focusSounds: ["c", "sp", "n"],
            tip: "con-TRACT. SPEC-i-fies. nul-la-BIL-i-ty — six syllables. 'Isolates' — I-so-lates."
        ),
        Sentence(
            id: UUID(),
            text: "Pipeline observability is achieved through structured logging of row counts, execution durations, and data freshness timestamps at every stage boundary, all feeding into a centralized alerting and anomaly-detection system.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ˈpaɪplaɪn ˌɒbzɜːrˈvæbɪlɪti ɪz əˈtʃiːvd θruː ˈstrʌktʃərd ˈlɒɡɪŋ əv roʊ kaʊnts/",
            focusSounds: ["obs", "str", "an"],
            tip: "ob-serv-a-BIL-i-ty — six syllables. STRUC-tured. a-NOM-a-ly. cen-tral-IZED."
        ),
    ]

    // MARK: Cloud Computing · Intermediate

    static let cloudIntermediate: [Sentence] = [
        Sentence(
            id: UUID(),
            text: "We deployed the application across multiple availability zones to ensure high availability and minimize the impact of any single point of failure.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː dɪˈplɔɪd ðiː ˌæplɪˈkeɪʃən əˈkrɒs ˈmʌltɪpəl əˌveɪləˈbɪlɪti zoʊnz/",
            focusSounds: ["pl", "v"],
            tip: "a-vail-a-BIL-i-ty — six syllables. de-PLOYED. ap-pli-CA-tion. Don't rush the long words."
        ),
        Sentence(
            id: UUID(),
            text: "The auto-scaling group adjusts the number of instances based on CPU utilization, scaling out during peak hours and scaling back in overnight.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðiː ˈɔːtoʊ ˈskeɪlɪŋ ɡruːp əˈdʒʌsts ðə ˈnʌmbər əv ˈɪnstənsɪz beɪst ɒn siː piː juː/",
            focusSounds: ["sc", "adj"],
            tip: "u-til-i-ZA-tion — six syllables. 'Adjusts' — ad-JUSTS. 'Instances' — IN-stan-ces."
        ),
        Sentence(
            id: UUID(),
            text: "We store all raw data in object storage and only pull it into the compute cluster on demand, when a query actually needs it.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː stɔːr ɔːl rɔː ˈdeɪtə ɪn ˈɒbdʒɪkt ˈstɔːrɪdʒ ænd ˈoʊnli pʊl ɪt ˈɪntuː ðə kəmˈpjuːt ˈklʌstər/",
            focusSounds: ["st", "obj"],
            tip: "'Object' — OB-ject. 'Storage' — STOR-age. com-PUTE. 'Cluster' — CLUS-ter, /kl/ cluster."
        ),
        Sentence(
            id: UUID(),
            text: "The managed Kubernetes service handles control plane upgrades automatically, which significantly reduces our operational overhead.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðə ˈmænɪdʒd ˌkuːbərˈnɛtɪz ˈsɜːrvɪs ˈhændəlz kənˈtroʊl pleɪn ˈʌpɡreɪdz ɔːtəˈmætɪkəli/",
            focusSounds: ["k", "r", "au"],
            tip: "Ku-ber-NE-tes — stress on third syllable. au-to-MAT-ic-al-ly — six syllables. op-er-A-tion-al."
        ),
        Sentence(
            id: UUID(),
            text: "We set up a content delivery network to cache static assets at edge locations that are geographically closer to our end users.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː sɛt ʌp ə ˈkɒntɛnt dɪˈlɪvəri ˈnɛtwɜːrk tə kæʃ ˈstætɪk ˈæsɛts æt ɛdʒ loʊˈkeɪʃənz/",
            focusSounds: ["c", "st"],
            tip: "de-LIV-ery. ge-o-GRAPH-ic-al-ly — six syllables. 'Cache' — /kæʃ/, rhymes with 'cash'."
        ),
        Sentence(
            id: UUID(),
            text: "The cloud cost report revealed that our biggest expense was cross-region data transfer fees, not the compute instances themselves.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðə klaʊd kɒst rɪˈpɔːrt rɪˈviːld ðæt aʊər ˈbɪɡɪst ɪkˈspɛns wɒz krɒs ˈriːdʒən ˈdeɪtə ˈtrænsfer fiːz/",
            focusSounds: ["r", "cr"],
            tip: "'Revealed' — re-VEALED. 'Expense' — ex-PENSE. 'Transfer' noun: TRANS-fer. 'Instances' — IN-stan-ces."
        ),
        Sentence(
            id: UUID(),
            text: "We provision all cloud resources using infrastructure-as-code, which means every environment is reproducible, auditable, and tracked in version control.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː prəˈvɪʒən ɔːl klaʊd rɪˈzɔːrsɪz ˈjuːzɪŋ ˈɪnfrəˌstrʌktʃər æz koʊd/",
            focusSounds: ["pr", "str"],
            tip: "pro-VI-sion. IN-fra-struc-ture — four syllables. re-pro-DU-ci-ble. au-DIT-a-ble."
        ),
        Sentence(
            id: UUID(),
            text: "The serverless function's cold start latency was adding too much overhead, so we switched to provisioned concurrency for latency-sensitive endpoints.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðə ˈsɜːrvərləs ˈfʌŋkʃənz koʊld stɑːrt ˈleɪtənsi wɒz ˈædɪŋ tuː mʌtʃ ˈoʊvərhɛd/",
            focusSounds: ["s", "l"],
            tip: "SER-ver-less. 'Latency' — LAY-ten-cy. con-CUR-ren-cy. 'Endpoints' — END-points."
        ),
        Sentence(
            id: UUID(),
            text: "We configured lifecycle policies on the storage bucket to automatically move older objects to a cheaper archival tier after ninety days.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː kənˈfɪɡərd ˈlaɪfsaɪkəl ˈpɒlɪsɪz ɒn ðə ˈstɔːrɪdʒ ˈbʌkɪt tə ɔːtəˈmætɪkəli muːv ˈoʊldər ˈɒbdʒɪkts/",
            focusSounds: ["l", "p"],
            tip: "'Lifecycle' — LIFE-cy-cle. 'Policies' — POL-i-cies. au-to-MAT-ic-al-ly. AR-chiv-al."
        ),
        Sentence(
            id: UUID(),
            text: "Role-based access control policies ensure that each service only holds permission to access the specific resources required for it to function.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/roʊl beɪst ˈækses kənˈtroʊl ˈpɒlɪsɪz ɪnˈʃʊər ðæt iːtʃ ˈsɜːrvɪs ˈoʊnli hoʊldz pərˈmɪʃən/",
            focusSounds: ["r", "c", "sh"],
            tip: "'Access' as noun: AC-cess. per-MIS-sion. 'Control' — con-TROL. 'Ensure' — en-SURE, /ʃ/ sound."
        ),
        Sentence(
            id: UUID(),
            text: "We enabled billing anomaly detection so that any unexpected spend spike triggers an automated notification to the engineering team within minutes.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/wiː ɪˈneɪbəld ˈbɪlɪŋ əˈnɒməli dɪˈtɛkʃən soʊ ðæt ˈɛniɪkˈspɛktɪd spɛnd spaɪk ˈtrɪɡərz/",
            focusSounds: ["an", "d"],
            tip: "a-NOM-a-ly. de-TEC-tion. au-to-MAT-ed. no-ti-fi-CA-tion — five syllables."
        ),
        Sentence(
            id: UUID(),
            text: "The managed database service takes automated snapshots every six hours and replicates them to a secondary region for disaster recovery.",
            difficulty: .intermediate, category: .dataAndAI,
            phonetics: "/ðə ˈmænɪdʒd ˈdeɪtəbeɪs ˈsɜːrvɪs teɪks ɔːtəˈmeɪtɪd ˈsnæpʃɒts ˈɛvri sɪks aʊərz/",
            focusSounds: ["m", "sh"],
            tip: "'Snapshots' — SNAP-shots, the /ʃ/ is clear. 're-pli-cates' — REP-li-cates. 'Secondary' — SEC-ond-ary."
        ),
    ]

    // MARK: Cloud Computing · Advanced

    static let cloudAdvanced: [Sentence] = [
        Sentence(
            id: UUID(),
            text: "We designed the multi-region active-active architecture to tolerate a complete regional outage without service degradation, using latency-based routing to direct traffic to the nearest healthy endpoint.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/wiː dɪˈzaɪnd ðə ˈmʌlti ˈriːdʒən ˈæktɪv ˈæktɪv ˈɑːrkɪtɛktʃər tə ˈtɒləreɪt/",
            focusSounds: ["arch", "r", "d"],
            tip: "AR-chi-tec-ture. deg-ra-DA-tion — four syllables. 'Tolerate' — TOL-er-ate. 'Routing' — ROO-ting."
        ),
        Sentence(
            id: UUID(),
            text: "The service mesh intercepts all inter-service communication, enforces mutual TLS authentication, and enables fine-grained traffic control without requiring any changes to application code.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ðə ˈsɜːrvɪs mɛʃ ˌɪntərˈsɛpts ɔːl ˌɪntər ˈsɜːrvɪs kəˌmjuːnɪˈkeɪʃən/",
            focusSounds: ["sh", "m", "tr"],
            tip: "'Mesh' — the /ʃ/ is clear. 'Intercepts' — in-ter-CEPTS. au-then-ti-CA-tion — five syllables."
        ),
        Sentence(
            id: UUID(),
            text: "We conducted a well-architected framework review to identify gaps in our reliability and security posture, then ranked remediation efforts by risk score and estimated implementation complexity.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/wiː kənˈdʌktɪd ə wɛl ˈɑːrkɪtɛktɪd ˈfreɪmwɜːrk rɪˈvjuː tə aɪˈdɛntɪfaɪ ɡæps/",
            focusSounds: ["arch", "r", "im"],
            tip: "re-li-a-BIL-i-ty — six syllables. re-me-di-A-tion — five syllables. im-ple-men-TA-tion — six syllables."
        ),
        Sentence(
            id: UUID(),
            text: "Cost anomaly detection alerts fire when spending deviates more than two standard deviations from the projected baseline, triggering an automated investigation workflow that pages the on-call engineer.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/kɒst əˈnɒməli dɪˈtɛkʃən əˈlɜːrts faɪər wɛn ˈspɛndɪŋ ˈdiːvieɪts mɔːr ðæn tuː ˈstændərd/",
            focusSounds: ["an", "d", "st"],
            tip: "a-NOM-a-ly. de-vi-A-tions — four syllables. 'Projected' — pro-JECT-ed. in-ves-ti-GA-tion."
        ),
        Sentence(
            id: UUID(),
            text: "The immutable infrastructure pattern means we rebuild the entire machine image from source code on every deployment and shift traffic atomically via a blue-green cutover, eliminating configuration drift entirely.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ðiː ɪˈmjuːtəbl ˈɪnfrəˌstrʌktʃər ˈpætərn miːnz wiː ˌriːˈbɪld ðiː ɪnˈtaɪər məˈʃiːn ˈɪmɪdʒ/",
            focusSounds: ["im", "str", "at"],
            tip: "im-MU-ta-ble. IN-fra-struc-ture. a-TOM-i-cally — five syllables. 'Configuration' — con-fig-u-RA-tion."
        ),
        Sentence(
            id: UUID(),
            text: "We run weekly chaos engineering exercises in the staging environment, injecting controlled failures to verify that our resilience mechanisms — circuit breakers, retries, and bulkheads — behave exactly as documented.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/wiː rʌn ˈwiːkli ˈkeɪɒs ˌɛndʒɪˈnɪərɪŋ ˈɛksərsaɪzɪz ɪn ðə ˈsteɪdʒɪŋ ɪnˈvaɪrənmənt/",
            focusSounds: ["ch", "en", "r"],
            tip: "'Chaos' — KAY-os. en-gi-NEER-ing. re-SIL-ience. 'Bulkheads' — BULK-heads."
        ),
        Sentence(
            id: UUID(),
            text: "Zero-trust network architecture requires every service-to-service request to be independently authenticated and authorized, eliminating the implicit trust assumptions that perimeter-based security models depend on.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ˈzɪəroʊ trʌst ˈnɛtwɜːrk ˈɑːrkɪtɛktʃər rɪˈkwaɪərz ˈɛvri ˈsɜːrvɪs tə ˈsɜːrvɪs rɪˈkwɛst/",
            focusSounds: ["z", "arch", "aut"],
            tip: "ar-chi-TEC-ture. au-then-ti-CA-ted. im-PLIC-it. pe-RIM-e-ter. Four long words, four different stress points."
        ),
        Sentence(
            id: UUID(),
            text: "The event-driven architecture decouples producers from consumers through a durable message broker, allowing each microservice to scale independently and remain resilient against temporary downstream unavailability.",
            difficulty: .advanced, category: .dataAndAI,
            phonetics: "/ðiː ɪˈvɛnt ˈdrɪvən ˈɑːrkɪtɛktʃər diːˈkʌpəlz prəˈdjuːsərz frɒm kənˈsjuːmərz/",
            focusSounds: ["ev", "d", "r"],
            tip: "de-COUP-les. pro-DU-cers. MI-cro-ser-vice. un-a-vail-a-BIL-i-ty — seven syllables — take it slowly."
        ),
    ]
}
