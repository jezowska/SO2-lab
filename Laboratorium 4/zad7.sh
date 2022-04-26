#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 4 – semestr letni 2021/2022

# Zadanie 7.
# Wyszukać wszystkie pliki języka Python (rozszerzenie .py na końcu nazwy),
# których nazwa rozpoczyna się wielką literą oraz nie są one wykonywalne.
# Wyświetlić same nazwy pasujących plików, każdą nazwę w osobnej linii.


find linux-5.11.13/ -name "*.py" -name "[[:upper:]]*" ! -executable -printf '%f\n'