import Foundation

public struct CardSet {
    
    private var cardDict: [UUID: Card] = [:]
    private var vocabularyDict: [String: UUID] = [:]
    private var definitionDict: [String: UUID] = [:]
    
    public init() { }
    
    public init(_ cards: [Card]) {
        for card in cards {
            insert(card)
        }
    }
    
    public var count: Int {
        return cardDict.count
    }
    
    public var isEmpty: Bool {
        return cardDict.isEmpty
    }
    
    public var cards: Dictionary<UUID, Card>.Values {
        return cardDict.values
    }
    
    public var vocabularys: Dictionary<String, UUID>.Keys {
        return vocabularyDict.keys
    }
    
    public var definitions: Dictionary<String, UUID>.Keys {
        return definitionDict.keys
    }
    
    @discardableResult
    public mutating func insert(_ card: Card) -> Card? {
        guard cardDict[card.id] == nil else {
            print("Duplicate card: \(card.id). Did not insert.")
            return nil
        }
        guard vocabularyDict[card.vocabulary.description] == nil else {
            print("Duplicate vocabulary: \(card.vocabulary.description). Did not insert.")
            return nil
        }
        guard definitionDict[card.definition] == nil else {
            print("Duplicate definition: \(card.definition). Did not insert.")
            return nil
        }
        cardDict.updateValue(card, forKey: card.id)
        vocabularyDict.updateValue(card.id, forKey: card.vocabulary.description)
        definitionDict.updateValue(card.id, forKey: card.definition)
        return card
    }
    
    @discardableResult
    public mutating func updateCardVocabulary(_ vocabulary: String, forId id: UUID) -> Card? {
        guard let card = cardDict[id] else {
            print("Could not find card with id \(id)")
            return nil
        }
        guard id == vocabularyDict[card.vocabulary.description], id == definitionDict[card.definition]  else {
            print("Something is extremely wrong.")
            return nil
        }
        guard vocabularyDict.removeValue(forKey: card.vocabulary.description) != nil else {
            print("Something is extremely wrong.")
            return nil
        }
        vocabularyDict.updateValue(card.id, forKey: vocabulary)
        let oldCard = card
        card.vocabulary.description = vocabulary
        return oldCard
    }
    
    @discardableResult
    public mutating func updateCardVocabulary(_ vocabulary: String, forDefinition definition: String) -> Card? {
        guard let id = definitionDict[definition] else {
            print("Could not find definition: \(definition). Did not remove.")
            return nil
        }
        guard let card = cardDict[id] else {
            print("Something is extremely wrong.")
            return nil
        }
        guard id == vocabularyDict[card.vocabulary.description] else {
            print("Something is extremely wrong.")
            return nil
        }
        guard vocabularyDict.removeValue(forKey: card.vocabulary.description) != nil else {
            print("Something is extremely wrong.")
            return nil
        }
        vocabularyDict.updateValue(card.id, forKey: vocabulary)
        let oldCard = card
        card.vocabulary.description = vocabulary
        return oldCard
    }
    
    @discardableResult
    public mutating func updateCardDefinition(_ definition: String, forId id: UUID) -> Card? {
        guard let card = cardDict[id] else {
            print("Could not find card with id \(id)")
            return nil
        }
        guard id == vocabularyDict[card.vocabulary.description], id == definitionDict[card.definition]  else {
            print("Something is extremely wrong.")
            return nil
        }
        guard definitionDict.removeValue(forKey: card.definition) != nil else {
            print("Something is extremely wrong.")
            return nil
        }
        definitionDict.updateValue(card.id, forKey: definition)
        let oldCard = card
        card.definition = definition
        return oldCard
    }
    
    @discardableResult
    public mutating func updateCardDefinition(_ definition: String, forVocabulary vocabulary: String) -> Card? {
        guard let id = vocabularyDict[vocabulary] else {
            print("Could not find vocabulary: \(vocabulary). Did not remove.")
            return nil
        }
        guard let card = cardDict[id] else {
            print("Something is extremely wrong.")
            return nil
        }
        guard id == definitionDict[card.definition] else {
            print("Something is extremely wrong.")
            return nil
        }
        guard definitionDict.removeValue(forKey: card.definition) != nil else {
            print("Something is extremely wrong.")
            return nil
        }
        definitionDict.updateValue(card.id, forKey: definition)
        let oldCard = card
        card.definition = definition
        return oldCard
    }
    
