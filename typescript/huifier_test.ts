import { Huifier } from './huifier';

 describe('Huifier', function () {

  let huifier = new Huifier();

  it('should huify words', function () {
    expect(huifier.huify('Вилка')).toEqual('Хуилка');
    expect(huifier.huify('Толик')).toEqual('Хуелик');
    expect(huifier.huify('Яблоко')).toEqual('Хуяблоко');
    expect(huifier.huify('Красный')).toEqual('Хуясный');
    expect(huifier.huify('Круассан')).toEqual('Хуюассан');
    expect(huifier.huify('Хрю')).toEqual('Хую');
  });

  it('should apply rules for vowels', function () {
    expect(huifier.huify('Арка')).toEqual('Хуярка');
    expect(huifier.huify('Едут')).toEqual('Хуедут');
    expect(huifier.huify('Ёжик')).toEqual('Хуёжик');
    expect(huifier.huify('Иглу')).toEqual('Хуиглу');
    expect(huifier.huify('Окна')).toEqual('Хуекна');
    expect(huifier.huify('Урна')).toEqual('Хуюрна');
    expect(huifier.huify('Стык')).toEqual('Хуик');
    expect(huifier.huify('Эпос')).toEqual('Хуепос');
    expect(huifier.huify('Юрта')).toEqual('Хуюрта');
    expect(huifier.huify('Ящик')).toEqual('Хуящик');
  });

  it('should handle different letter cases', function () {
    expect(huifier.huify('Вилка')).toEqual('Хуилка');
    expect(huifier.huify('вилка')).toEqual('Хуилка');
    expect(huifier.huify('вилка')).toEqual('Хуилка');
    expect(huifier.huify('вИлКа')).toEqual('Хуилка');
  });

  it('should normalize the input', function () {
    expect(huifier.huify('')).toEqual('Хуй');
    expect(huifier.huify(' ')).toEqual('Хуй');
    expect(huifier.huify('   ')).toEqual('Хуй');
    expect(huifier.huify('  Вилка  ')).toEqual('Хуилка');
    expect(huifier.huify('Й')).toEqual('Хуй');
    expect(huifier.huify('А')).toEqual('Хуя');
  });
});
