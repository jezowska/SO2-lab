#!/usr/bin/env bash

# Daria Jeżowska 252731

# Zadanie 4.
# Utworzyć w katalogu `ddd` plik o nazwie `całość`, który będzie zawierał
# połączoną zawartość wszystkich plików zwykłych z katalogu `aaa`.
# Jeżeli plik `całość` istnieje, to należy nadpisać jego zawartość.
# Kolejność łączenia plików nie ma znaczenia.

if [[ ! -f "ddd/całość" ]]; then
    touch całość
fi

if [[ ! -d "aaa" ]]; then
    mkdir aaa
fi

cd aaa

for file in *; do 
    cat $file >> ../ddd/całość
done