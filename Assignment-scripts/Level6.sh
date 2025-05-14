#!/bin/bash

filename="$1"

if [ -z "$filename" ]
then
        echo "No file provided"
elif [ -f "$filename" ]
then
        lines=$(wc -l "$filename" | awk '{print $1}')
        echo "'$filename' has $lines lines"
else
        echo "'$filename' does not exist"
fi
