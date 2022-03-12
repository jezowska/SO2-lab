#!/usr/bin/env bash

# Daria Jeżowska 252731

# Zadanie 9.
# W katalogu `zasoby` w `ddd` utworzyć plik `tajne hasła`, który zawierać
# będzie połączoną treść wszystkich plików z katalogu `ccc` (oraz jego
# podkatalogów) – ale tylko takich, które potrafimy przeczytać. Niech każda
# nowa zawartość będzie poprzedzona jakimś wyróżniającym się nagłówkiem
# z nazwą pliku z którego ona pochodzi. Upewnić się także, że w trakcie
# procesu nie zgłoszą nam się problemy z dostępem do plików (to znaczy,
# że na pewno możemy je przeczytać).

if [[ ! -d ddd/zasoby ]]; then
    mkdir ddd/zasoby
fi 

cd ccc || exit

while IFS= read -r -d '' file
do
    if [[ -r $file ]]; then
        echo plik: $(basename "$file")  > ../ddd/zasoby/tajne\ hasła
        echo zawartość: $(cat "$file")  > ../ddd/zasoby/tajne\ hasła
    fi
done <   <(find . -type f -print0)