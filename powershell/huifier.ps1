
function Set-Huify ($Word) {

    $Word = $Word.ToLower().Trim().ToCharArray()
    $Vowels = 'аеёиоуыэюя'.ToCharArray()
    $Rules = @{
        'а' = 'я'
        'о' = 'е'
        'у' = 'ю'
        'ы' = 'и'
        'э' = 'е'
    }

    foreach ( $Letter in $Word ) {

        if ( $Letter -in $Vowels ) {

            if ($Letter -in $Rules.Keys) {
                $Word = , $Rules["$Letter"] + $Word[1..$Word.Length]
            }

            break
        }
        else {
            $Word = $Word[1..$Word.Length]
        }

    }

    $Word ? 'Ху' + $($Word -join '') : 'Хуй'

}

Set-Huify -Word $(Read-Host "Введите слово")