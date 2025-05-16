#!/bin/bash

files=("warrior" "mage" "archer")

mkdir -p "Arena"

for file in "${files[@]}"
do
	echo "Creating '$file'.txt....."
        touch Arena/$file.txt
	echo "'$file.txt' created."
	echo "-------------------------"
done

ls Arena
