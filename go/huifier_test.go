package huifier

import "testing"

func TestRandomWords(t *testing.T) {
    words := map[string]string{
        "Вилка":    "Хуилка",
        "Толик":    "Хуёлик",
        "Яблоко":   "Хуяблоко",
        "Красный":  "Хуясный",
        "Круассан": "Хуюассан",
        "Хрю":      "Хую",
    }
    for word, expected := range words {
        huified := Huify(word)
        if huified != expected {
            t.Errorf("Random word test for \"%s\" failed. Expected \"%s\" instead of \"%s\".", word, expected, huified)
        }
    }
}

func TestVowelRules(t *testing.T) {
    words := map[string]string{
        "Арка": "Хуярка",
        "Едут": "Хуедут",
        "Ёжик": "Хуёжик",
        "Иглу": "Хуиглу",
        "Окна": "Хуёкна",
        "Урна": "Хуюрна",
        "Стык": "Хуик",
        "Эпос": "Хуепос",
        "Юрта": "Хуюрта",
        "Ящик": "Хуящик",
    }
    for word, expected := range words {
        huified := Huify(word)
        if huified != expected {
            t.Errorf("Vowel rules test for \"%s\" failed. Expected \"%s\" instead of \"%s\".", word, expected, huified)
        }
    }
}

func TestLetterCase(t *testing.T) {
    words := map[string]string{
        "Вилка": "Хуилка",
        "вилка": "Хуилка",
        "ВИЛКА": "Хуилка",
        "вИлКа": "Хуилка",
    }
    for word, expected := range words {
        huified := Huify(word)
        if huified != expected {
            t.Errorf("Letter case test for \"%s\" failed. Expected \"%s\" instead of \"%s\".", word, expected, huified)
        }
    }
}

func TestNormalization(t *testing.T) {
    words := map[string]string{
        "": "Хуй",
        " ": "Хуй",
        "   ": "Хуй",
        "  Вилка  ": "Хуилка",
        "Й": "Хуй",
        "О": "Хуё",
    }
    for word, expected := range words {
        huified := Huify(word)
        if huified != expected {
            t.Errorf("Borderline test for \"%s\" failed. Expected \"%s\" instead of \"%s\".", word, expected, huified)
        }
    }
}
