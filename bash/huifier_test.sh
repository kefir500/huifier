#!/bin/bash

testRandomWords() {
    assertEquals Хуилка $(./huifier.sh Вилка)
    assertEquals Хуелик $(./huifier.sh Толик)
    assertEquals Хуяблоко $(./huifier.sh Яблоко)
    assertEquals Хуясный $(./huifier.sh Красный)
    assertEquals Хуюассан $(./huifier.sh Круассан)
    assertEquals Хую $(./huifier.sh Хрю)
}

testVowelRules() {
    assertEquals Хуярка $(./huifier.sh Арка)
    assertEquals Хуедут $(./huifier.sh Едут)
    assertEquals Хуёжик $(./huifier.sh Ёжик)
    assertEquals Хуиглу $(./huifier.sh Иглу)
    assertEquals Хуекна $(./huifier.sh Окна)
    assertEquals Хуюрна $(./huifier.sh Урна)
    assertEquals Хуик $(./huifier.sh Стык)
    assertEquals Хуепос $(./huifier.sh Эпос)
    assertEquals Хуюрта $(./huifier.sh Юрта)
    assertEquals Хуящик $(./huifier.sh Ящик)
}

testLetterCase() {
    assertEquals Хуилка $(./huifier.sh Вилка)
    assertEquals Хуилка $(./huifier.sh вилка)
    assertEquals Хуилка $(./huifier.sh вилка)
    assertEquals Хуилка $(./huifier.sh вИлКа)
}

testNormalization() {
    assertEquals Хуй $(./huifier.sh "")
    assertEquals Хуй $(./huifier.sh " ")
    assertEquals Хуй $(./huifier.sh "   ")
    assertEquals Хуилка $(./huifier.sh "  Вилка  ")
    assertEquals Хуй $(./huifier.sh Й)
    assertEquals Хуя $(./huifier.sh А)
}

. shunit2
