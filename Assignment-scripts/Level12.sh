#!/bin/bash

file="$1"

if ! -f "$file"
then
        echo "Cannot locate file"
        exit 1
fi

while IFS='=' read -r key value
do
        echo "Key: $key, Value: $value"
done < "$file"
