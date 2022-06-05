#!/usr/bin/env bash

# Zadanie 4.
# Przeanalizować zawartość pliku `dodatkowe/ps-aux` i zliczyć sumaryczną
# procentowe użycie procesora oraz zajętość pamięci RAM. Odpowiednie dane
# znajdują się w trzeciej i czwartej kolumnie w pliku. Pamiętać o pominięciu
# nagłówka (pierwsza linia w pliku). Jako wynik zwrócić dwa napisy w osobnych
# liniach, a wartości liczbowe poprzedzić etykietą "CPU:" bądź "RAM:".

tail -n +1 dodatkowe/ps-aux | awk '{sum_cpu+=$3} {sum_ram+=$4}  END{print "CPU: " sum_cpu  "\nRAM: " sum_ram}' dodatkowe/ps-aux

