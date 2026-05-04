import Foundation

struct WordTranslations {

    static func meaning(for word: String) -> String? {
        let key = word.lowercased().trimmingCharacters(in: .punctuationCharacters)
        return all[key]
    }

    // English (lowercase) → Simplified Chinese
    // swiftlint:disable line_length
    static let all: [String: String] = [

        // MARK: Weather & Environment
        "weather": "天气", "temperature": "温度", "sunny": "晴天", "rainy": "下雨",
        "cloudy": "多云", "cold": "冷", "hot": "热", "warm": "暖和",
        "winter": "冬天", "summer": "夏天", "spring": "春天", "autumn": "秋天",

        // MARK: Time
        "morning": "早上", "afternoon": "下午", "evening": "傍晚", "night": "夜晚",
        "weekend": "周末", "holiday": "假期", "vacation": "假期",
        "today": "今天", "tomorrow": "明天", "yesterday": "昨天",
        "week": "周", "month": "月", "year": "年",
        "schedule": "日程", "deadline": "截止日期", "appointment": "预约",

        // MARK: Places
        "home": "家", "house": "房子", "office": "办公室",
        "restaurant": "餐厅", "café": "咖啡馆", "coffee shop": "咖啡馆",
        "airport": "机场", "hotel": "酒店", "park": "公园",
        "gym": "健身房", "downtown": "市中心", "neighborhood": "社区",
        "corner": "转角", "street": "街道", "city": "城市",
        "library": "图书馆", "hospital": "医院", "school": "学校",

        // MARK: Food & Drink
        "coffee": "咖啡", "tea": "茶", "water": "水", "juice": "果汁",
        "meal": "饭菜", "breakfast": "早饭", "lunch": "午饭", "dinner": "晚饭",
        "menu": "菜单", "dessert": "甜点", "appetizer": "开胃菜",
        "taste": "味道", "flavor": "口味", "delicious": "美味的",
        "spicy": "辣的", "sweet": "甜的", "sour": "酸的", "salty": "咸的",
        "recommend": "推荐", "reservation": "预订", "order": "点餐",
        "takeout": "外卖", "delivery": "外卖配送", "groceries": "食品杂货",
        "recipe": "食谱", "ingredient": "食材", "butter": "黄油",

        // MARK: Transport & Travel
        "traffic": "交通", "commute": "通勤", "bus": "公交车",
        "train": "火车", "subway": "地铁", "car": "汽车",
        "flight": "航班", "ticket": "票", "passport": "护照",
        "luggage": "行李", "customs": "海关", "boarding": "登机",
        "destination": "目的地", "trip": "旅行", "travel": "旅行",
        "journey": "旅程", "map": "地图", "direction": "方向",

        // MARK: Emotions & States
        "busy": "忙碌的", "tired": "疲倦的", "exhausted": "筋疲力尽的",
        "excited": "兴奋的", "happy": "开心的", "sad": "悲伤的",
        "frustrated": "沮丧的", "motivated": "有动力的",
        "relaxed": "放松的", "stressed": "有压力的",
        "anxious": "焦虑的", "confident": "自信的",
        "satisfied": "满足的", "disappointed": "失望的",
        "overwhelmed": "不知所措的", "lonely": "孤独的",
        "grateful": "感激的", "nervous": "紧张的",

        // MARK: Hobbies & Activities
        "running": "跑步", "cooking": "烹饪", "reading": "阅读",
        "painting": "绘画", "pottery": "陶艺", "hiking": "徒步旅行",
        "swimming": "游泳", "cycling": "骑车", "exercise": "锻炼",
        "fitness": "健身", "workout": "健身训练", "hobby": "爱好",
        "gardening": "园艺", "photography": "摄影", "yoga": "瑜伽",
        "meditation": "冥想", "sport": "运动", "game": "比赛",

        // MARK: Entertainment
        "movie": "电影", "film": "电影", "series": "剧集",
        "show": "节目", "episode": "集", "book": "书",
        "music": "音乐", "concert": "音乐会", "theater": "剧院",
        "podcast": "播客", "documentary": "纪录片",

        // MARK: Work & Career
        "meeting": "会议", "project": "项目", "team": "团队",
        "feedback": "反馈", "presentation": "演示", "report": "报告",
        "manager": "经理", "colleague": "同事", "client": "客户",
        "budget": "预算", "proposal": "提案", "agenda": "议程",
        "collaboration": "协作", "responsibility": "责任",
        "initiative": "主动性", "promotion": "晋升",
        "performance": "绩效", "morale": "士气", "culture": "文化",
        "mentor": "导师", "hybrid": "混合", "remote": "远程",
        "flexible": "灵活的", "networking": "社交",
        "workflow": "工作流程", "priority": "优先事项", "strategy": "策略",

        // MARK: Common Adjectives
        "interesting": "有趣的", "challenging": "有挑战性的",
        "productive": "高效的", "efficient": "高效的",
        "creative": "有创意的", "innovative": "创新的",
        "ambitious": "有抱负的", "intentional": "有意为之的",
        "realistic": "现实的", "outdated": "过时的",
        "fundamental": "根本的", "skeptical": "持怀疑态度的",
        "genuine": "真诚的", "deliberate": "刻意的",
        "consistent": "一致的", "isolated": "孤立的",
        "liberating": "解放的", "familiar": "熟悉的",
        "ordinary": "普通的", "comfortable": "舒适的",
        "cozy": "温馨的", "artisanal": "手工的",
        "convenient": "方便的", "conscious": "有意识的",
        "automatic": "自动的", "abstract": "抽象的",
        "complex": "复杂的", "simple": "简单的",
        "critical": "关键的", "robust": "健壮的",
        "transparent": "透明的", "scalable": "可扩展的",

        // MARK: Common Verbs
        "appreciate": "感激", "reflect": "反思",
        "maintain": "维持", "recognize": "认识",
        "achieve": "实现", "develop": "发展",
        "improve": "改善", "consider": "考虑",
        "understand": "理解", "create": "创造",
        "design": "设计", "implement": "实施",
        "manage": "管理", "support": "支持",
        "provide": "提供", "analyze": "分析",
        "optimize": "优化", "monitor": "监控",
        "accumulate": "积累", "normalize": "正常化",
        "prioritize": "优先处理", "collaborate": "协作",
        "communicate": "沟通", "delegate": "委派",
        "unwind": "放松", "tackle": "着手处理",
        "declutter": "整理", "isolate": "孤立",
        "balance": "平衡", "integrate": "整合",
        "deploy": "部署", "configure": "配置",
        "process": "处理", "transform": "转换",
        "validate": "验证", "aggregate": "聚合",
        "replicate": "复制", "migrate": "迁移",
        "orchestrate": "编排", "automate": "自动化",

        // MARK: Small Talk
        "plan": "计划", "subscription": "订阅",
        "convenience": "便利", "productivity": "效率",
        "wellbeing": "身心健康", "mindset": "心态",
        "perspective": "视角", "tradeoff": "权衡",
        "overhead": "额外负担", "clarity": "清晰",
        "energy": "精力", "friendship": "友谊",
        "adult": "成年人", "relationship": "关系",
        "priorities": "优先事项", "creativity": "创造力",
        "structure": "结构", "trend": "趋势",
        "content": "内容", "supplement": "补剂",
        "anxiety": "焦虑", "tension": "张力",
        "comfort": "安慰", "routine": "日常规律",
        "sleep": "睡眠", "habit": "习惯",

        // MARK: Technology & Cloud
        "data": "数据", "database": "数据库",
        "algorithm": "算法", "model": "模型",
        "pipeline": "数据管道", "system": "系统",
        "network": "网络", "server": "服务器",
        "cloud": "云", "storage": "存储",
        "query": "查询", "schema": "数据结构",
        "encryption": "加密", "authentication": "身份验证",
        "deployment": "部署", "architecture": "架构",
        "infrastructure": "基础设施", "microservice": "微服务",
        "container": "容器", "cluster": "集群",
        "latency": "延迟", "throughput": "吞吐量",
        "scalability": "可扩展性", "redundancy": "冗余",
        "backup": "备份", "migration": "迁移",
        "integration": "集成", "batch": "批处理",
        "streaming": "流处理", "partition": "分区",
        "replication": "复制", "ingestion": "数据摄取",
        "transformation": "转换", "orchestration": "编排",
        "microservices": "微服务架构",
        "kubernetes": "Kubernetes容器编排",
        "serverless": "无服务器",

        // MARK: AI & ML
        "training": "训练", "prediction": "预测",
        "accuracy": "准确率", "feature": "特征",
        "dataset": "数据集", "overfitting": "过拟合",
        "bias": "偏差", "inference": "推理",
        "embedding": "向量嵌入", "classification": "分类",
        "regression": "回归", "clustering": "聚类",
        "neural": "神经的", "transformer": "Transformer模型",
        "tokenization": "分词", "fine-tuning": "微调",

        // MARK: Neuroscience
        "brain": "大脑", "neuron": "神经元",
        "synapse": "突触", "memory": "记忆",
        "cognition": "认知", "consciousness": "意识",
        "behavior": "行为", "emotion": "情绪",
        "dopamine": "多巴胺", "serotonin": "血清素",
        "cortex": "皮质", "hippocampus": "海马体",
        "amygdala": "杏仁核", "plasticity": "可塑性",
        "reward": "奖励", "signal": "信号",
        "receptor": "受体", "neurotransmitter": "神经递质",
        "cognitive": "认知的", "prefrontal": "前额叶",
        "myelination": "髓鞘化", "neuroplasticity": "神经可塑性",
        "optogenetics": "光遗传学",
        "axon": "轴突", "dendrite": "树突",
        "inhibition": "抑制", "excitation": "兴奋",
        "consolidation": "巩固", "retrieval": "提取",

        // MARK: Language Learning
        "pronunciation": "发音", "practice": "练习",
        "sentence": "句子", "word": "单词",
        "meaning": "含义", "vocabulary": "词汇",
        "fluency": "流利度", "accent": "口音",
        "grammar": "语法", "translation": "翻译",
        "language": "语言", "phonetics": "语音学",
    ]
    // swiftlint:enable line_length
}
