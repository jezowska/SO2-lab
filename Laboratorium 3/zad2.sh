#!/usr/bin/env bash

# Zadanie 2.
# Utworzyć w katalogu `ddd` dowiązanie symboliczne o nazwie `drugi`
# do pliku `podstawa` z katalogu `aaa`. Rodzaj ścieżki (względna/bezwzględna)
# nie ma znaczenia, ale dowiązanie musi być poprawne. Nie tworzyć dowiązania,
# jeśli jakikolwiek plik o nazwie `drugi` już istnieje w `ddd`.
#

if [[ ! -f ddd/drugi ]]; then
    ln -s ../aaa/podstawa ddd/drugi
fi
