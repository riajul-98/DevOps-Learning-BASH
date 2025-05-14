#!/bin/bash

Directory="$1"

if [ -z "$Directory" ]
then
        ls -lSr *.txt | awk '{print $5, $9}'
elif [ ! -d "$Directory" ]
then
        echo "Directory not found."
        exit 1
else
        ls -lSr "$Directory"/*.txt | awk '{print $5, $9}'
fi
