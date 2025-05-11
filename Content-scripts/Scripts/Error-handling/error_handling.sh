#!/bin/bash

num1=10
num2=0

if [ $num2 -eq 0 ]
then
    echo "Error: Devision by zero is not allowed"
    exit 1
fi

result=$((num1 / num2))

echo "The result is: $result"




FILE="/nonexistent"

if [[ -f "$FILE" ]]
then
    echo "File exists"
else
    echo "File does not exist"
fi