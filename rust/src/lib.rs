use std::collections::HashMap;

pub fn huify(word: &str) -> String {
    let mut result: String = word.trim().to_lowercase();

    const VOWELS: &str = "аеёиоуыэюя";
    let mut rules = HashMap::new();
    rules.insert('а', 'я');
    rules.insert('о', 'ё');
    rules.insert('у', 'ю');
    rules.insert('ы', 'и');
    rules.insert('э', 'е');

    for letter in result.clone().chars() {
        if VOWELS.contains(letter) {
            if rules.contains_key(&letter) {
                result = rules[&letter].to_string() + remove_first_letter(&result);
            }
            break;
        } else {
            result = String::from(remove_first_letter(&result));
        }
    }

    if result.is_empty() {
        result = String::from("Хуй");
    } else {
        result = String::from("Ху") + &result;
    }

    result
}

fn remove_first_letter(word: &str) -> &str {
    match word.char_indices().skip(1).next() {
        Some((pos, _)) => &word[pos..],
        None => "",
    }
}
