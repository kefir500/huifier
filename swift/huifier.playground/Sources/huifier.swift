import Foundation
class Huifier {
    
    func huify(word: String) -> String {
        var result = word.lowercased()
        let vowels = "аеёиоуыэюя"
        let rules = [
            "а": "я",
            "о": "ё",
            "у": "ю",
            "ы": "и",
            "э": "е"
        ]
        for letter in result {
            if vowels.contains(letter) {
                let isInDictionary = rules.contains { (key, value) -> Bool in
                    return (key == String(letter)) || (value == String(letter))
                }
                if isInDictionary {
                    result = (rules[String(letter)] ?? String(letter)) + result.dropFirst()
                }
                break
            } else {
                result = String(result.dropFirst())
            }
        }
        return (result.isEmpty ? "хуй" : "ху\(result)").capitalized.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
    
}
