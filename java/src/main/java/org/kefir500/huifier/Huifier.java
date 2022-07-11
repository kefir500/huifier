package org.kefir500.huifier;

import java.util.HashMap;

public class Huifier {

    public static String huify(String word) {
        word = word.toLowerCase().trim();

        String vowels = "аеёиоуыэюя";
        HashMap<Character, Character> rules = new HashMap<Character, Character>();
        rules.put('а', 'я');
        rules.put('о', 'е');
        rules.put('у', 'ю');
        rules.put('ы', 'и');
        rules.put('э', 'е');

        for (char letter : word.toCharArray()) {
            if (vowels.indexOf(letter) != -1) {
                if (rules.containsKey(letter)) {
                    word = rules.get(letter) + word.substring(1);
                }
                break;
            } else {
                word = word.substring(1);
            }
        }
        return word.isEmpty() ? "Хуй" : "Ху" + word;
    }
}
