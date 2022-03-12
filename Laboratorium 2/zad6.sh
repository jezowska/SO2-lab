#!/usr/bin/env bash

# Daria Jeżowska 252731

# Zadanie 6.
# Odnaleźć w katalogu `bbb` plik, którego zawartość pokrywa się z zawartością
# pliku `bardzo tajna treść` (jest on w katalogu `ddd`) i skopiować znaleziony
# plik do katalogu `ddd`, jeśli jeszcze go tam nie ma.


for file in bbb/*; do 
    if [[ "$(cat $file)" == "$(cat ddd/bardzo\ tajna\ treść)" ]]
    then 
        echo 'znaleziony'

        cp -n $file ddd
    fi
done