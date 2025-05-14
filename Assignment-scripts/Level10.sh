#!/bin/bash

mkdir -p "Arena_Boss"

for i in {1..5}
do
        File="Arena_Boss/file$i.txt"
        Lines=$((RANDOM % 11 + 10))
        for num_lines in $(seq 1 $Lines)
        do
                echo "Line '$num_lines'" >> "$File"

        done
done

ls -lS Arena_Boss

mkdir -p Victory_Archive

victory_files=$(grep "Victory" Arena_Boss/* | awk -F':' '{print $1}' | uniq)

for file in $victory_files
do
        mv "$file" Victory_Archive
done
