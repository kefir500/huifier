def huify(word):
    word = word.lower().strip()
    vowels = 'аеёиоуыэюя'
    rules = {
        'а': 'я',
        'о': 'ё',
        'у': 'ю',
        'ы': 'и',
        'э': 'е',
    }
    for letter in word:
        if letter in vowels:
            if letter in rules:
                word = rules[letter] + word[1:]
            break
        else:
            word = word[1:]
    return 'Ху' + word if word else 'Хуй'

if __name__ == '__main__':
    print('Введите слово:')
    print(huify(input()))
