#!/usr/bin/env bash

# Zadanie 5.
# Na podstawie pliku `dodatkowe/etc-services` określić jakie numery portów
# możemy standardowo skojarzyć z usługą syslog*. Interesują nas same numery
# portów, bez protokołów i bez powtórzeń, każdy wypisany w osobnej linii.
# (* – wyszukać wszystkie linie, rozpoczynające się od słowa 'syslog')
#

tail -n+2 dodatkowe/etc-services | grep "syslog" | cut -f1 -d'/' | rev | cut -f1 -d' ' | rev | sort | uniq