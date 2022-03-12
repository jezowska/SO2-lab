#!/usr/bin/env bash

# Daria Jeżowska 252731

# Zadanie 2.
# Zweryfikować istnienie i zawartość pliku `drugi` z katalogu `ddd`.
# Plik powinien zawierać napis `Ala ma kota.`. Jeśli czegoś brakuje
# to odpowiedni plik stworzyć lub nadpisać istniejący.

variable='Ala ma kota'
if [[ ! -f "ddd/drugi" ]]   #sprawdzenie czy plik drugi istnieje
then 
    echo 'Ala ma kota' > ddd/drugi
    echo 'Plik drugi został utworzony i jego zawartość to Ala ma kota'
else 
    if [[ "$variable" == "$(cat ddd/drugi)" ]]
    then 
        echo 'Plik drugi istnieje i jego zawartość to Ala ma kota'
    else 
        echo 'Ala ma kota' > ddd/drugi
        echo 'Plik drugi istniał, ale dopiero teraz jego zawartość to Ala ma kota'
    fi
fi