#!/bin/bash

files=("warrior" "mage" "archer")

mkdir -p "Arena"

for file in "${files[@]}"
do
        touch Arena/$file.txt
done

ls Arena
