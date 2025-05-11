#!/bin/bash

for (( i=1; i<=5; i++ ))
do
    if [ $i -eq 3 ]
    then
        break
    fi
    echo "Number: $i"
done