#!/bin/bash

if [ "$1" == "-h" ]; then
    printf "\n\t-----------------------------\n"
    printf "\nFunction used to remove folders after using script task.sh\n\n"
    printf "\t-----------------------------\n\n"    
    exit 0
fi

folder="Created_Folders"

if [ -d $folder ]; 
then
    rm -r $folder
fi
