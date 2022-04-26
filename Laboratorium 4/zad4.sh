#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 4 – semestr letni 2021/2022

# Zadanie 4.
# Odszukać wykonywalne pliki zwykłe i policzyć ile ich jest. Następnie policzyć
# ile jest wykonywalnych skryptów powłoki pośród nich (plików z rozszerzeniem
# .sh na końcu nazwy). Jako wynik zwrócić ułamek w postaci X/Y i nic więcej.


var=`find linux-5.11.13/ -executable -type f | wc -l`
var2=`find linux-5.11.13/ -executable  -name '*.sh' | wc -l`

echo "$var2/$var"
