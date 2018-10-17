#!/bin/bash

if [ "$1" == "-h" ]; then
    printf "\n\t-----------------------------\n"
        printf "\nKorzystając z mechanizmu opisanego tutaj napisz skrypt, który będzie przyjmował wartość liczbową i adre email w linii poleceń a następnie wysyłał wiadomosc emaila (Vagrant pozwala wysyłać wiadomości tylko z konta root) pod wskazany adres wraz dowolnym komentarzem tekstowym podaną wartością i wszystkimi wartościami zmiennych środowiskowych.\n\n"
    printf "\t#1 Parameter: Intiger numer - Number witch will be send \n\t\tE.g. 3\n"
    printf "\t#2 Parameter: E-mail address to which the message will be sent. \n\t\tE.g. adam.dlubak@gmail.com\n"
    printf "\t-----------------------------\n\n"
    exit 0
fi

if [ "$#" != "2" ]
then
        echo "Niepoprawna lista parametrow!"
        exit 1;
fi

number_regex='^[0-9]+$'
if ! [[ $1 =~ $number_regex ]] ; then
    printf "\t#1 Parameter: Intiger numer - Number witch will be send \n\t\tE.g. 3\n"
    printf "\t#2 Parameter: E-mail address to which the message will be sent. \n\t\tE.g. adam.dlubak@gmail.com\n"
    printf "\t-----------------------------\n\n"
    exit 0
fi

if [ "$#" != "2" ]
then
        echo "Niepoprawna lista parametrow!"
        exit 1;
fi

number_regex='^[0-9]+$'
if ! [[ $1 =~ $number_regex ]] ; then
        echo "Error: First parameter should be a number"
        exit 1
fi

mail -s "Message from WCSS Server" echo $2  <<EOF
Hello in my world!
$1
$(echo printenv)
EOF