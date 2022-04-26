#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 4 – semestr letni 2020/2021

# Zadanie 6.
# Odszukać wszystkie pliki, których rozmiar jest mniejszy od 1 kiB (kibibajta),
# ale jednocześnie tylko ich bezpośredni właściciel (użytkownik) może zmienić
# ich zawartość. Podać ile dokładnie jest takich plików (zwrócić wyłącznie
# liczbę plików).


find linux-5.11.13 -type f -size -1024c -perm -u+w | wc -l
#find linux-5.11.13 -type f -size -1024c -perm -200 | wc -l
