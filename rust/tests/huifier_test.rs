extern crate huifier;

#[test]
fn test_random_words() {
    assert_eq!(huifier::huify("Вилка"), "Хуилка");
    assert_eq!(huifier::huify("Толик"), "Хуелик");
    assert_eq!(huifier::huify("Яблоко"), "Хуяблоко");
    assert_eq!(huifier::huify("Красный"), "Хуясный");
    assert_eq!(huifier::huify("Круассан"), "Хуюассан");
    assert_eq!(huifier::huify("Хрю"), "Хую");
}

#[test]
fn test_vowel_rules() {
    assert_eq!(huifier::huify("Арка"), "Хуярка");
    assert_eq!(huifier::huify("Едут"), "Хуедут");
    assert_eq!(huifier::huify("Ёжик"), "Хуёжик");
    assert_eq!(huifier::huify("Иглу"), "Хуиглу");
    assert_eq!(huifier::huify("Окна"), "Хуекна");
    assert_eq!(huifier::huify("Урна"), "Хуюрна");
    assert_eq!(huifier::huify("Стык"), "Хуик");
    assert_eq!(huifier::huify("Эпос"), "Хуепос");
    assert_eq!(huifier::huify("Юрта"), "Хуюрта");
    assert_eq!(huifier::huify("Ящик"), "Хуящик");
}

#[test]
fn test_letter_case() {
    assert_eq!(huifier::huify("Вилка"), "Хуилка");
    assert_eq!(huifier::huify("вилка"), "Хуилка");
    assert_eq!(huifier::huify("ВИЛКА"), "Хуилка");
    assert_eq!(huifier::huify("вИлКа"), "Хуилка");
}

#[test]
fn test_normalization() {
    assert_eq!(huifier::huify(""), "Хуй");
    assert_eq!(huifier::huify(" "), "Хуй");
    assert_eq!(huifier::huify("   "), "Хуй");
    assert_eq!(huifier::huify("  Вилка  "), "Хуилка");
    assert_eq!(huifier::huify("Й"), "Хуй");
    assert_eq!(huifier::huify("А"), "Хуя");
}
