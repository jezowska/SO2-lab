#!/usr/bin/env bash

# Zadanie 5.
# Plik `dodatkowe/nowomowa.txt` zawiera przykładowy tekst z generatora
# http://lipsum.pl/, pozbawiony polskich znaków (dla ułatwienia pracy).
# Proszę przygotować własną wariację narzędzia `wc`, czyli zliczyć
# przy pomocy programu awk ile jest znaków, słów i linii w podanym pliku
# wejściowym. Każdą wartość (tylko liczby!) wpisać w nowej linii.
# Uwaga! Proszę pamiętać o uwzględnieniu znaków końca linii w obliczeniach
# dotyczących liczby znaków!

awk '{sum_char+=length($0); sum_words+=NF} END{print sum_char+NR "\n" sum_words "\n" NR}' dodatkowe/nowomowa.txt