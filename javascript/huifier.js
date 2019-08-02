function huify(word) {
  word = word.toLowerCase().trim();
  var vowels = 'аеёиоуыэюя';
  var rules = {
    'а': 'я',
    'о': 'ё',
    'у': 'ю',
    'ы': 'и',
    'э': 'е',
  }
  while (word.length) {
    var letter = word.charAt(0);
    if (vowels.indexOf(letter) != -1) {
      if (letter in rules) {
        word = rules[letter] + word.slice(1);
      }
      break;
    } else {
      word = word.slice(1);
    }
  }
  return word ? 'Ху' + word : 'Хуй';
}

if (typeof module !== 'undefined' && module.exports) {
  module.exports = huify;
}
