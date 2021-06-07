function huify(word) {
  word = word.toLowerCase().trim();
  const vowels = 'аеёиоуыэюя';
  const rules = {
    'а': 'я',
    'о': 'ё',
    'у': 'ю',
    'ы': 'и',
    'э': 'е',
  }
  while (word.length) {
    const letter = word[0];
    if (vowels.indexOf(letter) != -1) {
      if (letter in rules) {
        word = rules[letter] + word.slice(1);
      }
      break;
    } else {
      word = word.slice(1);
    }
  }
  return word ? `Ху${word}` : 'Хуй';
}

if (typeof module !== 'undefined' && module.exports) {
  module.exports = huify;
}
