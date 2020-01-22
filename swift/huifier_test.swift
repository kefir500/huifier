import XCTest

public class HuifierTests: XCTestCase {
    
    let huifier = Huifier()
    
    func testHuifier() {
        
        //test_random_words
        XCTAssertEqual(huifier.huify(word: "Вилка"), "Хуилка")
        XCTAssertEqual(huifier.huify(word: "Толик"), "Хуёлик")
        XCTAssertEqual(huifier.huify(word: "Яблоко"), "Хуяблоко")
        XCTAssertEqual(huifier.huify(word: "Красный"), "Хуясный")
        XCTAssertEqual(huifier.huify(word: "Круассан"), "Хуюассан")
        XCTAssertEqual(huifier.huify(word: "Хрю"), "Хую")
        
        //test_vowel_rules
        XCTAssertEqual(huifier.huify(word: "Арка"), "Хуярка")
        XCTAssertEqual(huifier.huify(word: "Едут"), "Хуедут")
        XCTAssertEqual(huifier.huify(word: "Ёжик"), "Хуёжик")
        XCTAssertEqual(huifier.huify(word: "Иглу"), "Хуиглу")
        XCTAssertEqual(huifier.huify(word: "Окна"), "Хуёкна")
        XCTAssertEqual(huifier.huify(word: "Урна"), "Хуюрна")
        XCTAssertEqual(huifier.huify(word: "Стык"), "Хуик")
        XCTAssertEqual(huifier.huify(word: "Эпос"), "Хуепос")
        XCTAssertEqual(huifier.huify(word: "Юрта"), "Хуюрта")
        XCTAssertEqual(huifier.huify(word: "Ящик"), "Хуящик")
        
        //test_letter_case
        XCTAssertEqual(huifier.huify(word: "Вилка"), "Хуилка")
        XCTAssertEqual(huifier.huify(word: "вилка"), "Хуилка")
        XCTAssertEqual(huifier.huify(word: "ВИЛКА"), "Хуилка")
        XCTAssertEqual(huifier.huify(word: "вИлКа"), "Хуилка")
        
        //test_normalization
        XCTAssertEqual(huifier.huify(word: ""), "Хуй")
        XCTAssertEqual(huifier.huify(word: " "), "Хуй")
        XCTAssertEqual(huifier.huify(word: "   "), "Хуй")
        XCTAssertEqual(huifier.huify(word: "  Вилка  "), "Хуилка")
        XCTAssertEqual(huifier.huify(word: "Й"), "Хуй")
        XCTAssertEqual(huifier.huify(word: "О"), "Хуё")
        
    }
}
