#!/usr/bin/env bash

# Systemy operacyjne 2 – laboratorium nr 5 – semestr letni 2020/2021

# Zadanie 8.
# W ilu plikach źródłowych pakietu coreutils występuje linia, której jedyną
# zawartością jest `#include <stdio.h>` (i nic poza tym w ramach tej linii).
# Jako wynik proszę zwrócić tylko i wyłącznie liczbę odpowiednich plików.
# Źródła znajdują się w katalogu `coreutils-8.32`.

find coreutils-8.32 | grep -r -l '^#include <stdio.h>$' | wc -l
