#!/usr/bin/env bash

# Zadanie 4.
# Analizując zawartość pliku `dodatkowe/ps-aux`, który zawiera przykładową
# listę uruchomionych procesów (wynik komendy `ps aux`), określić nazwy
# użytkowników, mających aktualnie uruchomione jakieś procesy.
# Nazwy użytkowników znajdują się w pierwszej kolumnie w pliku.
# Proszę pamiętać o pominięciu nagłówka z nazwami kolumn.
# Wyświetlić same nazwy, bez powtórzeń.


tail -n+2 dodatkowe/ps-aux | cut -f1 -d' '  | sort | uniq 