#!/bin/bash

echo "Hi, What would you like to check? Please choose a number"
echo
echo "1. Disk Usage"
echo
echo "2. System Uptime"
echo
echo "3. Users on the system"
echo
read user_choice

if [ "$user_choice" -eq 1 ]
then
    echo "Disk Usage is"
    echo "------------------------------"
    df -h
elif [ "$user_choice" -eq 2 ]
then
    echo "System uptime is"
    echo "------------------------------"
    uptime
elif [ "$user_choice" -eq 3 ]
then
    echo "Users on the system"
    echo "------------------------------"
    awk -F':' '{ print $1}' /etc/passwd
else
    echo "Unknown input. Please try again"
fi
