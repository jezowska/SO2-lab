#!/usr/bin/env bash

# Zadanie 6.
# Odnaleźć wszystkie dowiązania miękkie, zdefiniowane w katalogu `ccc`, które
# poprawnie wskazują na jakieś miejsce w systemie plików (ich cel istnieje).
# Wyświetlić ścieżki do wskazywanych miejsc, konstruując je jako ścieżki
# względem katalogu domowego bieżącego użytkownika (zmienna ${HOME}).

find ccc -type l -xtype f 2> /dev/null \
| sort -u \
| while IFS= read -r f; do
    l=$(readlink -f "${f}")
    realpath --relative-to="${HOME}" "${l}"
done
