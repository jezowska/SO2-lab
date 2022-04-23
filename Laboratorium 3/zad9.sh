#!/usr/bin/env bash

# Zadanie 9.
# Wyszukać w katalogu `ccc` wszystkie dowiązania, które wskazują na konkretną
# podaną ścieżkę – pierwszy i jedyny argument skryptu. Wyświetlić nazwy tych
# pasujących dowiązań (tylko same nazwy plików dowiązań), każdą nazwę w nowej
# linii. Nie interesuje nas, czy te dowiązania są poprawne (czyli czy istnieje
# jakiś element pod wskazywaną ścieżką). Nie wyświetlać nic ponadto!
# Zakończyć skrypt z błędem (komenda: exit 1) jeśli nie podano argumentu.
#
# Przykład uruchomienia: ./zad9.sh '../aaa/echo'


if [[ $# -eq 0 ]]; then
    exit 1
fi

readlink $(find ccc -type l) | grep "$1"

