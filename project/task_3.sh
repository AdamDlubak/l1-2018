#!/bin/bash

#Ściezki bezwzgledne


if [ "$#" != "1" ]
then
	echo "Niepoprawna lista parametrow!"
	exit 1;
fi


IFS=$'\n' read -d '' -r -a lines < $1

echo 'Version 1:':	

# echo "$RANDOM % 6" | bc
random_line=$(echo "$RANDOM % 6" | bc)
head -n $random_line $1 | tail -n 1


echo 'Version 2:':
shuf -n 1 $1
