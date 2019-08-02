describe('Huifier', function () {

  var huify = require('./huifier');

  it('should huify words', function () {
    expect(huify('Вилка')).toEqual('Хуилка');
    expect(huify('Толик')).toEqual('Хуёлик');
    expect(huify('Яблоко')).toEqual('Хуяблоко');
    expect(huify('Красный')).toEqual('Хуясный');
    expect(huify('Круассан')).toEqual('Хуюассан');
    expect(huify('Хрю')).toEqual('Хую');
  });

  it('should apply rules for vowels', function () {
    expect(huify('Арка')).toEqual('Хуярка');
    expect(huify('Едут')).toEqual('Хуедут');
    expect(huify('Ёжик')).toEqual('Хуёжик');
    expect(huify('Иглу')).toEqual('Хуиглу');
    expect(huify('Окна')).toEqual('Хуёкна');
    expect(huify('Урна')).toEqual('Хуюрна');
    expect(huify('Стык')).toEqual('Хуик');
    expect(huify('Эпос')).toEqual('Хуепос');
    expect(huify('Юрта')).toEqual('Хуюрта');
    expect(huify('Ящик')).toEqual('Хуящик');
  });

  it('should handle different letter cases', function () {
    expect(huify('Вилка')).toEqual('Хуилка');
    expect(huify('вилка')).toEqual('Хуилка');
    expect(huify('вилка')).toEqual('Хуилка');
    expect(huify('вИлКа')).toEqual('Хуилка');
  });

  it('should normalize the input', function () {
    expect(huify('')).toEqual('Хуй');
    expect(huify(' ')).toEqual('Хуй');
    expect(huify('   ')).toEqual('Хуй');
    expect(huify('  Вилка  ')).toEqual('Хуилка');
    expect(huify('Й')).toEqual('Хуй');
    expect(huify('О')).toEqual('Хуё');
  });
});
