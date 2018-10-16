#!/bin/bash

if [ "$1" == "-h" ]; then
    printf "\n\t-----------------------------\n"
    printf "\tFunction used to remove folders after using script task_4.sh\n"
    printf "\t-----------------------------\n\n"    
    exit 0
fi

folder="Created_Folders"

if [ -d $folder ]; 
then
    rm -r $folder
fi
