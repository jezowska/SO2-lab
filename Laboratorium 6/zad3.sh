#!/usr/bin/env bash

# Zadanie 3.
# Proszę przygotować w narzędziu awk prosty program, który będzie analizował
# składnię pliku CSV i zwróci numery linii, zawierające błędną liczbę pól.
# Zakładamy, że pierwszą linijką w pliku jest nagłówek z nazwami pól i jest
# on zawsze poprawny (czyli wyznacza nam żądaną liczbę pól). Każdy numer
# problematycznej linii zwrócić w osobnym wierszu standardowego wyjścia.
#
# Plik do przetworzenia to `dodatkowe/cities.csv`, zmodyfikowana wersja
# pliku ze strony: https://people.sc.fsu.edu/~jburkardt/data/csv/csv.html

n="$(head -n 1 dodatkowe/cities.csv | awk '{print NF}')"

cat dodatkowe/cities.csv | awk -F "," 'NF != n {print NR}' n=$n

