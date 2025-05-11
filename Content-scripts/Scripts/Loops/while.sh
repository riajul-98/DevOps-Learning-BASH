#!/bin/bash

count=1

while [ $count -le 5 ]
do
    echo "Count: $count"
    ((count++)) # Adds 1
done