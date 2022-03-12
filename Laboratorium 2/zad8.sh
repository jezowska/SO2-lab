#!/usr/bin/env bash

# Daria Jeżowska 252731

# Zadanie 8.
# Utworzyć kopię zapasową wszystkich ważnych plików z katalogów `aaa` i `bbb`
# wewnątrz katalogu `zapasy` w `ddd`. Ważne pliki to takie, które zostały
# zabezpieczone przed modyfikacją (czyli nie mamy prawa zapisu do nich).
# Zachować strukturę plików – czyli w katalogu `zapasy` mają powstać katalogi
# `aaa`, `bbb` i wszelkie potrzebne ich podkatalogi.

if [[ ! -d ddd/zapasy ]]; then
    mkdir ddd/zapasy
fi 

cd aaa 
for file in $(find -type f); do
    if [[ ! -w $file ]]; then
        cp $file ../ddd/zapasy
    fi
done