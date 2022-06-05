#!/usr/bin/env bash

# Zadanie 1.
# Korzystając z programu awk, proszę wyświetlić co trzecią linię z pliku
# `dodatkowe/tadeusz.txt`, rozpoczynając od linii numer 2 – czyli wypisać
# linie 2, 5, 8, 11, itd.

# Podany plik zawiera początek naszej epopei narodowej
# (źródło: https://wolnelektury.pl/media/book/txt/pan-tadeusz.txt).

awk 'NR%3==2' dodatkowe/tadeusz.txt