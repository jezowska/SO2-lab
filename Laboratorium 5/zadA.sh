#!/usr/bin/env bash

# Systemy operacyjne 2 – laboratorium nr 5 – semestr letni 2020/2021

# Zadanie 10.
# Plik `dodatkowe/listaSluchaczy_E07-19x.csv` odwzoruje listę studentów
# zapisanych na kurs, którą prowadzący może pobrać z systemu Edukacja.CL
# (co do struktury, z poprawionym już kodowaniem). Proszę wygenerować
# adresy e-mail do wszystkich słuchaczy, wiedząc, iż numery albumów
# znajdują się w drugiej kolumnie od pewnego miejsca w pliku, zaś
# numer indeksu stanowi 6 ostatnich znaków z zapisanego numeru albumu.
# Format każdego adresu e-mail to {nr-indeksu}@student.pwr.edu.pl.
# Każdy adres e-mail wyświetlać w osobnej linii, nie wyświetlać nic ponadto.


cat dodatkowe/listaSluchaczy_E07-19x.csv | tail -n +14 | cut -f 2 -d ';' |  grep . | sed 's/^....//' | sed 's/$/@student.pwr.edu.pl/'