#!/usr/bin/env bash

# Zadanie 7.
# Odnaleźć w katalogu `bbb` wszystkie dowiązania miękkie, które wskazują
# na jakiś cel przy pomocy ścieżki bezwzględnej. Zapisać do pliku `linki`
# w katalogu `ddd` wszystkie te ścieżki, ale poprawione w taki sposób,
# aby były one ścieżkami kanonicznymi. Istnienie elementu wskazywanego
# przez dowiązanie nie ma dla nas znaczenia.

true > linki
find bbb -type l 2> /dev/null \
| while IFS= read -r f; do
    l=$(readlink -f "${f}" | grep -E '^\/')
    realpath "${l}" >> linki 2> /dev/null
done