#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]
then
    echo "Some parameters were not specified"
    exit 1
fi

file="$1"

mkdir -p "${file%/*}" && touch "$file"

if [ ! $(echo $?) -eq "0" ] 
then
    echo "File $1 cannot be created" 
    exit 1
fi

echo $2 > $1