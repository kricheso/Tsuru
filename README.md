# Tsuru
### A Spaced Repetition System (SRS) iOS Application for Japanese Vocabulary

<img align="left" src="Images/App Image.png" width="250" height="250">

Tsuru is an in-development iPhone/iPad application that will become avaliable to the App Store for free. The app makes learning Japanese extremely easy and efficient. Tsuru uses a SRS algorithm called [Leitner's System](https://en.wikipedia.org/wiki/Leitner_system) to test you only on the Japanese vocabulary that you are about to forget. This method drastically optimizes studying by helping learners skip the material he or she can already reliably recall. Other applications like Anki, Cleverdeck, and Flashcards Deluxe successfully utilize this method. However, these applications are not gear towards Japanese and does not have the additional features that could enchance learning. Tsuru specializes in Kanji and will test you on your handwritting along with your vocabulary. In addition, Tsuru is fun and will keep learners motivated with the level system that is implementent in the app!

## App Overview

### Splash Screen
<img align="left" src="Images/Splash Screen.png" height="300">

</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>

### Card Set Screen
<img align="left" src="Images/Dock.png" height="300">
When you open Tsuru, the user will be directed to the Card Set Screen. In this screen, the user can see which set he or she is currently studying. The user can switch from sets by tapping on the Settings button. To save and export the data, the user can tap on the action button on the top right hand corner. Send your data to an email address, through air drop, or simply through another Tsuru app. The graph represents how many avalible review questions are there. Since Tsuru is a SRS application, questions only become avavlible after a certain amount of time. Tap on the Review button to start a review session. The Lesson button will introduce users to new and unfamilair words. After the user completes the lessons, he or she will view them in the reviews. The Card Deck button will bring you to a screen with all the cards in the current set. And the Search button will search for a word or phrase in the currect deck.


</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>

### All Cards Screen
<img align="left" src="Images/All Cards.png" height="300">
When you tap on the Card Deck button on the previous screen, you will be brought to this screen. This screen displays all the cards in the current deck in order by level. Each card displays the Japanese word on the left side. If the Japanese word has kanji, the right side will provide the hiragana furigana. If the word does not have kanji, the right side will display the romaji reading. Each card has the definition on the right side as well. Press the add button on the top right corner to add a new card to the deck. This card will append to the top underneath the Untrained section. Search for words quickly by searching it in the search bar. Once you found the word you would like to see more information about, tap on it and the app will bring you to the definition page.

</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>

### Definition Screen
<img align="left" src="Images/Definition.png" height="300">
This screen contains the information about the selected card. You can also edit any information about the card here. The meanings will be displayed first. Words have multiple meanings, so Tsuru allows you to save all of them! The furigana reading is also displayed if the word has kanji. If it does not have kanji, this section will be hidden. The Romaji reading is next along with the part of speech. The mnemonic section is where a helpful mnemonic will be to help users remember the word easier. Lastly, the notes section will allow users to write any additional notes about the card.

</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>


### Quiz Screen (English Card)
<img align="left" src="Images/English to Japanese.png" height="300">
If the user backs out of the definition screen and goes back to press the Review button on the main screen, he or she will be presented with this screen. The review quiz will show multiple cards and will prompt the user to input the answer. For English cards, the user will be displayed a writing board. The user will write the answer while the machine learning algorithm converts the characters to text. Once the users clicks next, he or she will be showed a green color for a correct answer and a red color for an inncorrect answer. The use can press the next button again to go to the next card or he or she can review stroke order, meaning, or readings!

</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>

### Quiz Screen (Japanese Card)
<img align="left" src="Images/Japanese to English.png" height="300">
Half the time, the card will display in Japanese. When this happens, an english keyboard will appear. Type the answer and click the next button. As mentioned before, you can review the material or just to move on to the next card.

</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
</br>

## What makes Tsuru effective?

### Menmonics & SRS
<img align="left" src="Images/Mnemonics.png" width="150" height="150">
Tsuru allows you to add mnemonics to every vocabulary word. Waste less time! Memorize and recall way more. Studies have proven the effectiveness of menmonics, especially for foreign-language acquisition. Combine this with Tsuru's spaced repetition system and you should be learning in no time.

</br>
</br>
</br>
</br>
</br>
</br>

### Kanji & Machine Learning
<img align="left" src="Images/Kanji.png" width="150" height="150">
Tsuru helps you practice Kanji by writing it down, and showing you the stroke order. Compatiable with Apple Pencil or just your finger, Tsuru utilizes machine learning technology in order to regonize handwritten text. For Kanji beginers, enable or disable furigana on flashcards anytime.

</br>
</br>
</br>
</br>
</br>
</br>

### Levels
<img align="left" src="Images/Levels.png" width="150" height="150">
Tsuru utilizes a level system to help users stay motivated with learning Japanese! Tsuru includes five levels from novice to master. Level up and compete with freinds!

</br>
</br>
</br>
</br>
</br>
</br>

### Premade Sets
<img align="left" src="Images/Premade Sets.png" width="150" height="150">
Tsuru includes premade sets to help you jump right into learning. JPTL flashcards, Genki flashcards, and other Japanese learning courses will be avalible without any inital setup. Tsuru also allows users to create their own sets or add flashcards to already existing ones!

</br>
</br>
</br>
</br>
</br>
</br>

## How Does Tsuru Work?

### Development Enviroment
Tsuru will be developed on Apple's Xcode IDE with the Swift programming language. Most of the app can be completed with basic iOS development techinques. However, there are some more complicated features that need more thourow thought. These concepts are explained below: 

### Database
Unlike other SRS applications, Tsuru is uses local storage on the device and does not require users to create accounts. Data can be backed up on a cloud or can be transfered between devices. Do to this, Tsuru will utilize [Realm](https://realm.io/), an excellent framework for iOS database management. The primary data structure that will be utilized in Tsuru is the card set which can be seen below. Each card set will three dictionaries. The first dictionary can identify a vocabulary word to a corresponding card identifier. The second dictionary can identify a definition to a corresponding card identifier. And the third dictionary contains the card object's along with the IDs. This data structure utilizes a Bi-directional Dictionary to decrease lookup time and increase effientcy of the application.

```swift
class CardSet {
  var cardDict: [UUID: Card] = [:]
  var vocabularyDict: [String: UUID] = [:]
  var definitionDict: [String: UUID] = [:]
}
```

Each card object is structured below. Note: A Japanese Vocabulary object contains the term, kanji, furigana, and romaji of each word.

```swift
class Card {
  var id: UUID = UUID()
  var vocabulary: JapaneseVocabulary
  var definition: String
  var vocabularySynonyms: [JapaneseVocabulary] = []
  var definitionSynonyms: [String] = []
  var dateCreated: NSDate = NSDate()
  var availableDate: NSDate?
  var level: Int = 0
  var partOfSpeech: String = ""
  var mnenomic: String?
  var notes: String?
}
```

### Hand Written Character Recongition
Tsuru can recongize japanese characters the user writes in the application. This is done with machine learning technogolies and can be utlized for free with a third party framewrok called [Zinnia](http://taku910.github.io/zinnia/). The framework is realtively easy to use and there are many examples of it working on Github just in case I need a reference.

### Furigana
Tsuru can fetch furigana for Kanji vocabuary and place readings on flashcards. This can be done by sending over the vocabuary term to [Yahoo! Japan's Furigana Service API](https://developer.yahoo.co.jp/webapi/jlp/furigana/v1/furigana.html) and getting the returned result. I will then insert that result into the card with an API service class.
