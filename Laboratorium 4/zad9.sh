#!/usr/bin/env bash

# Systemy operacyjne 2 – laboratorium nr 4 – semestr letni 2021/2022

# Zadanie 9.
# Znaleźć pliki zwykłe, które mają pomiędzy 1MiB a 10MiB oraz nie zawierają
# żadnych cyfr w nazwie pliku. Jako wynik proszę wyświetlić rozmiary tych
# plików (w Bajtach) i same ich nazwy, każdy plik jako wpis w osobnej linii,
# rozdzielone jedną spacją (<rozmiar> <nazwa>\n).


find linux-5.11.13/ ! -name '*[0-9]*' -size +1M -size -10M -printf "%s %f\n"