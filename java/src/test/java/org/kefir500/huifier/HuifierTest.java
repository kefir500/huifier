package org.kefir500.huifier;

import org.junit.Test;

import static org.junit.Assert.*;

public class HuifierTest {

    @Test
    public void testRandomWords() {
        Huifier huifier = new Huifier();
        assertEquals("Хуилка", huifier.huify("Вилка"));
        assertEquals("Хуелик", huifier.huify("Толик"));
        assertEquals("Хуяблоко", huifier.huify("Яблоко"));
        assertEquals("Хуясный", huifier.huify("Красный"));
        assertEquals("Хуюассан", huifier.huify("Круассан"));
        assertEquals("Хую", huifier.huify("Хрю"));
    }

    @Test
    public void testVowelRules() {
        Huifier huifier = new Huifier();
        assertEquals("Хуярка", huifier.huify("Арка"));
        assertEquals("Хуедут", huifier.huify("Едут"));
        assertEquals("Хуёжик", huifier.huify("Ёжик"));
        assertEquals("Хуиглу", huifier.huify("Иглу"));
        assertEquals("Хуекна", huifier.huify("Окна"));
        assertEquals("Хуюрна", huifier.huify("Урна"));
        assertEquals("Хуик", huifier.huify("Стык"));
        assertEquals("Хуепос", huifier.huify("Эпос"));
        assertEquals("Хуюрта", huifier.huify("Юрта"));
        assertEquals("Хуящик", huifier.huify("Ящик"));
    }

    @Test
    public void testLetterCase() {
        Huifier huifier = new Huifier();
        assertEquals("Хуилка", huifier.huify("Вилка"));
        assertEquals("Хуилка", huifier.huify("вилка"));
        assertEquals("Хуилка", huifier.huify("вилка"));
        assertEquals("Хуилка", huifier.huify("вИлКа"));
    }

    @Test
    public void testNormalization() {
        Huifier huifier = new Huifier();
        assertEquals("Хуй", huifier.huify(""));
        assertEquals("Хуй", huifier.huify(" "));
        assertEquals("Хуй", huifier.huify("   "));
        assertEquals("Хуилка", huifier.huify("  Вилка  "));
        assertEquals("Хуй", huifier.huify("Й"));
        assertEquals("Хуя", huifier.huify("А"));
    }
}
