#!/usr/bin/env bash

# Systemy operacyjne 2 – laboratorium nr 4 – semestr letni 2020/2021

# Zadanie 5.
# Policzyć ile jest plików źródłowych języka C (czyli mających rozszerzenie .c
# na końcu pełnej nazwy), których sama nazwa (pomijając rozszerzenie) zawiera
# dokładnie 3 dowolne znaki (czyli cała nazwa pliku ma dokładnie pięć znaków).
# Jako wynik zwrócić tylko i wyłącznie liczbę plików.
#

find linux-5.11.13/ -name '*.c' -name '?????' | wc -l