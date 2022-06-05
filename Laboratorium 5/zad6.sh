#!/usr/bin/env bash

# Zadanie 6.
# Plik `dodatkowe/ss-tulpn` zawiera wynik przykładowego uruchomienia komendy
# `ss -tulpn` – proszę na jego podstawie określić numery portów, na których
# jakiś proces nasłuchuje na połączenia przychodzące z zewnątrz w sieci IPv4*.
# Wyświetlić same numery portów, każdy w nowej linii.
# (* – chodzi o wpisy, zawierające adres 0.0.0.0 w kolumnie 5).

#grep '0.0.0.0:*' dodatkowe/ss-tulpn 
#| rev | cut -f1 -d":" | rev

grep -o '0.0.0.0:[0-9]*' dodatkowe/ss-tulpn | rev | cut -f1 -d":" | rev | grep -v -e '^[[:space:]]*$' 