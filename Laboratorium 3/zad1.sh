#!/usr/bin/env bash

# Zadanie 1.
# Utworzyć w katalogu `ddd` dowiązanie twarde o nazwie `pierwszy`
# do pliku `podstawa` z katalogu `aaa`. Nie tworzyć dowiązania,
# jeśli jakikolwiek plik o nazwie `pierwszy` już istnieje w `ddd`.
#

if [[ ! -f ddd/pierwszy ]]; then
    ln aaa/podstawa ddd/pierwszy
fi
