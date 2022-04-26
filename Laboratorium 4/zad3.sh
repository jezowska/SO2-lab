#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 4 – semestr letni 2021/2022

# Zadanie 3.
# Policzyć ile plików zwykłych znajduje się w źródłach systemu Linux.
# Jako wynik zwrócić tylko i wyłącznie liczbę plików.

find linux-5.11.13/ -type f | wc -l

