#!/usr/bin/env bash

# Daria Jeżowska 252731

# Zadanie 1.
# Sprawdzić, czy w katalogu `ddd` istnieje plik o nazwie `pierwszy`,
# a jeśli nie, to go utworzyć. Zawartość pliku nie ma znaczenia.

if [[ ! -f "/ddd/pierwszy" ]]
then 
    touch ddd/pierwszy
fi