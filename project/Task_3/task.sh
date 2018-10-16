#!/bin/bash

if [ "$1" == "-h" ]; then
    printf "\n\t-----------------------------\n"
	printf "\nUtwórz plik z min 6 tekstami powitalnymi i zapisz je do pliku (każde powitanie w osobnej linii). Napisz skrypt, który będzie wyświetlał losowe powitanie z pliku (zrób 2 wersje, jedna z wykorzystaniem: head, tail, bc, expr, druga: shuf)\n\n"
    printf "\t#1 Parameter: Name of file with list of greetings. \n\t\tE.g. data.txt\n"
    printf "\t-----------------------------\n\n"    
    exit 0
fi

if [ "$#" != "1" ]
then
	echo "Niepoprawna lista parametrow!"
	exit 1;
fi

# Version 1
printf "\nVersion 1 (head, bc, tail):"
random_line=$(echo "$RANDOM % 6" | bc)
printf "\t" 
head -n $random_line $1 | tail -n 1

# Version 2
printf "\nVersion 2 (shuf):"
printf "\t\t"
shuf -n 1 $1
printf "\n"