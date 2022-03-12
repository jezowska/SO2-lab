#!/usr/bin/env bash

# Daria Jeżowska 252731

# Zadanie 5.
# Utworzyć katalog o nazwie `głęboki` wewnątrz katalogu `ddd` i skopiować
# do niego wszystkie pliki zwyczajne (żadnych folderów!) znajdujące się
# w katalogu `bbb` i ewentualnych jego podkatalogach.
# Zakładamy, że katalog `głęboki` mógł już wcześniej istnieć – w takim
# przypadku nie należy tworzyć go na nowo, ale upewnić się, że podczas
# kopiowania nie nadpiszemy żadnych istniejących w nim plików!


if [[ ! -d "ddd/głęboki" ]]; then
    cd ddd
    mkdir głęboki
    cd ..
fi

dir=`pwd`

cd bbb
cp $(find -type f) -n "${dir}"/ddd/głęboki