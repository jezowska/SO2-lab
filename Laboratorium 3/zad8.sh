#!/usr/bin/env bash

# Zadanie 8.
# Odszukać w katalogu `ccc` wiszące dowiązania i podjąć próbę ich naprawy
# – zakładamy, że wskazywane przez nie nazwy plików są poprawne, ale doszło
# do jakiegoś zamieszania w strukturze katalogów. Należy odszukać pasujących
# plików w katalogach `aaa` i `bbb`, a jeśli odpowiednie pliki istnieją
# to wyświetlić nazwę dowiązania i po dwukropku proponowaną poprawną ścieżkę
# (na przykład: bravo:../aaa/bravo).

if [[ $# -lt 1 ]]; then
    exit 1
fi

readlink "$(find ccc -type l)" | grep "$1"
