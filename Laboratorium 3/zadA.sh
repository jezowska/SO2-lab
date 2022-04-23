#!/usr/bin/env bash

# Zadanie 10.
# Wyszukać w podanym katalogu (pierwszy argument skryptu) wszystkie dowiązania
# twarde do wskazanego pliku (drugi argument skryptu). Nie trzeba uwzględniać
# podkatalogów przy przeszukiwaniu. Wyświetlić same nazwy znalezionych plików.
# Na początku skontrolować liczbę argumentów skryptu i istnienie odpowiednich
# elementów; jeśli podany katalog lub plik nie istnieją – zwrócić ze skryptu
# kod błędu (komenda: exit 1).
#
# Przykład uruchomienia: ./zadA.sh 'bbb' 'ddd/wanted'
#

if [[ $# -lt 2 ]]; then
    exit 1
fi

dir=$1
file=$2

if [[ -d "${dir}" ]] && [[ -h "${file}" ]]; then
    find "${dir}" -samefile "${file}"
else
    exit 1
fi
