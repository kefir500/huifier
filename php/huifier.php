<?php

function huify($word) {
    $word = mb_strtolower(trim($word));
    $vowels = 'аеёиоуыэюя';
    $rules = [
        'а' => 'я',
        'о' => 'ё',
        'у' => 'ю',
        'ы' => 'и',
        'э' => 'е',
    ];
    while (mb_strlen($word)) {
        $letter = mb_substr($word, 0, 1);
        if (mb_strpos($vowels, $letter) !== false) {
            if (array_key_exists($letter, $rules)) {
                $word = $rules[$letter] . mb_substr($word, 1);
            }
            break;
        } else {
            $word = mb_substr($word, 1);
        }
    }
    return empty($word) ? 'Хуй' : 'Ху'. $word;
}
