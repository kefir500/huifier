def huify(word)
  word = word.downcase.strip
  vowels = 'аеёиоуыэюя'
  rules = {
    'а' => 'я',
    'о' => 'ё',
    'у' => 'ю',
    'ы' => 'и',
    'э' => 'е',
  }
  word.split('').each do |letter|
    if vowels.include?(letter) then
      if rules.key?(letter) then
        word = rules[letter] + word[1..-1]
      end
      break
    else
      word = word[1..-1]
    end
  end
  return word.empty? ? 'Хуй' : 'Ху' + word
end
