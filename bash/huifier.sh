#!/bin/bash

word=${1,,}
vowels="аеёиоуыэюя"
declare -A rules=( ["а"]="я" ["о"]="е" ["у"]="ю" ["ы"]="и" ["э"]="е" )

while [[ ! -z $word ]]; do
    letter=${word:0:1}
    if [[ $vowels == *$letter* ]]; then
        if [ -v rules[$letter] ]; then
            word=${rules[$letter]}${word:1}
        fi
        break
    fi
    word=${word:1}
done

[[ -z $word ]] && echo "Хуй" || echo "Ху$word"
