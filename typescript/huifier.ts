class Huifier {
  private vowels: string = 'аеёиоуыэюя';
  private rules: Rule[] = [
    new Rule('а', 'я'),
    new Rule('о', 'е'),
    new Rule('у', 'ю'),
    new Rule('ы', 'и'),
    new Rule('э', 'е'),
  ];
  private applyRule(letter: string): string {
    const replacement = this.rules.find(rule => letter === rule.from);
    return replacement ? replacement.to : letter;
  }
  huify(word: string): string {
    word = word.toLowerCase().trim();
    while (word.length) {
      const letter = word[0];
      if (this.vowels.includes(letter)) {
        word = this.applyRule(letter) + word.slice(1);
        break;
      } else {
        word = word.slice(1);
      }
    }
    return word ? `Ху${word}` : 'Хуй';
  }
}

class Rule {
  from: string;
  to: string;
  constructor(from: string, to: string) {
    this.from = from;
    this.to = to;
  }
}

export { Huifier };
