#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]
then
    echo "Some parameters were not specified"
    exit 1
fi

if [ ! -d $1 ] 
then
    echo "Directory $1 does not exists" 
    exit 1
fi

files_num=$(find "$1" -type f | wc -l)
matching_lines=$(grep -s -r $2 "$1" | wc -l)
echo "The number of files are $files_num and the number of matching lines are $matching_lines" 