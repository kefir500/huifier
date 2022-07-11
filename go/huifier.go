package huifier

import (
    "strings"
    "unicode/utf8"
)

func removeFirstLetter(word string) string {
    _, i := utf8.DecodeRuneInString(word)
    return word[i:]
}

func Huify(word string) string {
    word = strings.ToLower(strings.TrimSpace(word))
    vowels := "аеёиоуыэюя"
    rules := map[rune]rune{
        'а': 'я',
        'о': 'е',
        'у': 'ю',
        'ы': 'и',
        'э': 'е',
    }
    for _, letter := range word {
        if strings.Contains(vowels, string(letter)) {
            if letter, ok := rules[letter]; ok {
                word = string(letter) + removeFirstLetter(word)
            }
            break
        } else {
            word = removeFirstLetter(word)
        }
    }
    if word != "" {
        return "Ху" + word
    } else {
        return "Хуй"
    }
}
