#!/bin/bash

dir="$1"
disk=$(du $dir | awk '{print $1}')
threshold=1

if [ "$disk" -gt "$threshold" ]
then
        echo "Disk usage exceeding "$threshold"!"
else
        echo "Disk usage not exceeding threshold!"
fi
