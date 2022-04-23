#!/usr/bin/env bash

# Zadanie 5.
# Odnaleźć w katalogu `ccc` wszystkie wiszące dowiązania miękkie – to jest
# takie, które wskazują na elementy nieistniejące w systemie plików.
# Wyświetlić ścieżki wskazywane przez te dowiązania, każdą w osobnej linii.
# Nie wyświetlać nic ponadto!


 for file in ccc/*; do
     if [[ ! -e $file ]]; then
        var=`readlink $file`
        echo "${var}"
     fi
 done

