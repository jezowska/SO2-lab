#!/usr/bin/env bash

# Zadanie 7.
# Przy pomocy narzędzia awk, obliczyć średnią z wyników dla studentów, mając
# do dostęp do uzyskanych przez nich punktów – dane zapisane w pliku CSV.
# Zakładamy, iż w ciagu semestru odbyły się 4 testy (pola od 4 do 7), które
# liczymy z wagą 1, oraz egzamin końcowy, który liczymy z wagą 2. Jako wynik
# proszę zwrócić numer indeksu (3 kolumna, 11 znaków) i obliczoną średnią,
# każda para w nowej linii. Pamiętać o pominięciu nagłówka!
#
# Plik do przetworzenia to `dodatkowe/grades.csv`, zmodyfikowana wersja
# pliku ze strony: https://people.sc.fsu.edu/~jburkardt/data/csv/csv.html

tail -n +2 dodatkowe/grades.csv | sed 's/[""]//g' | tr -d ' ' | awk -F "," '{avg=($4+$5+$6+$7+$8*2)/(4+2)} {print $3 " " avg}'