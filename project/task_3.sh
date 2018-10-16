#!/bin/bash

if [ "$#" != "1" ]
then
	echo "Niepoprawna lista parametrow!"
	exit 1;
fi

# Version 1
echo 'Version 1:':	
random_line=$(echo "$RANDOM % 6" | bc)
head -n $random_line $1 | tail -n 1

# Version 2
echo 'Version 2:':
shuf -n 1 $1
