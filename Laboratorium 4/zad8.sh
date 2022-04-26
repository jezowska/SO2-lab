#!/usr/bin/env bash

# Systemy operacyjne 2 – laboratorium nr 4 – semestr letni 2021/2022

# Zadanie 8.
# Odnaleźć wszystkie puste pliki nagłówkowe języka C (rozszerzenie .h na końcu
# nazwy pliku), ale niezawierające się w katalogu `testing` ani żadnych jego
# podkatalogach. Jako wynik proszę wyświetlić same nazwy pasujących plików
# (każda nazwa w nowej linii).

find linux-5.11.13/ -name "*.h" -empty -not \( -path "*/testing/*" -prune \) -printf '%f\n'

