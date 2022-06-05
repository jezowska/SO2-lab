#!/usr/bin/env bash

# Zadanie 2.
# Wiedząc, że pola w pliku `dodatkowe/etc-passwd` są rozdzielone znakiem
# dwukropka (:), proszę wyodrębnić przy użyciu programu `awk` take nazwy
# użytkowników (pierwsze pole), których identyfikator (trzecie pole)
# wynosi co najmniej 1000, a ich powłoka (siódme pole) to /bin/bash.
# Każdą nazwę użytkownika wypisać w nowej linii.

awk -F ":" '$3 >= 1000 && $7 == "/bin/bash" {print $1}' dodatkowe/etc-passwd
