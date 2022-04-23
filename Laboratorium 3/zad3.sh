#!/usr/bin/env bash

# Zadanie 3.
# Utworzyć w katalogu `ddd` dowiązania do wszystkich plików wykonywalnych
# z katalogu `aaa`. Nazwy tworzonych dowiązań mają pokrywać się z nazwami
# oryginalnych plików. Rodzaj dowiązania nie ma znaczenia, ale należy
# upewnić się, że nie zmienimy żadnych istniejących plików w `ddd`.
cd aaa
for file in *; do
    if [[ -x $file ]]; then
        if [[ ! -f ../ddd/$file ]]; then
            ln -s ../aaa/$file ../ddd/$file
        fi
    fi 
done 
