import UIKit

var set = CardSet([
    Card(vocabulary: "こんにちは", definition: "Hello"),
    Card(vocabulary: "九", definition: "Nine"),
    Card(vocabulary: "男の子", definition: "Boy"),
    Card(vocabulary: "上手い", definition: "Skilled"),
    Card(vocabulary: "上手", definition: "Good"),
    ])

set.removeCard(withVocabulary: "九")
set.insert(Card(vocabulary: "林檎", definition: "Apple"))
set.updateCardVocabulary("アップル", forDefinition: "Apple")

print(set)


// Use Yahoo! Japan API to get furigana and romaji
for card in set.cards {
    card.vocabulary.fetchReadings()
}

// Right now these are nil becuase Yahoo! Services are loading the values.
for card in set.cards {
    print(card.vocabulary.furiganas ?? "Still loading furigana from Yahoo! Japan API")
}

// If we wait we will eventually get the values
DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
    for card in set.cards {
        print(card.vocabulary.romanji ?? "")
        print(card.vocabulary.furiganas ?? "")
    }
}
