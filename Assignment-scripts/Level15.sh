#!/bin/bash

echo "Hi, What would you like to check? Please choose a number"
echo
echo "1. Disk Usage"
echo
echo "2. System Uptime"
echo
echo "3. Backup Arena Directory"
echo
echo "4. Display settings.conf values"
echo
read user_choice

if [ "$user_choice" -eq 1 ]
then
    echo "Current Disk Usage is: "
    echo "----------------------------------------------"
    df -h
elif [ "$user_choice" -eq 2 ]
then
    echo "System Uptime is:"
    echo "----------------------------------------------"
    uptime
elif [ "$user_choice" -eq 3 ]
then
    backup_dir=Arena_backups
    mkdir -p "$backup_dir"

    timestamp=$(date +%Y%m%d_%H%M%S)
    backup_name="backup_$timestamp"
    backup_path="$backup_dir/$backup_name"

    cp -r Arena "$backup_path"

    cd "$backup_dir" || exit 1

    ls -1t | tail -n +4 | xargs rm -rf
    
    echo "Directory Backup Complete!"

elif [ "$user_choice" -eq 4 ]
then

    file=settings.conf

    if ! -f "$file"
    then
            echo "Cannot locate file"
            exit 1
    fi

    while IFS='=' read -r key value
    do
            echo "Key: $key, Value: $value"
    done < "$file"

else
    echo "Unknown input. Please try again"
fi
