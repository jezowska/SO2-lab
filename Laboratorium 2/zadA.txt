#!/usr/bin/env bash

# Daria Jeżowska 252731

# Zadanie 10.
# Stworzyć zestaw nowych plików w katalogu `zasoby` w `ddd`. Nazwy plików
# do utworzenia zostały podane w kilku plikach `nazwy-1`, `nazwy-2`, itd.,
# które również znajdują się w katalogu `ddd`. Zawartość tworzonych plików
# powinna stanowić liczba, mówiąca ile razy dana nazwa została powtórzona
# w plikach źródłowych `nazwa-...` – to znaczy, domyślnie nowo tworzone pliki
# mają mieć jako zawartość zero (0), jeśli dana nazwa się powtórzy (plik już
# istnieje) to zwiększamy tę wartość na jeden, dwa, itd.
# Zadbać o to, aby każde uruchomienie skryptu miało ten sam efekt – czyli
# aby po drugim uruchomieniu nadal istniały pliki o wartości zero.
# Upewnić się przy tym, że nie usuniemy/nadpiszemy niczego, co było pierwotnie
# w katalogu `zasoby` (możemy zmodyfikować tylko pliki, które podano w plikach
# źródłowych `nazwa-...`; każda nazwa to osobna linia w tych plikach).
#

cd ddd 
for file in $( find -name "nazwy-*" ); do
    echo $file
    cat $file >> hlp
done

sort hlp > nazwy
rm hlp

while read p; do 
    c=$(grep -ic "$p" nazwy)
    (( c-- ))
    echo $c > zasoby/"$p"
done < nazwy