import Foundation

public struct YahooJapanService {
    
    public static func getReadings(japaneseText: String, completionHandler: @escaping (_ response: JapaneseReadingsResponse, _ error: NSError?) -> Void) {
        // Simulating a Yahoo! Japan API request.
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            var furiganas: [Furigana] = []
            var romanji: String = ""
            if japaneseText == "男の子" {
                furiganas.append(Furigana(kanji: "男", hiragana: "おとこ", range: NSRange(location: 0, length: 1)))
                furiganas.append(Furigana(kanji: "子", hiragana: "こ", range: NSRange(location: 2, length: 1)))
                romanji = "otokonoko"
            } else if japaneseText == "上手" {
                furiganas.append(Furigana(kanji: "上手", hiragana: "じょうず", range: NSRange(location: 0, length: 2)))
                romanji = "jyouzu"
            } else if japaneseText == "上手い" {
                furiganas.append(Furigana(kanji: "上", hiragana: "う", range: NSRange(location: 0, length: 1)))
                furiganas.append(Furigana(kanji: "手", hiragana: "ま", range: NSRange(location: 1, length: 1)))
                romanji = "umai"
            } else if japaneseText == "アップル" {
                romanji = "appuru"
            } else if japaneseText == "こんにちは" {
                romanji = "kon'nichiwa"
            }
            print("Returned some values from the Yahoo! Japan Service.")
            completionHandler(JapaneseReadingsResponse(furiganas: furiganas, romanji: romanji), nil)
        }
    }
    
}

public struct JapaneseReadingsResponse {
    
    public let furiganas: [Furigana]
    public let romanji: String
    
    public init(furiganas: [Furigana], romanji: String) {
        self.furiganas = furiganas
        self.romanji = romanji
    }
    
}
