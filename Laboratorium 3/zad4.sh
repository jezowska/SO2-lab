#!/usr/bin/env bash

# Zadanie 4.
# Utworzyć w katalogu `ddd` dowiązania do katalogów `aaa`, `bbb` i `ccc`.
# Nazwy dowiązań mają być takie same, jak nazwy oryginalnych katalogów.
# Zadbać o to, żeby wielokrotne uruchomienie skryptu nie tworzyło żadnych
# dodatkowych plików/dowiązań wewnętrznych.

if [[ ! -h ddd/aaa ]]; then
    ln -s ../aaa ddd/aaa 
fi
if [[ ! -h ddd/bbb ]]; then
    ln -s ../bbb ddd/bbb 
fi
if [[ ! -h ddd/ccc ]]; then
    ln -s ../ccc ddd/ccc 
fi
