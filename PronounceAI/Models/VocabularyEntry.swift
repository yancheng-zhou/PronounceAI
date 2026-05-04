import Foundation

struct VocabularyEntry: Identifiable, Codable {
    let id: UUID
    let word: String
    let sentenceContext: String
    let dateAdded: Date
}

struct VocabularyStore {
    private static let key = "savedVocabulary"

    static func load() -> [VocabularyEntry] {
        guard let data = UserDefaults.standard.data(forKey: key),
              let entries = try? JSONDecoder().decode([VocabularyEntry].self, from: data)
        else { return [] }
        return entries
    }

    static func save(_ entries: [VocabularyEntry]) {
        guard let data = try? JSONEncoder().encode(entries) else { return }
        UserDefaults.standard.set(data, forKey: key)
    }

    static func add(word: String, context: String) {
        var entries = load()
        guard !entries.contains(where: { $0.word.lowercased() == word.lowercased() }) else { return }
        entries.insert(
            VocabularyEntry(id: UUID(), word: word, sentenceContext: context, dateAdded: Date()),
            at: 0
        )
        save(entries)
    }

    static func remove(ids: Set<UUID>) {
        var entries = load()
        entries.removeAll { ids.contains($0.id) }
        save(entries)
    }

    static func contains(word: String) -> Bool {
        load().contains { $0.word.lowercased() == word.lowercased() }
    }
}
