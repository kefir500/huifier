
Describe "Test-RandomWords" {
    It "Returns <expected> (<Word>)" -ForEach @(
        @{ Word = "Вилка"; Expected = 'Хуилка' }
        @{ Word = "Толик"; Expected = 'Хуелик' }
        @{ Word = "Яблоко"; Expected = 'Хуяблоко' }
        @{ Word = "Красный"; Expected = 'Хуясный' }
        @{ Word = "Круассан"; Expected = 'Хуюассан' }
        @{ Word = "Хрю"; Expected = 'Хую' }
    ) {
        Set-Huify -Word $Word | Should -Be $Expected
    }
}

Describe "Test-VowelRules" {
    It "Returns <expected> (<Word>)" -ForEach @(
        @{ Word = "Арка"; Expected = 'Хуярка' }
        @{ Word = "Едут"; Expected = 'Хуедут' }
        @{ Word = "Ёжик"; Expected = 'Хуёжик' }
        @{ Word = "Иглу"; Expected = 'Хуиглу' }
        @{ Word = "Окна"; Expected = 'Хуекна' }
        @{ Word = "Урна"; Expected = 'Хуюрна' }
        @{ Word = "Стык"; Expected = 'Хуик' }
        @{ Word = "Эпос"; Expected = 'Хуепос' }
        @{ Word = "Юрта"; Expected = 'Хуюрта' }
        @{ Word = "Ящик"; Expected = 'Хуящик' }
    ) {
        Set-Huify -Word $Word | Should -Be $Expected
    }
}

Describe "Test-LetterCase" {
    It "Returns <expected> (<Word>)" -ForEach @(
        @{ Word = "Вилка"; Expected = 'Хуилка' }
        @{ Word = "вилка"; Expected = 'Хуилка' }
        @{ Word = "ВИЛКА"; Expected = 'Хуилка' }
        @{ Word = "вИлКа"; Expected = 'Хуилка' }

    ) {
        Set-Huify -Word $Word | Should -Be $Expected
    }
}

Describe "Test-Normalization" {
    It "Returns <expected> (<Word>)" -ForEach @(
        @{ Word = ""; Expected = 'Хуй' }
        @{ Word = " "; Expected = 'Хуй' }
        @{ Word = "   "; Expected = 'Хуй' }
        @{ Word = "  Вилка  "; Expected = 'Хуилка' }
        @{ Word = "Й"; Expected = 'Хуй' }
        @{ Word = "А"; Expected = 'Хуя' }

    ) {
        Set-Huify -Word $Word | Should -Be $Expected
    }
}
