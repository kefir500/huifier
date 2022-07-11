<?php

require_once 'huifier.php';

use PHPUnit\Framework\TestCase;

class HuifyTest extends TestCase
{
    public function testRandomWords()
    {
        $this->assertSame('Хуилка', huify('Вилка'));
        $this->assertSame('Хуелик', huify('Толик'));
        $this->assertSame('Хуяблоко', huify('Яблоко'));
        $this->assertSame('Хуясный', huify('Красный'));
        $this->assertSame('Хуюассан', huify('Круассан'));
        $this->assertSame('Хую', huify('Хрю'));
    }

    public function testVowelRules()
    {
        $this->assertSame('Хуярка', huify('Арка'));
        $this->assertSame('Хуедут', huify('Едут'));
        $this->assertSame('Хуёжик', huify('Ёжик'));
        $this->assertSame('Хуиглу', huify('Иглу'));
        $this->assertSame('Хуекна', huify('Окна'));
        $this->assertSame('Хуюрна', huify('Урна'));
        $this->assertSame('Хуик', huify('Стык'));
        $this->assertSame('Хуепос', huify('Эпос'));
        $this->assertSame('Хуюрта', huify('Юрта'));
        $this->assertSame('Хуящик', huify('Ящик'));
    }

    public function testLetterCase()
    {
        $this->assertSame('Хуилка', huify('Вилка'));
        $this->assertSame('Хуилка', huify('вилка'));
        $this->assertSame('Хуилка', huify('вилка'));
        $this->assertSame('Хуилка', huify('вИлКа'));
    }

    public function testNormalization()
    {
        $this->assertSame('Хуй', huify(''));
        $this->assertSame('Хуй', huify(' '));
        $this->assertSame('Хуй', huify('   '));
        $this->assertSame('Хуилка', huify('  Вилка  '));
        $this->assertSame('Хуй', huify('Й'));
        $this->assertSame('Хуя', huify('А'));
    }
}
