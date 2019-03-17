import Foundation

public struct Furigana {
    
    public let kanji: String
    public let hiragana: String
    public let range: NSRange
    
    public init(kanji: String, hiragana: String, range: NSRange) {
        self.kanji = kanji
        self.hiragana = hiragana
        self.range = range
    }
    
    // Example:
    // Furigana(kanji: "食", hiragana: "た", range: NSMakeRange(10, 1))
    // Furigana(kanji: "靴", hiragana: "くつ", range: NSMakeRange(29, 1)),
    // Furigana(kanji: "刺身", hiragana: "さしみ", range: NSMakeRange(46, 2)),
    // Furigana(kanji: "狐", hiragana: "きつね", range: NSMakeRange(59, 1))
    
}
