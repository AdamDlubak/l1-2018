#!/bin/bash

if [ "$1" == "-h" ]; then
    printf "\n\t-----------------------------\n"
    printf "\t#1 Parameter: Name of file with list of folder names. \n\t\tE.g. task_4_folder_names.txt\n"
    printf "\t#2 Parameter: Intiger numer - number of subfolders with random names in created folders. \n\t\tE.g. 3\n"
    printf "\t-----------------------------\n\n"    
    exit 0
fi

if [ "$#" != "2" ]
then
	echo "Niepoprawna lista parametrow!"
	exit 1;
fi

filename="$1"
subfolders_number="$2"

mkdir "Created_Folders"

while IFS=$' \t\n\r' read -r folder_name
do
    mkdir "Created_Folders"/$folder_name
    for i in $(eval echo "{1..$subfolders_number}")
    do
        mkdir "Created_Folders"/$folder_name/"$RANDOM"
    done

done < "$filename"
