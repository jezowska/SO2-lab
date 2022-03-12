#!/usr/bin/env bash

# Daria Jeżowska 252731

# Zadanie 7.
# Wyszukać w katalogu `bbb` i jego podkatalogach wszystkie pliki zwyczajne
# (nie katalogi!), które są w systemie plików oznaczone jako wykonywalne.
# Utworzyć w katalogu `ddd` plik `ostrzeżenie`, w którym pojawi się informacja
# "Uważaj na te pliki:" oraz lista znalezionych plików (każdy w nowej linii).

echo "Uważaj na te pliki: " > ddd/ostrzeżenie
cd bbb
for file in $(find -type f); do
    if [[ -x $file ]]; then
        echo $(basename $file) >> ../ddd/ostrzeżenie
    fi
done

