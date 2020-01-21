require_relative 'huifier'
require 'test/unit'
 
class TestHuifier < Test::Unit::TestCase
  def test_random_words
    assert_equal('Хуилка', huify('Вилка'))
    assert_equal('Хуёлик', huify('Толик'))
    assert_equal('Хуяблоко', huify('Яблоко'))
    assert_equal('Хуясный', huify('Красный'))
    assert_equal('Хуюассан', huify('Круассан'))
    assert_equal('Хую', huify('Хрю'))
  end

  def test_vowel_rules
    assert_equal('Хуярка', huify('Арка'))
    assert_equal('Хуедут', huify('Едут'))
    assert_equal('Хуёжик', huify('Ёжик'))
    assert_equal('Хуиглу', huify('Иглу'))
    assert_equal('Хуёкна', huify('Окна'))
    assert_equal('Хуюрна', huify('Урна'))
    assert_equal('Хуик', huify('Стык'))
    assert_equal('Хуепос', huify('Эпос'))
    assert_equal('Хуюрта', huify('Юрта'))
    assert_equal('Хуящик', huify('Ящик'))
  end

  def test_letter_case
    assert_equal('Хуилка', huify('Вилка'))
    assert_equal('Хуилка', huify('вилка'))
    assert_equal('Хуилка', huify('вилка'))
    assert_equal('Хуилка', huify('вИлКа'))
  end

  def test_normalization
    assert_equal('Хуй', huify(''))
    assert_equal('Хуй', huify(' '))
    assert_equal('Хуй', huify('   '))
    assert_equal('Хуилка', huify('  Вилка  '))
    assert_equal('Хуй', huify('Й'))
    assert_equal('Хуё', huify('О'))
  end
end
