#!/usr/bin/env bash

# Zadanie 7.
# Odnaleźć w pliku `dodatkowe/ps-aux` proces, który zużywa najwięcej czasu
# procesora (trzecia kolumna). Jako wynik zwrócić numer procesu (druga kolumna)
# oraz po spacji pełną nazwę procesu (wszystko od 11 kolumny do końca wiersza).

tail -n +2 dodatkowe/ps-aux | sort -k 3r | head -n 1 | tr -s "[:blank:]" | cut -d ' ' -f 2,11-