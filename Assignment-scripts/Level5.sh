#!/bin/bash

set -e

mkdir Battlefield
files=( "knight" "sorcerer" "rogue" )

for file in "${files[@]}"
do
        touch Battlefield/$file.txt
done

ls Battlefield | grep knight.txt > /dev/null

if [ $? -eq 0 ]
then
        mkdir Archive
        mv Battlefield/knight.txt Archive
fi

ls Battlefield Archive
