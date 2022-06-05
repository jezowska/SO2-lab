#!/usr/bin/env bash

# Zadanie 1.
# Plik `dodatkowe/etc-passwd` zawiera przykładowy spis użytkowników w systemie
# Linux – każdy użytkownik jest zdefiniowany w osobnej linii. Proszę podać
# ilu jest użytkowników w tym systemie. Jako wynik zwrócić samą liczbę!

wc -l dodatkowe/etc-passwd | cut -d' ' -f1