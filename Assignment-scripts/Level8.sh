#!/bin/bash

word=$1
directory=$2

if [ ! -d "$directory" ]
then
        echo "Directory does not exist"
        exit 1
fi

grep "$word" "$directory"/*.log | awk -F':' '{print $1}'
