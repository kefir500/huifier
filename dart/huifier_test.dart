import 'huifier.dart';
import 'package:test/test.dart';

void main() {
  test('Should huify words', () {
    expect(huify('Вилка'),'Хуилка');
    expect(huify('Толик'),'Хуелик');
    expect(huify('Яблоко'),'Хуяблоко');
    expect(huify('Красный'),'Хуясный');
    expect(huify('Круассан'),'Хуюассан');
    expect(huify('Хрю'),'Хую');
  });

  test('Should apply rules for vowels', () {
    expect(huify('Арка'),'Хуярка');
    expect(huify('Едут'),'Хуедут');
    expect(huify('Ёжик'),'Хуёжик');
    expect(huify('Иглу'),'Хуиглу');
    expect(huify('Окна'),'Хуекна');
    expect(huify('Урна'),'Хуюрна');
    expect(huify('Стык'),'Хуик');
    expect(huify('Эпос'),'Хуепос');
    expect(huify('Юрта'),'Хуюрта');
    expect(huify('Ящик'),'Хуящик');
  });

  test('Should handle different letter cases', () {
    expect(huify('Вилка'),'Хуилка');
    expect(huify('вилка'),'Хуилка');
    expect(huify('вилка'),'Хуилка');
    expect(huify('вИлКа'),'Хуилка');
  });

  test('Should normalize the input', () {
    expect(huify(''),'Хуй');
    expect(huify(' '),'Хуй');
    expect(huify('   '),'Хуй');
    expect(huify('  Вилка  '),'Хуилка');
    expect(huify('Й'),'Хуй');
    expect(huify('А'),'Хуя');
  });
}
