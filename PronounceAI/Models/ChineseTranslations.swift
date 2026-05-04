import Foundation

struct ChineseEntry {
    let translation: String   // Simplified Chinese
    let pinyin: String        // Pinyin with tone marks
}

// Keyed by the exact Sentence.text value.
struct ChineseTranslations {

    static func entry(for text: String) -> ChineseEntry? { all[text] }

    // swiftlint:disable line_length
    static let all: [String: ChineseEntry] = [

        // MARK: Beginner · Everyday

        "The weather is nice today.":
            .init(translation: "今天天气真不错。",
                  pinyin: "Jīntiān tiānqì zhēn búcuò."),

        "Please pass the butter.":
            .init(translation: "请把黄油递给我。",
                  pinyin: "Qǐng bǎ huángyóu dì gěi wǒ."),

        "I would like a glass of water.":
            .init(translation: "我想要一杯水。",
                  pinyin: "Wǒ xiǎng yào yī bēi shuǐ."),

        "Can you help me, please?":
            .init(translation: "你能帮我一下吗？",
                  pinyin: "Nǐ néng bāng wǒ yīxià ma?"),

        "Good morning! How are you feeling today?":
            .init(translation: "早上好！今天感觉怎么样？",
                  pinyin: "Zǎoshang hǎo! Jīntiān gǎnjué zěnmeyàng?"),

        "Excuse me, could you repeat that more slowly?":
            .init(translation: "打扰一下，您能说慢一点吗？",
                  pinyin: "Dǎrǎo yīxià, nín néng shuō màn yīdiǎn ma?"),

        "I think the meeting starts at nine o'clock.":
            .init(translation: "我觉得会议九点开始。",
                  pinyin: "Wǒ juéde huìyì jiǔ diǎn kāishǐ."),

        "Sorry, I did not catch your name.":
            .init(translation: "抱歉，我没听清楚您的名字。",
                  pinyin: "Bàoqiàn, wǒ méi tīng qīngchǔ nín de míngzi."),

        "Could you please hold the door for me?":
            .init(translation: "能帮我扶一下门吗？",
                  pinyin: "Néng bāng wǒ fú yīxià mén ma?"),

        "I am really looking forward to the weekend.":
            .init(translation: "我真的很期待这个周末。",
                  pinyin: "Wǒ zhēnde hěn qīdài zhège zhōumò."),

        "My phone battery is almost dead.":
            .init(translation: "我手机快没电了。",
                  pinyin: "Wǒ shǒujī kuài méi diàn le."),

        "Let me know if you need anything else.":
            .init(translation: "如果还需要什么，请告诉我。",
                  pinyin: "Rúguǒ hái xūyào shénme, qǐng gàosù wǒ."),

        "Would you like to join us for coffee?":
            .init(translation: "你想和我们一起喝咖啡吗？",
                  pinyin: "Nǐ xiǎng hé wǒmen yīqǐ hē kāfēi ma?"),

        "I have an appointment at three in the afternoon.":
            .init(translation: "我下午三点有个预约。",
                  pinyin: "Wǒ xiàwǔ sān diǎn yǒu gè yùyuē."),

        "Do you mind if I open the window?":
            .init(translation: "我开一下窗，你介意吗？",
                  pinyin: "Wǒ kāi yīxià chuāng, nǐ jièyì ma?"),

        "Thank you for your patience and understanding.":
            .init(translation: "感谢您的耐心与理解。",
                  pinyin: "Gǎnxiè nín de nàixīn yǔ lǐjiě."),

        "It was nice talking to you. See you later!":
            .init(translation: "很高兴和你聊天，再见！",
                  pinyin: "Hěn gāoxìng hé nǐ liáotiān, zàijiàn!"),

        "The supermarket closes at ten o'clock.":
            .init(translation: "超市十点关门。",
                  pinyin: "Chāoshì shí diǎn guānmén."),

        // MARK: Beginner · Travel & Food

        "Where is the nearest station?":
            .init(translation: "最近的地铁站在哪里？",
                  pinyin: "Zuì jìn de dìtiě zhàn zài nǎlǐ?"),

        "I will have the soup, thank you.":
            .init(translation: "我要那个汤，谢谢。",
                  pinyin: "Wǒ yào nàgè tāng, xièxiè."),

        "Could I see the menu, please?":
            .init(translation: "可以给我看一下菜单吗？",
                  pinyin: "Kěyǐ gěi wǒ kàn yīxià càidān ma?"),

        "What time does the last train leave?":
            .init(translation: "最后一班火车几点发车？",
                  pinyin: "Zuìhòu yī bān huǒchē jǐ diǎn fā chē?"),

        "I would like a room with a view, please.":
            .init(translation: "我想要一间有风景的房间。",
                  pinyin: "Wǒ xiǎng yào yī jiān yǒu fēngjǐng de fángjiān."),

        "Is this seat taken?":
            .init(translation: "这个位子有人坐吗？",
                  pinyin: "Zhège wèizi yǒu rén zuò ma?"),

        "How far is it to the city center?":
            .init(translation: "到市中心有多远？",
                  pinyin: "Dào shì zhōngxīn yǒu duō yuǎn?"),

        "Can I pay by credit card?":
            .init(translation: "可以刷信用卡吗？",
                  pinyin: "Kěyǐ shuā xìnyòngkǎ ma?"),

        "The bill, please. We would like to pay separately.":
            .init(translation: "麻烦结账，我们分开付款。",
                  pinyin: "Máfan jié zhàng, wǒmen fēnkāi fùkuǎn."),

        // MARK: Intermediate · Everyday

        "I'm not sure I agree with that perspective.":
            .init(translation: "我不太确定自己同意那个观点。",
                  pinyin: "Wǒ bù tài quèdìng zìjǐ tóngyì nàgè guāndiǎn."),

        "Could we reschedule the appointment to Thursday?":
            .init(translation: "能把预约改到周四吗？",
                  pinyin: "Néng bǎ yùyuē gǎi dào zhōusì ma?"),

        "I have been really struggling with jet lag since I arrived.":
            .init(translation: "我到了之后一直被时差困扰。",
                  pinyin: "Wǒ dào le zhīhòu yīzhí bèi shíchā kùnrǎo."),

        "I completely forgot that today was her birthday.":
            .init(translation: "我完全忘了今天是她的生日。",
                  pinyin: "Wǒ wánquán wàng le jīntiān shì tā de shēngrì."),

        "Let's grab lunch together and catch up properly.":
            .init(translation: "我们一起去吃个午饭，好好叙叙旧吧。",
                  pinyin: "Wǒmen yīqǐ qù chī gè wǔfàn, hǎohǎo xùxù jiù ba."),

        "I really appreciate your help with that presentation.":
            .init(translation: "真的很感谢你帮我准备那个演示。",
                  pinyin: "Zhēnde hěn gǎnxiè nǐ bāng wǒ zhǔnbèi nàgè yǎnshì."),

        "We should probably leave early to avoid the traffic.":
            .init(translation: "我们最好早点出发，避开堵车。",
                  pinyin: "Wǒmen zuìhǎo zǎo diǎn chūfā, bìkāi dǔchē."),

        "She gave a very convincing argument about the new policy.":
            .init(translation: "她就新政策提出了非常有说服力的论点。",
                  pinyin: "Tā jiù xīn zhèngcè tíchū le fēicháng yǒu shuōfú lì de lùndiǎn."),

        "Do you think the weather will hold up over the long weekend?":
            .init(translation: "你觉得长假期间天气会一直好吗？",
                  pinyin: "Nǐ juéde cháng jiàqī jiān tiānqì huì yīzhí hǎo ma?"),

        "Honestly, I think we should just be more flexible about this.":
            .init(translation: "说实话，我觉得我们在这件事上应该更灵活一些。",
                  pinyin: "Shuō shíhuà, wǒ juéde wǒmen zài zhè jiàn shì shàng yīnggāi gèng línghuó yīxiē."),

        // MARK: Intermediate · Business

        "Corporate communication requires clear and concise language.":
            .init(translation: "企业沟通需要清晰简洁的语言表达。",
                  pinyin: "Qǐyè gōutōng xūyào qīngxī jiǎnjié de yǔyán biǎodá."),

        "The world's most valuable resource is not oil, but fresh water.":
            .init(translation: "世界上最宝贵的资源不是石油，而是淡水。",
                  pinyin: "Shìjiè shàng zuì bǎoguì de zīyuán búshì shíyóu, érshì dànshuǐ."),

        "I would like to schedule a follow-up call to discuss the proposal.":
            .init(translation: "我想安排一次跟进电话，讨论这份提案。",
                  pinyin: "Wǒ xiǎng ānpái yī cì gēnjìn diànhuà, tǎolùn zhè fèn tí'àn."),

        "We need to align all stakeholders before moving the project forward.":
            .init(translation: "在推进项目之前，我们需要让所有利益相关方达成共识。",
                  pinyin: "Zài tuījìn xiàngmù zhīqián, wǒmen xūyào ràng suǒyǒu lìyì xiāngguān fāng dáchéng gòngshí."),

        "Our quarterly revenue exceeded projections by fifteen percent.":
            .init(translation: "本季度营收超出预期百分之十五。",
                  pinyin: "Běn jìdù yíngsōu chāochū yùqī bǎifēnzhī shíwǔ."),

        "The right choice requires careful thought and precise reasoning.":
            .init(translation: "正确的选择需要深思熟虑和精确的推理。",
                  pinyin: "Zhèngquè de xuǎnzé xūyào shēnsī shúlǜ hé jīngquè de tuīlǐ."),

        // MARK: Advanced · General

        "The hypothesis was thoroughly scrutinized before the researchers reached a conclusion.":
            .init(translation: "研究人员在得出结论之前，对这一假说进行了彻底的审查。",
                  pinyin: "Yánjiū rényuán zài dé chū jiélùn zhīqián, duì zhè yī jiǎshuō jìnxíng le chèdǐ de shěnchá."),

        "The inexplicable phenomenon perplexed even the most experienced archaeologists.":
            .init(translation: "这一无法解释的现象令最有经验的考古学家也感到困惑。",
                  pinyin: "Zhè yī wúfǎ jiěshì de xiànxiàng lìng zuì yǒu jīngyàn de kǎogǔ xuéjiā yě gǎndào kùnhuò."),

        "Unprecedented technological advancements are fundamentally reshaping the global economic landscape.":
            .init(translation: "前所未有的技术进步正在从根本上重塑全球经济格局。",
                  pinyin: "Qiánsuǒwèiyǒu de jìshù jìnbù zhèngzài cóng gēnběn shàng chóngsù quánqiú jīngjì géjú."),

        "The pharmaceutical industry relies heavily on rigorous clinical trials to ensure efficacy and safety.":
            .init(translation: "制药行业高度依赖严格的临床试验来确保疗效和安全性。",
                  pinyin: "Zhìyào hángyè gāodù yīlài yángé de línchuáng shìyàn lái quèbǎo liáoxiào hé ānquán xìng."),

        // MARK: Workplace · Intermediate

        "Did you catch the all-hands meeting yesterday? I thought the CEO made some really interesting points about where we're heading.":
            .init(translation: "你参加昨天的全员大会了吗？我觉得CEO关于公司未来方向说了一些很有意思的话。",
                  pinyin: "Nǐ cānjiā zuótiān de quányuán dàhuì le ma? Wǒ juéde CEO guānyú gōngsī wèilái fāngxiàng shuō le yīxiē hěn yǒu yìsi de huà."),

        "I can't believe it's already Thursday. This week has absolutely flown by.":
            .init(translation: "真不敢相信已经周四了，这周过得也太快了。",
                  pinyin: "Zhēn bù gǎn xiāngxìn yǐjīng zhōusì le, zhè zhōu guò de yě tài kuài le."),

        "Are you heading to the team lunch today? I heard they're trying that new Thai place just down the street.":
            .init(translation: "你今天去参加团队午饭吗？听说他们要去街口那家新开的泰国餐厅。",
                  pinyin: "Nǐ jīntiān qù cānjiā tuánduì wǔfàn ma? Tīngshuō tāmen yào qù jiēkǒu nà jiā xīn kāi de tài guó cāntīng."),

        "I've been absolutely swamped with this project all week. I haven't even had time to check my emails properly.":
            .init(translation: "这周我完全被这个项目淹没了，连邮件都没时间好好看。",
                  pinyin: "Zhè zhōu wǒ wánquán bèi zhège xiàngmù yān méi le, lián yóujiàn dōu méi shíjiān hǎohǎo kàn."),

        "How did your presentation go? I know you were really nervous going in.":
            .init(translation: "你的演示进行得怎么样？我知道你当时很紧张。",
                  pinyin: "Nǐ de yǎnshì jìnxíng de zěnmeyàng? Wǒ zhīdào nǐ dāngshí hěn jǐnzhāng."),

        "We should probably sync up before the client call. Do you have fifteen minutes free this afternoon?":
            .init(translation: "在客户电话之前我们最好先对个齐。今天下午你有十五分钟空闲吗？",
                  pinyin: "Zài kèhù diànhuà zhīqián wǒmen zuìhǎo xiān duì gè qí. Jīntiān xiàwǔ nǐ yǒu shíwǔ fēnzhōng kòngxián ma?"),

        "I'm thinking of taking a few days off after this sprint. I really need to recharge my batteries.":
            .init(translation: "这个迭代结束后，我想请几天假好好充个电。",
                  pinyin: "Zhège diédài jiéshù hòu, wǒ xiǎng qǐng jǐ tiān jià hǎohǎo chōng gè diàn."),

        "Have you been introduced to the new hire yet? She seems really sharp and comes with a lot of experience.":
            .init(translation: "你认识新来的员工了吗？她看起来很厉害，经验也很丰富。",
                  pinyin: "Nǐ rènshi xīn lái de yuángōng le ma? Tā kàn qǐlái hěn lìhai, jīngyàn yě hěn fēngfù."),

        "The office is so quiet today. Half the team must be working from home.":
            .init(translation: "今天办公室好安静，一半的人肯定都在家办公。",
                  pinyin: "Jīntiān bàngōngshì hǎo ānjìng, yī bàn de rén kěndìng dōu zài jiā bàngōng."),

        "I stayed late yesterday trying to track down that bug, but I finally got it sorted this morning.":
            .init(translation: "昨天我加班到很晚找那个bug，今天早上总算解决了。",
                  pinyin: "Zuótiān wǒ jiābān dào hěn wǎn zhǎo nàgè bug, jīntiān zǎoshang zǒngsuàn jiějué le."),

        "What are you working on at the moment? It sounds like your team has been incredibly busy lately.":
            .init(translation: "你现在在做什么？听说你们团队最近超级忙。",
                  pinyin: "Nǐ xiànzài zài zuò shénme? Tīngshuō nǐmen tuánduì zuìjìn chāojí máng."),

        "I heard we might be getting new standing desks. It's about time — my back has been absolutely killing me.":
            .init(translation: "我听说我们可能要换新的升降桌了，早该换了，我背都快断了。",
                  pinyin: "Wǒ tīngshuō wǒmen kěnéng yào huàn xīn de shēngjiàng zhuō le, zǎo gāi huàn le, wǒ bèi dōu kuài duàn le."),

        "Did you manage to get through all your action items from last week's retrospective?":
            .init(translation: "你把上周回顾会议的待办事项都完成了吗？",
                  pinyin: "Nǐ bǎ shàng zhōu huígù huìyì de dàibàn shìxiàng dōu wánchéng le ma?"),

        "I just got out of a two-hour back-to-back and I am completely drained. I need at least ten minutes to decompress.":
            .init(translation: "我刚开完两个小时的连续会议，整个人都累垮了，需要至少十分钟缓缓。",
                  pinyin: "Wǒ gāng kāi wán liǎng gè xiǎoshí de liánxù huìyì, zhěnggè rén dōu lèi kuǎ le, xūyào zhìshǎo shí fēnzhōng huǎn huǎn."),

        "Happy Monday! How was your weekend? I finally managed to see that film everyone's been talking about.":
            .init(translation: "周一快乐！你周末过得怎么样？我终于去看了那部大家都在聊的电影。",
                  pinyin: "Zhōuyī kuàilè! Nǐ zhōumò guò de zěnmeyàng? Wǒ zhōngyú qù kàn le nà bù dàjiā dōu zài liáo de diànyǐng."),

        "We wrapped up the project ahead of schedule, which is always a great feeling. The client seemed really pleased with how everything turned out.":
            .init(translation: "我们提前完成了项目，这种感觉总是很棒。客户对最终结果似乎非常满意。",
                  pinyin: "Wǒmen tíqián wánchéng le xiàngmù, zhè zhǒng gǎnjué zǒngshì hěn bàng. Kèhù duì zuìzhōng jiéguǒ sìhū fēicháng mǎnyì."),

        "Could you cover for me at the stand-up tomorrow morning? I have a dentist appointment first thing.":
            .init(translation: "明天早上的站会你能帮我顶一下吗？我一早有个牙医预约。",
                  pinyin: "Míngtiān zǎoshang de zhàn huì nǐ néng bāng wǒ dǐng yīxià ma? Wǒ yī zǎo yǒu gè yáyī yùyuē."),

        "Is the Wi-Fi playing up for anyone else, or is it just my laptop acting up again?":
            .init(translation: "Wi-Fi是对大家都有问题，还是只有我的电脑又出毛病了？",
                  pinyin: "Wi-Fi shì duì dàjiā dōu yǒu wèntí, háishi zhǐyǒu wǒ de diànnǎo yòu chū máobìng le?"),

        "Did you hear that Sarah got promoted? She's been with the company for nearly four years — really well deserved.":
            .init(translation: "你听说Sarah升职了吗？她在公司快四年了，真的是实至名归。",
                  pinyin: "Nǐ tīngshuō Sarah shēngzhí le ma? Tā zài gōngsī kuài sì nián le, zhēnde shì shízhì-mínggūi."),

        "I feel like every meeting this week could have been an email. Anyone else getting that sense?":
            .init(translation: "我感觉这周每个会议都可以发封邮件解决，有人和我一样吗？",
                  pinyin: "Wǒ gǎnjué zhè zhōu měi gè huìyì dōu kěyǐ fā fēng yóujiàn jiějué, yǒu rén hé wǒ yīyàng ma?"),

        "The new project management tool is taking some getting used to, but I think once we're past the learning curve it'll be worth it.":
            .init(translation: "新的项目管理工具需要一些时间适应，但我觉得过了学习阶段就会很值得。",
                  pinyin: "Xīn de xiàngmù guǎnlǐ gōngjù xūyào yīxiē shíjiān shìyìng, dàn wǒ juéde guò le xuéxí jiēduàn jiù huì hěn zhídé."),

        "I've started blocking out deep-work time in my calendar each morning. Otherwise I end up in meetings all day and barely get anything done.":
            .init(translation: "我开始每天早上在日历里预留深度工作时间了，不然一天全是会议，什么都做不了。",
                  pinyin: "Wǒ kāishǐ měi tiān zǎoshang zài rìlì lǐ yùliú shēndù gōngzuò shíjiān le, bùrán yī tiān quán shì huìyì, shénme dōu zuò bù liǎo."),

        "Thanks for stepping in and handling that client escalation yesterday. That was a really stressful situation and you dealt with it brilliantly.":
            .init(translation: "谢谢你昨天出手处理那个客户升级问题。那个情况真的压力很大，你处理得非常出色。",
                  pinyin: "Xièxiè nǐ zuótiān chūshǒu chǔlǐ nàgè kèhù shēngjí wèntí. Nàgè qíngkuàng zhēnde yālì hěn dà, nǐ chǔlǐ de fēicháng chūsè."),

        "I think the sprint went better than expected overall, though we did hit a few blockers toward the very end.":
            .init(translation: "我觉得这次迭代整体上比预期要好，虽然最后阶段碰到了几个阻碍。",
                  pinyin: "Wǒ juéde zhè cì diédài zhěngtǐ shàng bǐ yùqī yào hǎo, suīrán zuìhòu jiēduàn pèng dào le jǐ gè zǔ'ài."),

        "I can't decide whether to take Friday off or just push through and start the long weekend with a clear conscience.":
            .init(translation: "我拿不定主意是周五请假还是撑过去，这样长周末开始的时候心里更踏实。",
                  pinyin: "Wǒ ná bù dìng zhǔyì shì zhōuwǔ qǐngjià háishi chēng guòqù, zhèyàng cháng zhōumò kāishǐ de shíhòu xīnlǐ gèng tāshi."),

        // Paragraph sentence from workplaceIntermediate
        "I just got out of a three-hour workshop and my brain is completely fried. On the plus side, we finally aligned on the product roadmap for the next two quarters. Now I just need about a week to recover.":
            .init(translation: "我刚刚结束了三小时的工作坊，整个大脑都烧了。好的方面是，我们终于就未来两个季度的产品路线图达成了一致。现在我需要大概一周来恢复。",
                  pinyin: "Wǒ gānggāng jiéshù le sān xiǎoshí de gōngzuò fāng, zhěnggè dànǎo dōu shāo le. Hǎo de fāngmiàn shì, wǒmen zhōngyú jiù wèilái liǎng gè jìdù de chǎnpǐn lùxiàntú dáchéng le yīzhì."),

        "We wrapped up the quarterly business review this morning and I think it went down pretty well. The numbers are looking strong, and leadership seemed genuinely impressed with the team's progress. Let's see if that translates into some additional headcount.":
            .init(translation: "我们今早结束了季度业务回顾，我觉得进展还不错。数据表现强劲，领导层对团队的进展似乎印象深刻。就看这能不能换来一些新的招聘名额了。",
                  pinyin: "Wǒmen jīn zǎo jiéshù le jìdù yèwù huígù, wǒ juéde jìnzhǎn hái búcuò. Shùjù biǎoxiàn qiángjìng, lǐngdǎo céng duì tuánduì de jìnzhǎn sìhū yìnxiàng shēnkè."),

        // MARK: Workplace · Advanced

        "I've been reflecting on what came out of yesterday's retro, and I genuinely believe we need to address the communication gaps between engineering and product before they start affecting delivery timelines.":
            .init(translation: "我一直在回想昨天回顾会的内容，我真心认为我们需要解决研发和产品之间的沟通断层，趁它还没影响到交付时间线。",
                  pinyin: "Wǒ yīzhí zài huíxiǎng zuótiān huígù huì de nèiróng, wǒ zhēnxīn rènwéi wǒmen xūyào jiějué yánfā hé chǎnpǐn zhījiān de gōutōng duàncéng."),

        "The feedback from my performance review was more constructive than I expected. It gave me a lot to think about in terms of where I want to take my career over the next couple of years.":
            .init(translation: "绩效评估的反馈比我预想的更具建设性，让我对未来两年的职业发展方向有了很多思考。",
                  pinyin: "Jìxiào pínggū de fǎnkuì bǐ wǒ yùxiǎng de gèng jù jiànshèxìng, ràng wǒ duì wèilái liǎng nián de zhíyè fāzhǎn fāngxiàng yǒu le hěnduō sīkǎo."),

        "It's becoming increasingly clear that we need a more structured approach to knowledge sharing across teams. Right now, too much institutional knowledge is locked inside people's heads.":
            .init(translation: "越来越明显，我们需要一种更系统化的跨团队知识共享方式。现在太多的机构知识都锁在大家的脑子里。",
                  pinyin: "Yuèláiyuè míngxiǎn, wǒmen xūyào yī zhǒng gèng xìtǒnghuà de kuà tuánduì zhīshì gòngxiǎng fāngshì."),

        "What struck me about the offsite was how candid the conversations were. There's clearly some underlying tension around resource allocation that hasn't been properly surfaced yet.":
            .init(translation: "这次外出会议让我印象深刻的是大家谈话的坦诚程度。明显可以感受到，资源分配方面存在一些潜在的紧张关系，还没有被正式提出来。",
                  pinyin: "Zhè cì wàichū huìyì ràng wǒ yìnxiàng shēnkè de shì dàjiā tánhuà de tǎnchéng chéngdù. Míngxiǎn kěyǐ gǎnshòu dào, zīyuán fēnpèi fāngmiàn cúnzài yīxiē qiánzài de jǐnzhāng guānxi."),

        "I wanted to check in with you about the roadmap priorities. Given the shifting business requirements, I'm not convinced our current trajectory still aligns with what leadership expects by end of quarter.":
            .init(translation: "我想和你确认一下路线图的优先级。考虑到业务需求的变化，我不确定我们目前的方向是否还符合领导层对本季度末的预期。",
                  pinyin: "Wǒ xiǎng hé nǐ quèrèn yīxià lùxiàntú de yōuxiānjí. Kǎolǜ dào yèwù xūqiú de biànhuà, wǒ bù quèdìng wǒmen mùqián de fāngxiàng shìfǒu hái fúhé lǐngdǎo céng de yùqī."),

        "I've noticed that team morale tends to dip noticeably during the weeks leading up to a major release. It might be worth exploring how we could build in more structured recovery time between cycles.":
            .init(translation: "我注意到，在重大发布前的几周，团队士气往往会明显下滑。也许值得探讨如何在迭代之间安排更有结构的恢复时间。",
                  pinyin: "Wǒ zhùyì dào, zài zhòngdà fābù qián de jǐ zhōu, tuánduì shìqì wǎngwǎng huì míngxiǎn xià huá."),

        "To be honest, I think the scope of the project was underestimated from the very beginning. By the time the real complexity became apparent, we were already too committed to course-correct meaningfully.":
            .init(translation: "说实话，我觉得这个项目的范围从一开始就被低估了。等到真正的复杂性显现出来，我们已经投入太深，难以做出实质性的调整。",
                  pinyin: "Shuō shíhuà, wǒ juéde zhège xiàngmù de fànwéi cóng yī kāishǐ jiù bèi dīgū le."),

        "The disconnect between what the sales team is promising clients and what engineering can realistically deliver within the current sprint capacity is becoming genuinely unsustainable.":
            .init(translation: "销售团队向客户承诺的内容与研发团队在当前迭代产能内实际能交付的内容之间的落差，正变得真正难以为继。",
                  pinyin: "Xiāoshòu tuánduì xiàng kèhù chéngnuò de nèiróng yǔ yánfā tuánduì shíjì néng jiāofù de nèiróng zhījiān de luòchā, zhèng biàn de zhēnzhèng nán yǐ wéijì."),

        "One thing I've found genuinely effective is protecting the first hour of the morning before Slack notifications start accumulating. It's the only reliable way I've managed to defend any meaningful flow state.":
            .init(translation: "我发现一个真正有效的方法，就是在Slack通知开始堆积之前，保护好早上的第一个小时。这是我能维持有意义的专注状态的唯一可靠方式。",
                  pinyin: "Wǒ fāxiàn yī gè zhēnzhèng yǒuxiào de fāngfǎ, jiùshì zài Slack tōngzhī kāishǐ duījī zhīqián, bǎohù hǎo zǎoshang de dì yī gè xiǎoshí."),

        "I would argue that onboarding is one of the highest-leverage investments we can make right now. Getting people productive quickly compounds in a way that's genuinely difficult to overstate.":
            .init(translation: "我认为，员工入职培训是我们目前能做的杠杆效益最高的投资之一。让人们快速上手的复利效应是怎么强调都不为过的。",
                  pinyin: "Wǒ rènwéi, yuángōng rùzhí péixùn shì wǒmen mùqián néng zuò de gǎngǎn xiàoyì zuì gāo de tóuzī zhī yī."),

        "I think one of the most underrated skills in this industry is the ability to communicate uncertainty clearly. It's far easier to project confidence than to say 'I don't know yet, but here's how I'm going to find out.' The latter is actually much harder and much more valuable.":
            .init(translation: "我认为这个行业中最被低估的技能之一，是清晰表达不确定性的能力。表现出自信远比说"我还不知道，但我会这样去搞清楚"容易得多。后者其实难得多，也更有价值。",
                  pinyin: "Wǒ rènwéi zhège hángyè zhōng zuì bèi dīgū de jìnéng zhī yī, shì qīngxī biǎodá bù quèdìng xìng de nénglì."),

        // MARK: Data & AI · Beginner

        "Can you run the query and send me the results?":
            .init(translation: "你能运行一下查询，然后把结果发给我吗？",
                  pinyin: "Nǐ néng yùnxíng yīxià cháxún, ránhòu bǎ jiéguǒ fā gěi wǒ ma?"),

        "The dataset has over one million rows.":
            .init(translation: "这个数据集有超过一百万条记录。",
                  pinyin: "Zhège shùjùjí yǒu chāoguò yī bǎi wàn tiáo jìlù."),

        "We need to clean the data before running the analysis.":
            .init(translation: "在进行分析之前，我们需要先清洗数据。",
                  pinyin: "Zài jìnxíng fēnxī zhīqián, wǒmen xūyào xiān qīngxǐ shùjù."),

        "The dashboard is loading slowly today.":
            .init(translation: "仪表板今天加载很慢。",
                  pinyin: "Yíbiǎobǎn jīntiān jiāzǎi hěn màn."),

        "Please update the report with this week's numbers.":
            .init(translation: "请用本周的数据更新报告。",
                  pinyin: "Qǐng yòng běn zhōu de shùjù gēngxīn bàogào."),

        "The algorithm processes thousands of records per second.":
            .init(translation: "该算法每秒能处理数千条记录。",
                  pinyin: "Gāi suànfǎ měi miǎo néng chǔlǐ shù qiān tiáo jìlù."),

        "Can you share your screen so I can see the output?":
            .init(translation: "你能共享屏幕，让我看看输出结果吗？",
                  pinyin: "Nǐ néng gòngxiǎng píngmù, ràng wǒ kàn kàn shūchū jiéguǒ ma?"),

        "The model predicted the wrong label for this example.":
            .init(translation: "模型对这个样本预测了错误的标签。",
                  pinyin: "Móxíng duì zhège yàngběn yùcè le cuòwù de biāoqiān."),

        "We are tracking three key performance indicators this quarter.":
            .init(translation: "本季度我们正在追踪三个关键绩效指标。",
                  pinyin: "Běn jìdù wǒmen zhèngzài zhuīzōng sān gè guānjiàn jìxiào zhǐbiāo."),

        "The pipeline failed during the overnight batch job.":
            .init(translation: "流水线在夜间批处理作业期间发生了故障。",
                  pinyin: "Liúshuǐxiàn zài yèjiān pī chǔlǐ zuòyè qījiān fāshēng le gùzhàng."),

        "Could you export this table to a CSV file?":
            .init(translation: "能把这张表导出成CSV文件吗？",
                  pinyin: "Néng bǎ zhè zhāng biǎo dǎochū chéng CSV wénjiàn ma?"),

        "I will schedule a meeting to go over the findings.":
            .init(translation: "我会安排一个会议来讨论这些发现。",
                  pinyin: "Wǒ huì ānpái yī gè huìyì lái tǎolùn zhèxiē fāxiàn."),

        "The API returned a four-hundred error on that request.":
            .init(translation: "那个请求API返回了400错误。",
                  pinyin: "Nàgè qǐngqiú API fǎnhuí le sìbǎi cuòwù."),

        "Please make sure the data is backed up before you migrate.":
            .init(translation: "迁移之前，请确保数据已经备份。",
                  pinyin: "Qiānyí zhīqián, qǐng quèbǎo shùjù yǐjīng bèifèn."),

        // MARK: Data & AI · Intermediate

        "We need to normalize the features before feeding them into the model.":
            .init(translation: "在将特征输入模型之前，我们需要先进行归一化处理。",
                  pinyin: "Zài jiāng tèzhēng shūrù móxíng zhīqián, wǒmen xūyào xiān jìnxíng guīyīhuà chǔlǐ."),

        "The confusion matrix shows our precision is high but recall is low.":
            .init(translation: "混淆矩阵显示我们的精确率很高，但召回率很低。",
                  pinyin: "Hùnxiáo jǔzhèn xiǎnshì wǒmen de jīngquè lǜ hěn gāo, dàn zhàohuí lǜ hěn dī."),

        "We ran an A/B test to validate the hypothesis before shipping the feature.":
            .init(translation: "在发布功能之前，我们进行了A/B测试来验证假设。",
                  pinyin: "Zài fābù gōngnéng zhīqián, wǒmen jìnxíng le A/B cèshì lái yànzhèng jiǎshè."),

        "The ETL pipeline extracts raw data, transforms it, and loads it into the warehouse.":
            .init(translation: "ETL流水线从源头提取原始数据，对其进行转换，然后加载到数据仓库中。",
                  pinyin: "ETL liúshuǐxiàn cóng yuántóu tíqǔ yuánshǐ shùjù, duì qí jìnxíng zhuǎnhuàn, ránhòu jiāzǎi dào shùjù cāngkù zhōng."),

        "The gradient descent algorithm minimizes the loss function iteratively.":
            .init(translation: "梯度下降算法通过迭代来最小化损失函数。",
                  pinyin: "Tīdù xiàjiàng suànfǎ tōngguò diédài lái zuìxiǎohuà sǔnshī hánshù."),

        "Our data governance framework ensures regulatory compliance across all datasets.":
            .init(translation: "我们的数据治理框架确保所有数据集符合监管要求。",
                  pinyin: "Wǒmen de shùjù zhìlǐ kuàngjià quèbǎo suǒyǒu shùjùjí fúhé jiānguǎn yāoqiú."),

        "I'll aggregate the sales data by region and visualize the distribution.":
            .init(translation: "我将按地区汇总销售数据，并对分布情况进行可视化。",
                  pinyin: "Wǒ jiāng àn dìqū huìzǒng xiāoshòu shùjù, bìng duì fēnbù qíngkuàng jìnxíng kěshìhuà."),

        "The latency spikes correlate with the batch inference jobs running in parallel.":
            .init(translation: "延迟峰值与并行运行的批量推理任务相关。",
                  pinyin: "Yánchí fēngzhí yǔ bìngxíng yùnxíng de pīliàng tuīlǐ rènwù xiāngguān."),

        "Can you write a SQL query to join the user table on the transaction ID?":
            .init(translation: "你能写一个SQL查询，通过交易ID关联用户表吗？",
                  pinyin: "Nǐ néng xiě yī gè SQL cháxún, tōngguò jiāoyì ID guānlián yònghù biǎo ma?"),

        "We should use cross-validation to prevent overfitting on the training set.":
            .init(translation: "我们应该使用交叉验证来防止模型在训练集上过拟合。",
                  pinyin: "Wǒmen yīnggāi shǐyòng jiāochā yànzhèng lái fángzhǐ móxíng zài xùnliàn jí shàng guò nǐhé."),

        "The schema was updated to include a foreign key constraint on the orders table.":
            .init(translation: "数据库结构已更新，在订单表上添加了外键约束。",
                  pinyin: "Shùjùkù jiégòu yǐ gēngxīn, zài dìngdān biǎo shàng tiānjiā le wàijiàn yuēshù."),

        "The model's accuracy improved by twelve percentage points after hyperparameter tuning.":
            .init(translation: "经过超参数调整后，模型准确率提升了十二个百分点。",
                  pinyin: "Jīngguò chāo cānshù tiáozhěng hòu, móxíng zhǔnquè lǜ tíshēng le shí'èr gè bǎifēndiǎn."),

        "We partitioned the table by date to improve query performance at scale.":
            .init(translation: "我们按日期对表进行了分区，以提升大规模查询性能。",
                  pinyin: "Wǒmen àn rìqī duì biǎo jìnxíng le fēnqū, yǐ tíshēng dà guīmó cháxún xìngnéng."),

        "The regression model showed a strong positive correlation between income and spending.":
            .init(translation: "回归模型显示收入与消费之间存在很强的正相关关系。",
                  pinyin: "Huíguī móxíng xiǎnshì shōurù yǔ xiāofèi zhījiān cúnzài hěn qiáng de zhèng xiānguān guānxi."),

        "I am going to refactor the ingestion script so it handles null values gracefully.":
            .init(translation: "我打算重构数据摄入脚本，使其能优雅地处理空值。",
                  pinyin: "Wǒ dǎsuàn chónggòu shùjù shèrù jiǎoběn, shǐ qí néng yōuyǎ de chǔlǐ kōngzhí."),

        // MARK: ETL · Intermediate

        "We run a full refresh every Sunday night and incremental loads throughout the week to keep the warehouse current.":
            .init(translation: "我们每周日晚上进行全量刷新，工作日进行增量加载，以保持数据仓库的最新状态。",
                  pinyin: "Wǒmen měi zhōurì wǎnshang jìnxíng quánliàng shuāxīn, gōngzuòrì jìnxíng zēngliàng jiāzǎi."),

        "The transformation step applies business logic to clean and standardize raw records before they land in the reporting layer.":
            .init(translation: "转换步骤应用业务逻辑，对原始记录进行清洗和标准化，然后再写入报告层。",
                  pinyin: "Zhuǎnhuàn bùzhòu yìngyòng yèwù luójí, duì yuánshǐ jìlù jìnxíng qīngxǐ hé biāozhǔnhuà."),

        "We need to add a deduplication step to the pipeline because we are getting duplicate records from the upstream source system.":
            .init(translation: "我们需要在流水线中增加去重步骤，因为上游源系统传来了重复记录。",
                  pinyin: "Wǒmen xūyào zài liúshuǐxiàn zhōng zēngjiā qùchóng bùzhòu, yīnwèi shàngyóu yuán xìtǒng chuán lái le chóngfù jìlù."),

        "The orchestration tool triggers each task in dependency order and fires an alert if any step exceeds its service-level agreement.":
            .init(translation: "编排工具按依赖顺序触发每个任务，如果任何步骤超过服务级别协议，就会发出警报。",
                  pinyin: "Biānpái gōngjù àn yīlài shùnxù chùfā měi gè rènwù, rúguǒ rènhé bùzhòu chāoguò SLA jiù huì fāchū jǐngbào."),

        "Data lineage tracking lets us trace exactly which source records contributed to a given downstream metric.":
            .init(translation: "数据血缘追踪让我们能够精确溯源，找出哪些源记录贡献了特定的下游指标。",
                  pinyin: "Shùjù xuèyuán zhuīzōng ràng wǒmen nénggòu jīngquè sùyuán, zhǎochū nǎxiē yuán jìlù gòngxiàn le tèdìng de xiàyóu zhǐbiāo."),

        "We use a watermark column on the source table to identify rows modified since the last successful extraction run.":
            .init(translation: "我们在源表上使用水位线列，来识别自上次成功提取以来被修改的行。",
                  pinyin: "Wǒmen zài yuán biǎo shàng shǐyòng shuǐwèi xiàn liè, lái shíbié zì shàng cì chénggōng tíqǔ yǐlái bèi xiūgǎi de háng."),

        "The staging layer acts as a buffer between the raw ingestion zone and the curated data marts further downstream.":
            .init(translation: "暂存层充当原始摄入区与下游精选数据集市之间的缓冲区。",
                  pinyin: "Zànchún céng chōngdāng yuánshǐ shèrù qū yǔ xiàyóu jīngxuǎn shùjù jíshì zhījiān de huǎnchōng qū."),

        "Schema drift in the source system caused the pipeline to fail silently, so we added schema validation at the ingestion boundary.":
            .init(translation: "源系统中的模式漂移导致流水线静默失败，因此我们在摄入边界增加了模式校验。",
                  pinyin: "Yuán xìtǒng zhōng de móshì piāoyí dǎozhì liúshuǐxiàn jìngmò shībài, yīncǐ wǒmen zài shèrù biānjiè zēngjiā le móshì jiàoyàn."),

        "We are migrating our batch jobs to a streaming architecture to cut end-to-end data latency from hours down to minutes.":
            .init(translation: "我们正在将批处理作业迁移到流式架构，将端到端数据延迟从小时级缩短到分钟级。",
                  pinyin: "Wǒmen zhèngzài jiāng pī chǔlǐ zuòyè qiānyí dào liúshì jiàgòu, jiāng duān dào duān shùjù yánchí suōduǎn."),

        "Before loading into production, every record is validated against a set of expectation rules to catch anomalies before they propagate downstream.":
            .init(translation: "在加载到生产环境之前，每条记录都会按照一套预期规则进行校验，以便在异常向下游传播之前捕获它们。",
                  pinyin: "Zài jiāzǎi dào shēngchǎn huánjìng zhīqián, měi tiáo jìlù dōu huì àn yào yītào yùqī guīzé jìnxíng jiàoyàn."),

        // MARK: Cloud · Intermediate

        "We deployed the application across multiple availability zones to ensure high availability and minimize the impact of any single point of failure.":
            .init(translation: "我们将应用部署到多个可用区，以确保高可用性并将单点故障的影响降至最低。",
                  pinyin: "Wǒmen jiāng yìngyòng bùshǔ dào duō gè kěyòng qū, yǐ quèbǎo gāo kě yòngxìng bìng jiāng dān diǎn gùzhàng de yǐngxiǎng jiàng zhì zuìdī."),

        "The auto-scaling group adjusts the number of instances based on CPU utilization, scaling out during peak hours and scaling back in overnight.":
            .init(translation: "自动扩展组根据CPU使用率调整实例数量，高峰期扩容，夜间缩容。",
                  pinyin: "Zìdòng kuòzhǎn zǔ gēnjù CPU shǐyòng lǜ tiáozhěng shílì shùliàng, gāofēng qī kuòróng, yèjiān suōróng."),

        "We store all raw data in object storage and only pull it into the compute cluster on demand, when a query actually needs it.":
            .init(translation: "我们将所有原始数据存储在对象存储中，仅在查询真正需要时才按需拉取到计算集群。",
                  pinyin: "Wǒmen jiāng suǒyǒu yuánshǐ shùjù cúnchǔ zài duìxiàng cúnchǔ zhōng, jǐn zài cháxún zhēnzhèng xūyào shí cái ànxū lāqǔ dào jìsuàn jíqún."),

        "The managed Kubernetes service handles control plane upgrades automatically, which significantly reduces our operational overhead.":
            .init(translation: "托管Kubernetes服务自动处理控制平面升级，大幅降低了我们的运维开销。",
                  pinyin: "Tuōguǎn Kubernetes fúwù zìdòng chǔlǐ kòngzhì píngmiàn shēngjí, dàfú jiàngdī le wǒmen de yùnwéi kāixiāo."),

        "We provision all cloud resources using infrastructure-as-code, which means every environment is reproducible, auditable, and tracked in version control.":
            .init(translation: "我们使用基础设施即代码来配置所有云资源，这意味着每个环境都是可复现、可审计且受版本控制的。",
                  pinyin: "Wǒmen shǐyòng jīchǔ shèshī jí dàimǎ lái pèizhì suǒyǒu yún zīyuán, zhè yìwèi zhe měi gè huánjìng dōu shì kě fùxiàn de."),

        "The cloud cost report revealed that our biggest expense was cross-region data transfer fees, not the compute instances themselves.":
            .init(translation: "云成本报告显示，我们最大的开支是跨区域数据传输费，而非计算实例本身。",
                  pinyin: "Yún chéngběn bàogào xiǎnshì, wǒmen zuìdà de kāizhī shì kuà qūyù shùjù chuánsū fèi, ér fēi jìsuàn shílì běnshēn."),

        "The serverless function's cold start latency was adding too much overhead, so we switched to provisioned concurrency for latency-sensitive endpoints.":
            .init(translation: "无服务器函数的冷启动延迟带来了过多开销，因此我们对延迟敏感的端点改用了预置并发。",
                  pinyin: "Wú fúwùqì hánshù de lěng qǐdòng yánchí dài lái le guòduō kāixiāo, yīncǐ wǒmen duì yánchí mǐngǎn de duān diǎn gǎiyòng le yùzhì bìngfā."),

        // MARK: Neuroscience · Intermediate

        "The hippocampus plays a central role in converting short-term memories into long-term ones through a process called memory consolidation.":
            .init(translation: "海马体在将短期记忆转化为长期记忆的过程（即记忆固化）中起着核心作用。",
                  pinyin: "Hǎimǎtǐ zài jiāng duǎnqī jìyì zhuǎnhuà wéi chángqī jìyì de guòchéng zhōng qǐ zhe héxīn zuòyòng."),

        "When a neuron fires repeatedly along the same pathway, the synaptic connection it uses becomes stronger — a principle described by the phrase: neurons that fire together wire together.":
            .init(translation: "当神经元反复沿同一路径激发时，所用的突触连接会变得更强——这一原理被描述为：共同激发的神经元，共同连接。",
                  pinyin: "Dāng shénjīngyuán fǎnfù yán tóng yī lùjìng jīfā shí, suǒyòng de tūchù liánjiē huì biàn de gèng qiáng."),

        "The prefrontal cortex is responsible for executive functions such as planning, decision-making, working memory, and the regulation of impulsive behavior.":
            .init(translation: "前额叶皮质负责执行功能，包括计划、决策、工作记忆以及对冲动行为的调节。",
                  pinyin: "Qián'é yè pí zhì fùzé zhíxíng gōngnéng, bāokuò jìhuà, juécè, gōngzuò jìyì yǐjí duì chōngdòng xíngwéi de tiáojié."),

        "Neuroplasticity refers to the brain's remarkable ability to reorganize itself by forming new synaptic connections throughout life in response to experience or injury.":
            .init(translation: "神经可塑性是指大脑在一生中通过形成新的突触连接来重组自身的非凡能力，这种重组是对经验或损伤的响应。",
                  pinyin: "Shénjīng kěsùxìng shì zhǐ dànǎo zài yīshēng zhōng tōngguò xíngchéng xīn de tūchù liánjiē lái chóngzǔ zìshēn de fēifán nénglì."),

        "Dopamine is released in the brain's reward circuitry when we anticipate or receive a pleasurable outcome, reinforcing the behavior that preceded it.":
            .init(translation: "当我们预期或获得愉悦结果时，大脑奖励回路会释放多巴胺，强化产生该结果的行为。",
                  pinyin: "Dāng wǒmen yùqī huò huòdé yúyuè jiéguǒ shí, dànǎo jiǎnglì huílù huì shìfàng duōbāmíng, qiánghuà chǎnshēng gāi jiéguǒ de xíngwéi."),

        "During slow-wave sleep, the brain replays experiences from the day and transfers them from the hippocampus to the neocortex for long-term storage.":
            .init(translation: "在慢波睡眠期间，大脑会回放当天的经历，并将其从海马体转移到新皮质进行长期储存。",
                  pinyin: "Zài màn bō shuìmián qījiān, dànǎo huì huífàng dāngtiān de jīnglì, bìng jiāng qí cóng hǎimǎtǐ zhuǎnyí dào xīn pí zhì jìnxíng chánggī chǔcún."),

        "The amygdala detects emotionally significant stimuli — especially potential threats — and coordinates the body's rapid fight-or-flight response through the autonomic nervous system.":
            .init(translation: "杏仁核检测到具有情绪意义的刺激——尤其是潜在威胁——并通过自主神经系统协调身体的快速战斗或逃跑反应。",
                  pinyin: "Xìngrénhé jiǎncè dào jùyǒu qíngxù yìyì de cìjī, bìng tōngguò zìzhǔ shénjīng xìtǒng xiétiáo shēntǐ de zhàndòu huò táopǎo fǎnyìng."),

        "The default mode network is most active when we are not focused on the external world — during mind-wandering, autobiographical memory retrieval, and imagining future scenarios.":
            .init(translation: "默认模式网络在我们不专注于外部世界时最为活跃——即思维游荡、提取自传体记忆以及想象未来场景时。",
                  pinyin: "Mòrèn móshì wǎngluò zài wǒmen bù zhuānzhù yú wàibù shìjiè shí zuìwéi huóyuè."),

        "Neurotransmitters are chemical messengers that travel across the synaptic cleft and bind to receptors on the postsynaptic membrane to excite or inhibit the receiving neuron.":
            .init(translation: "神经递质是化学信使，穿越突触间隙，与突触后膜上的受体结合，从而兴奋或抑制接收神经元。",
                  pinyin: "Shénjīng dìzhì shì huàxué xìnshǐ, chuānyuè tūchù jiànxì, yǔ tūchù hòu mó shàng de shòutǐ jiéhé."),

        // MARK: Neuroscience · Advanced

        "The dysregulation of dopaminergic and serotonergic signaling pathways within the mesolimbic system is implicated in the pathophysiology of schizophrenia, depression, and bipolar disorder.":
            .init(translation: "中脑边缘系统中多巴胺能和血清素能信号通路的失调，与精神分裂症、抑郁症和双相情感障碍的病理生理机制有关。",
                  pinyin: "Zhōngnǎo biānyuán xìtǒng zhōng duōbāmíng néng hé xuèqīngsù néng xìnhào tōnglù de shītiáo, yǔ jīngshén fēnliè zhèng, yìyù zhèng de bìnglǐ shēnglǐ jīzhì yǒuguān."),

        "The strength of connectivity between the prefrontal cortex and the amygdala is believed to underlie top-down emotional regulation, a capacity that is measurably reduced in individuals with post-traumatic stress disorder.":
            .init(translation: "前额叶皮质与杏仁核之间的连接强度，被认为是自上而下情绪调节的基础——这种能力在创伤后应激障碍患者中可测量地降低。",
                  pinyin: "Qián'é yè pí zhì yǔ xìngrénhé zhījiān de liánjiē qiángdù, bèi rènwéi shì qíngxù tiáojié de jīchǔ."),

        "The gut-brain axis describes the bidirectional communication network linking the enteric nervous system and the central nervous system, mediated in part through vagal afferent signaling and the composition of the gut microbiome.":
            .init(translation: "肠-脑轴描述了连接肠道神经系统与中枢神经系统的双向通信网络，部分由迷走神经传入信号及肠道微生物组的组成介导。",
                  pinyin: "Cháng-nǎo zhóu miáoshù le liánjiē cháng dào shénjīng xìtǒng yǔ zhōngshū shénjīng xìtǒng de shuāngxiàng tōngxìn wǎngluò."),

        // MARK: Small Talk · Beginner

        "How was your weekend?":
            .init(translation: "你周末过得怎么样？",
                  pinyin: "Nǐ zhōumò guò de zěnme yàng?"),

        "Do you have any plans for the holiday?":
            .init(translation: "你假期有什么计划吗？",
                  pinyin: "Nǐ jiàqī yǒu shénme jìhuà ma?"),

        "Have you tried the new café around the corner?":
            .init(translation: "你试过转角那家新咖啡馆了吗？",
                  pinyin: "Nǐ shìguò zhuǎnjiǎo nà jiā xīn kāfēiguǎn le ma?"),

        "I can't believe how fast this year is going.":
            .init(translation: "真不敢相信这一年过得这么快。",
                  pinyin: "Zhēn bù gǎn xiāngxìn zhè yī nián guò de zhème kuài."),

        "Are you watching anything good on TV lately?":
            .init(translation: "你最近在看什么好看的节目吗？",
                  pinyin: "Nǐ zuìjìn zài kàn shénme hǎokàn de jiémù ma?"),

        "What do you usually do in your free time?":
            .init(translation: "你平时空闲时间一般做什么？",
                  pinyin: "Nǐ píngshí kòngxián shíjiān yībān zuò shénme?"),

        "I've been trying to get into running lately.":
            .init(translation: "我最近一直在尝试养成跑步的习惯。",
                  pinyin: "Wǒ zuìjìn yīzhí zài chángshì yǎngchéng pǎobù de xíguàn."),

        "It's been so busy at work this week.":
            .init(translation: "这周工作实在太忙了。",
                  pinyin: "Zhè zhōu gōngzuò shízài tài máng le."),

        "Have you been to any good restaurants recently?":
            .init(translation: "你最近去过什么好吃的餐厅吗？",
                  pinyin: "Nǐ zuìjìn qùguò shénme hǎochī de cāntīng ma?"),

        "I'm really looking forward to the long weekend.":
            .init(translation: "我真的很期待这个长周末。",
                  pinyin: "Wǒ zhēn de hěn qīdài zhège cháng zhōumò."),

        "The traffic was terrible this morning.":
            .init(translation: "今天早上交通太糟糕了。",
                  pinyin: "Jīntiān zǎoshang jiāotōng tài zāogāo le."),

        "Did you catch the game last night?":
            .init(translation: "你昨晚看比赛了吗？",
                  pinyin: "Nǐ zuówǎn kàn bǐsài le ma?"),

        "I love that coffee shop — the atmosphere is so cozy.":
            .init(translation: "我很喜欢那家咖啡馆——氛围太温馨了。",
                  pinyin: "Wǒ hěn xǐhuān nà jiā kāfēiguǎn — fēnwéi tài wēnxīn le."),

        "Are you from around here originally?":
            .init(translation: "你是这附近本地人吗？",
                  pinyin: "Nǐ shì zhè fùjìn běndì rén ma?"),

        "We should grab lunch sometime soon.":
            .init(translation: "我们找个时间一起吃个午饭吧。",
                  pinyin: "Wǒmen zhǎo gè shíjiān yīqǐ chī gè wǔfàn ba."),

        // MARK: Small Talk · Intermediate

        "I've been meaning to try that new place downtown — have you heard anything about it?":
            .init(translation: "我一直想去市中心那家新开的餐厅——你听说过什么吗？",
                  pinyin: "Wǒ yīzhí xiǎng qù shì zhōngxīn nà jiā xīn kāi de cāntīng — nǐ tīngshuō guò shénme ma?"),

        "Honestly, working from home has completely changed my routine.":
            .init(translation: "说真的，在家工作完全改变了我的日常节奏。",
                  pinyin: "Shuō zhēn de, zài jiā gōngzuò wánquán gǎibiàn le wǒ de rìcháng jiézòu."),

        "I signed up for a cooking class last month and I've been absolutely hooked.":
            .init(translation: "上个月我报了个烹饪班，从此一发不可收拾。",
                  pinyin: "Shàng gè yuè wǒ bào le gè pēngrèn bān, cóngcǐ yī fā bù kě shōu shí."),

        "I've been trying to cut back on coffee, but it's easier said than done.":
            .init(translation: "我一直在尝试减少喝咖啡，但说起来容易做起来难。",
                  pinyin: "Wǒ yīzhí zài chángshì jiǎnshǎo hē kāfēi, dàn shuō qǐlái róngyì zuò qǐlái nán."),

        "My commute has been brutal lately — they've been doing roadwork on every major street.":
            .init(translation: "我最近的通勤实在太痛苦了——每条主干道都在施工。",
                  pinyin: "Wǒ zuìjìn de tōngqín shízài tài tòngkǔ le — měi tiáo zhǔ gàn dào dōu zài shīgōng."),

        "I've been getting back into reading — turns out I'd forgotten how much I enjoyed it.":
            .init(translation: "我最近重新开始读书了——没想到我有多喜欢它，居然都忘了。",
                  pinyin: "Wǒ zuìjìn chóngxīn kāishǐ dúshū le — méi xiǎngdào wǒ yǒu duō xǐhuān tā, jūrán dōu wàng le."),

        "We ended up staying in last weekend and it was honestly exactly what we needed.":
            .init(translation: "上周末我们最后待在家里，说真的，这正是我们需要的。",
                  pinyin: "Shàng zhōumò wǒmen zuìhòu dāi zài jiāli, shuō zhēn de, zhè zhèng shì wǒmen xūyào de."),

        "Have you noticed prices going up everywhere? Even groceries are getting expensive.":
            .init(translation: "你有没有发现到处都在涨价？连日常杂货都越来越贵了。",
                  pinyin: "Nǐ yǒu méiyǒu fāxiàn dàochù dōu zài zhǎngjià? Lián rìcháng záhuò dōu yuè lái yuè guì le."),

        "I finally finished that series everyone was talking about — the ending was a bit disappointing.":
            .init(translation: "我终于看完了那部大家都在谈的剧——结局有点让人失望。",
                  pinyin: "Wǒ zhōngyú kànwán le nà bù dàjiā dōu zài tán de jù — jiéjú yǒudiǎn ràng rén shīwàng."),

        "I'm trying to get back into a gym routine, but finding the motivation after work is rough.":
            .init(translation: "我在努力恢复去健身房的习惯，但下班后找到动力真的很难。",
                  pinyin: "Wǒ zài nǔlì huīfù qù jiànshēnfáng de xíguàn, dàn xiàbān hòu zhǎodào dònglì zhēn de hěn nán."),

        "We're planning a short trip for the summer — nothing too ambitious, just somewhere to unwind.":
            .init(translation: "我们在计划夏天去短途旅行——不求多宏大，就是找个地方放松一下。",
                  pinyin: "Wǒmen zài jìhuà xiàtiān qù duǎntú lǚxíng — bù qiú duō hóngdà, jiù shì zhǎo gè dìfāng fàngsōng yīxià."),

        "I've been trying to cook more at home instead of ordering in every night.":
            .init(translation: "我一直在尝试多在家做饭，而不是每晚都叫外卖。",
                  pinyin: "Wǒ yīzhí zài chángshì duō zài jiā zuòfàn, ér bú shì měi wǎn dōu jiào wàimài."),

        "The office has been so quiet since they moved to the hybrid schedule.":
            .init(translation: "自从改成混合办公模式后，办公室就安静多了。",
                  pinyin: "Zìcóng gǎichéng hùnhé bàngōng móshì hòu, bàngōngshì jiù ānjìng duō le."),

        "I ran into someone from college the other day and barely recognized them.":
            .init(translation: "前几天我偶遇了一个大学同学，差点认不出来。",
                  pinyin: "Qián jǐ tiān wǒ ǒuyù le yī gè dàxué tóngxué, chàdiǎn rèn bù chūlái."),

        "I've been thinking about picking up a new hobby — maybe something creative like pottery or painting.":
            .init(translation: "我一直在想培养一个新爱好——也许是陶艺或绘画这类有创意的东西。",
                  pinyin: "Wǒ yīzhí zài xiǎng péiyǎng yī gè xīn àihào — yěxǔ shì táoyì huò huìhuà zhèi lèi yǒu chuàngyì de dōngxi."),

        "The weather has been all over the place this week — yesterday felt like winter, today like summer.":
            .init(translation: "这周天气真是忽冷忽热——昨天像冬天，今天又像夏天。",
                  pinyin: "Zhè zhōu tiānqì zhēn shì hū lěng hū rè — zuótiān xiàng dōngtiān, jīntiān yòu xiàng xiàtiān."),

        "My neighbor just got a dog and it wakes me up barking at three in the morning.":
            .init(translation: "我邻居刚养了条狗，每天凌晨三点叫得我睡不着觉。",
                  pinyin: "Wǒ línjū gāng yǎng le tiáo gǒu, měitiān língchén sān diǎn jiào de wǒ shuì bù zháo jiào."),

        "Did you see the news about the development they're planning near the park?":
            .init(translation: "你看到关于公园附近那个规划开发项目的新闻了吗？",
                  pinyin: "Nǐ kàndào guānyú gōngyuán fùjìn nà gè guīhuà kāifā xiàngmù de xīnwén le ma?"),

        "I feel like everyone I know is either getting married or having kids right now.":
            .init(translation: "我感觉身边认识的人，要么在结婚，要么在生孩子。",
                  pinyin: "Wǒ gǎnjué shēnbiān rènshí de rén, yào me zài jiéhūn, yào me zài shēng háizi."),

        "I finally cleaned out my closet this weekend — it's amazing how much stuff you accumulate.":
            .init(translation: "这周末我终于整理了衣柜——没想到自己积攒了这么多东西。",
                  pinyin: "Zhè zhōumò wǒ zhōngyú zhěnglǐ le yīguì — méi xiǎngdào zìjǐ jīzǎn le zhème duō dōngxi."),

        // MARK: Small Talk · Advanced

        "I've been reflecting lately on how differently I spend my time compared to five years ago — priorities really do shift when you least expect them to.":
            .init(translation: "我最近在反思，与五年前相比，我现在分配时间的方式截然不同——优先级真的会在你最意想不到的时候悄然改变。",
                  pinyin: "Wǒ zuìjìn zài fǎnsī, yǔ wǔ nián qián xiāngbǐ, wǒ xiànzài fēnpèi shíjiān de fāngshì jiérán bùtóng."),

        "There's something oddly satisfying about finally tackling a task you've been putting off for months.":
            .init(translation: "终于去做那件拖了好几个月的事，有一种说不清的满足感。",
                  pinyin: "Zhōngyú qù zuò nà jiàn tuō le hǎo jǐ gè yuè de shì, yǒu yī zhǒng shuō bù qīng de mǎnzúgǎn."),

        "I think our relationship with social media has fundamentally changed — most people I know are consciously scaling back.":
            .init(translation: "我认为我们与社交媒体的关系已经从根本上改变了——我认识的大多数人都在有意识地减少使用。",
                  pinyin: "Wǒ rènwéi wǒmen yǔ shèjiāo méitǐ de guānxi yǐjīng cóng gēnběn shàng gǎibiàn le."),

        "It's interesting how remote work affected people so differently — for some it was liberating, for others it was genuinely isolating.":
            .init(translation: "有意思的是，远程工作对不同人的影响截然不同——有人觉得如释重负，有人却真的感到孤立无援。",
                  pinyin: "Yǒu yìsi de shì, yuǎnchéng gōngzuò duì bùtóng rén de yǐngxiǎng jiérán bùtóng."),

        "I've started being much more intentional about who I spend time with — you realize energy is finite and that clarity comes with age.":
            .init(translation: "我开始更有意识地选择与谁共度时光——你会慢慢意识到精力是有限的，这种清醒随着年龄而来。",
                  pinyin: "Wǒ kāishǐ gèng yǒu yìshí de xuǎnzé yǔ shuí gòngdù shíguāng — nǐ huì màn màn yìshí dào jīnglì shì yǒuxiàn de."),

        "There's a real tension between wanting to stay informed and recognizing when the news is just adding to your anxiety.":
            .init(translation: "想保持了解时事，与意识到新闻只是在加剧焦虑之间，存在真实的张力。",
                  pinyin: "Xiǎng bǎochí liǎojiě shíshì, yǔ yìshí dào xīnwén zhǐshì zài jiājù jiāolǜ zhījiān, cúnzài zhēnshí de zhānglì."),

        "I find it fascinating how food trends cycle back — everything considered old-fashioned eventually gets rebranded as artisanal.":
            .init(translation: "我觉得食品潮流的轮回很有意思——所有被视为过时的东西，最终都会被重新包装成手工艺品。",
                  pinyin: "Wǒ juéde shípǐn cháoliú de lúnhuí hěn yǒu yìsi — suǒyǒu bèi shì wéi guòshí de dōngxi, zuìzhōng dōu huì bèi chóngxīn bāozhuāng."),

        "The more I travel, the more I appreciate coming back to somewhere familiar — there's a kind of comfort in the ordinary.":
            .init(translation: "走的地方越多，我越珍惜回到熟悉的地方——平凡之中自有一种安慰。",
                  pinyin: "Zǒu de dìfāng yuè duō, wǒ yuè zhēnxī huídào shúxī de dìfāng — píngfán zhī zhōng zì yǒu yī zhǒng ānwèi."),

        "I've been thinking about the relationship between routine and creativity — too much structure and you feel stifled, too little and nothing gets done.":
            .init(translation: "我一直在思考日常规律与创造力之间的关系——规矩太多会让人感到压抑，太少则什么都做不成。",
                  pinyin: "Wǒ yīzhí zài sīkǎo rìcháng guīlǜ yǔ chuànglì zhījiān de guānxi — guīju tài duō huì ràng rén gǎndào yāyì, tài shǎo zé shénme dōu zuò bu chéng."),

        "Getting consistent sleep has made more of a difference to how I feel than any supplement or wellness routine I've tried.":
            .init(translation: "保持规律睡眠对我的感受改善，比我尝试过的任何补剂或健康方法都更有效。",
                  pinyin: "Bǎochí guīlǜ shuìmián duì wǒ de gǎnshòu gǎishàn, bǐ wǒ chángshì guò de rènhé bǔjì huò jiànkāng fāngfǎ dōu gèng yǒuxiào."),

        "It's genuinely hard to maintain close friendships as an adult — everyone's pulled in different directions and you have to be quite deliberate about it.":
            .init(translation: "成年后维持亲密的友谊真的很难——每个人都被生活拉往不同方向，你必须刻意去经营。",
                  pinyin: "Chéngnián hòu wéichí qīnmì de yǒuyì zhēn de hěn nán — měi gè rén dōu bèi shēnghuó lā wǎng bùtóng fāngxiàng."),

        "I've become pretty skeptical of productivity content — most of it just repackages common sense and sells it as a system.":
            .init(translation: "我对效率类内容越来越持怀疑态度——大多数不过是把常识重新包装，再作为一套体系来兜售。",
                  pinyin: "Wǒ duì xiàolǜ lèi nèiróng yuè lái yuè chí huáiyí tàidu — dàduōshù bùguò shì bǎ chángsí chóngxīn bāozhuāng."),

        "The concept of work-life balance feels increasingly outdated — integration seems more realistic, even if the line is harder to draw.":
            .init(translation: "工作与生活平衡的概念感觉越来越过时了——融合似乎更现实，尽管界限更难划清。",
                  pinyin: "Gōngzuò yǔ shēnghuó pínghéng de gàiniàn gǎnjué yuè lái yuè guòshí le — rónghé sìhū gèng xiànshí, jǐnguǎn jièxiàn gèng nán huā qīng."),

        "I think a lot about the cost of convenience — every subscription, every delivery, every shortcut has a tradeoff we've quietly normalized.":
            .init(translation: "我经常思考便利的代价——每一项订阅、每一次外卖、每一个捷径，都有我们悄然接受了的代价。",
                  pinyin: "Wǒ jīngcháng sīkǎo biànlì de dàijià — měi yī xiàng dìngyuè, měi yī cì wàimài, měi yī gè jiéjìng, dōu yǒu wǒmen qiǎorán jiēshòu le de dàijià."),

        "There's a kind of mental overhead that comes from having too many unfinished threads — projects started, messages unread, decisions deferred — that quietly drains you.":
            .init(translation: "未竟之事太多——启动了的项目、未读的消息、搁置的决定——会带来一种无形的心理负担，悄悄消耗着你。",
                  pinyin: "Wèijìng zhī shì tài duō — qǐdòng le de xiàngmù, wèi dú de xiāoxi, gēzhì de juédìng — huì dàilái yī zhǒng wúxíng de xīnlǐ fùdān."),

    ] // swiftlint:enable line_length
}
