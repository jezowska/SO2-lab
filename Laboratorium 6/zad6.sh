#!/usr/bin/env bash

# Zadanie 6.
# Przygotować narzędzie, które będzie naszym własnym wariantem programu `du`.
# Przy pomocy programu `find` odnaleźć wszystkie pliki w katalogu o nazwie
# `coreutils-8.32` i jako wynik zwrócić ich rozmiar w Bajtach. Następnie użyć
# mechanizmu łącz nienazwanych i przy pomocy programu awk, obliczyć całkowity
# rozmiar w Bajtach. Jako wynik zwrócić liczbę w MebiBajtach.

find  coreutils-8.32 -printf '%s\n' | awk '{sum+=$1} END {print sum/(1024*1024)}'