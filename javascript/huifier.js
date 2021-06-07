function huify(word) {
  let result = word.toLowerCase().trim();
  const vowels = 'аеёиоуыэюя';
  const rules = {
    а: 'я',
    о: 'ё',
    у: 'ю',
    ы: 'и',
    э: 'е',
  };
  while (result.length) {
    const letter = result[0];
    if (vowels.indexOf(letter) !== -1) {
      if (letter in rules) {
        result = rules[letter] + result.slice(1);
      }
      break;
    } else {
      result = result.slice(1);
    }
  }
  return result ? `Ху${result}` : 'Хуй';
}

if (typeof module !== 'undefined' && module.exports) {
  module.exports = huify;
}