    @discardableResult
    public mutating func removeCard(withId id: UUID) -> Card? {
        guard let card = cardDict[id] else {
            print("Could not find card with id \(id)")
            return nil
        }
        guard id == vocabularyDict[card.vocabulary.description], id == definitionDict[card.definition]  else {
            print("Something is extremely wrong.")
            return nil
        }
        cardDict.removeValue(forKey: id)
        vocabularyDict.removeValue(forKey: card.vocabulary.description)
        definitionDict.removeValue(forKey: card.definition)
        return card
    }
    
    @discardableResult
    public mutating func removeCard(withVocabulary vocabulary: String) -> Card? {
        guard let id = vocabularyDict[vocabulary] else {
            print("Could not find vocabulary: \(vocabulary). Did not remove.")
            return nil
        }
        guard let card = cardDict[id] else {
            print("Something is extremely wrong.")
            return nil
        }
        guard id == definitionDict[card.definition] else {
            print("Something is extremely wrong.")
            return nil
        }
        cardDict.removeValue(forKey: id)
        vocabularyDict.removeValue(forKey: vocabulary)
        definitionDict.removeValue(forKey: card.definition)
        return card
    }
    
    @discardableResult
    public mutating func removeCard(withDefinition definition: String) -> Card? {
        guard let id = definitionDict[definition] else {
            print("Could not find definition: \(definition). Did not remove.")
            return nil
        }
        guard let card = cardDict[id] else {
            print("Something is extremely wrong.")
            return nil
        }
        guard id == vocabularyDict[card.vocabulary.description] else {
            print("Something is extremely wrong.")
            return nil
        }
        cardDict.removeValue(forKey: id)
        vocabularyDict.removeValue(forKey: card.vocabulary.description)
        definitionDict.removeValue(forKey: definition)
        return card
    }
    
    public subscript(id id: UUID) -> Card? {
        get {
            return getCard(withId: id)
        }
    }
    
    public subscript(vocabulary vocabulary: String) -> Card? {
        get {
            return getCard(withVocabulary: vocabulary)
        }
    }
    
    public subscript(definition definition: String) -> Card? {
        get {
            return getCard(withDefinition: definition)
        }
    }
    
    private func getCard(withId id: UUID) -> Card? {
        guard let card = cardDict[id] else {
            print("Could not find card with id \(id)")
            return nil
        }
        return card
    }
    
    private func getCard(withVocabulary vocabulary: String) -> Card? {
        guard let cardId = vocabularyDict[vocabulary] else {
            print("Could not find card with vocabulary \(vocabulary)")
            return nil
        }
        guard let card = cardDict[cardId] else {
            print("Something is extremely wrong.")
            return nil
        }
        return card
    }
    
    private func getCard(withDefinition definition: String) -> Card? {
        guard let cardId = definitionDict[definition] else {
            print("Could not find card with definition \(definition)")
            return nil
        }
        guard let card = cardDict[cardId] else {
            print("Something is extremely wrong.")
            return nil
        }
        return card
    }
    
}

extension CardSet: CustomStringConvertible {
    
    public var description: String {
        var string = ""
        string.append("\n===== Card Dictionary =====\n")
        for (id, card) in cardDict {
            string.append("\(id): \(card.vocabulary.description) - \(card.definition)\n")
        }
        string.append("===== Vocabulary Dictionary =====\n")
        for (vocabulary, id) in vocabularyDict {
            string.append("\(vocabulary): \(id)\n")
        }
        string.append("===== Definition Dictionary =====\n")
        for (definition, id) in definitionDict {
            string.append("\(definition): \(id)\n")
        }
        return string
    }
    
}

public class Card {
    
    public let id: UUID = UUID()
    public var vocabulary: JapaneseVocabulary
    fileprivate(set) var definition: String
    public var vocabularySynonyms: [JapaneseVocabulary] = []
    public var definitionSynonyms: [String] = []
    public var dateCreated: NSDate = NSDate()
    public var availableDate: NSDate?
    public var level: Int = 0
    public var partOfSpeech: String = ""
    public var mnenomic: String?
    public var notes: String?
    
    public init(vocabulary: String, definition: String) {
        self.vocabulary = JapaneseVocabulary(description: vocabulary)
        self.definition = definition
    }
    
}

public class JapaneseVocabulary {
    
    fileprivate(set) var description: String {
        didSet {
            furiganas = nil
            romanji = nil
        }
    }
    public var furiganas: [Furigana]?
    public var romanji: String?
    
    public init(description: String) {
        self.description = description
    }
    
    public func fetchReadings() {
        YahooJapanService.getReadings(japaneseText: description) { (response, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            self.furiganas = response.furiganas
            self.romanji = response.romanji
        }
    }
    
}
