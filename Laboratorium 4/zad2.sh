#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 4 – semestr letni 2021/2022

# Zadanie 2.
# Odnaleźć wszystkie dowiązania miękkie. Jako wynik należy wyświetlić ścieżki
# względne do takich plików (dowiązań, a nie do wskazywanych przez nie celów!).

find linux-5.11.13/ -type l
