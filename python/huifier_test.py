import unittest
from huifier import huify

class TestHuifyMethod(unittest.TestCase):

    def test_random_words(self):
        self.assertEqual(huify('Вилка'), 'Хуилка')
        self.assertEqual(huify('Толик'), 'Хуелик')
        self.assertEqual(huify('Яблоко'), 'Хуяблоко')
        self.assertEqual(huify('Красный'), 'Хуясный')
        self.assertEqual(huify('Круассан'), 'Хуюассан')
        self.assertEqual(huify('Хрю'), 'Хую')

    def test_vowel_rules(self):
        self.assertEqual(huify('Арка'), 'Хуярка')
        self.assertEqual(huify('Едут'), 'Хуедут')
        self.assertEqual(huify('Ёжик'), 'Хуёжик')
        self.assertEqual(huify('Иглу'), 'Хуиглу')
        self.assertEqual(huify('Окна'), 'Хуекна')
        self.assertEqual(huify('Урна'), 'Хуюрна')
        self.assertEqual(huify('Стык'), 'Хуик')
        self.assertEqual(huify('Эпос'), 'Хуепос')
        self.assertEqual(huify('Юрта'), 'Хуюрта')
        self.assertEqual(huify('Ящик'), 'Хуящик')

    def test_letter_case(self):
        self.assertEqual(huify('Вилка'), 'Хуилка')
        self.assertEqual(huify('вилка'), 'Хуилка')
        self.assertEqual(huify('ВИЛКА'), 'Хуилка')
        self.assertEqual(huify('вИлКа'), 'Хуилка')

    def test_normalization(self):
        self.assertEqual(huify(''), 'Хуй')
        self.assertEqual(huify(' '), 'Хуй')
        self.assertEqual(huify('   '), 'Хуй')
        self.assertEqual(huify('  Вилка  '), 'Хуилка')
        self.assertEqual(huify('Й'), 'Хуй')
        self.assertEqual(huify('А'), 'Хуя')

if __name__ == '__main__':
    unittest.main()
