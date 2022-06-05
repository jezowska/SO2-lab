#!/usr/bin/env bash

# Systemy operacyjne 2 – laboratorium nr 5 – semestr letni 2020/2021

# Zadanie 9.
# Określić jaka jest najpopularniejsza nazwa pliku wśród źródeł coreutils,
# czyli jaka nazwa występuje najczęściej. Jako wynik zwrócić tylko samą nazwę.
# Źródła znajdują się w katalogu `coreutils-8.32`.


find coreutils-8.32/ -printf '%f\n' | sort | uniq -c | sort -k 1r | tr -s "[:blank:]" | head -n 1  | cut -d ' ' -f 3 