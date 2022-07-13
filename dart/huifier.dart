String huify(String word) {
  var result = word.toLowerCase().trim();
  const vowels = 'аеёиоуыэюя';
  const rules = {
    'а': 'я',
    'о': 'е',
    'у': 'ю',
    'ы': 'и',
    'э': 'е',
  };
  while (!result.isEmpty) {
    var letter = result.substring(0, 1);
    if (vowels.contains(letter)) {
      if (rules.containsKey(letter)) {
        result = '${rules[letter]}${result.substring(1)}';
      }
      break;
    } else {
      result = result.substring(1);
    }
  }
  return !result.isEmpty ? 'Ху${result}' : 'Хуй';
}
