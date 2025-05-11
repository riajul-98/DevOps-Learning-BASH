#!/bin/bash

command -v git 2> /dev/null
# Checks if command exists

if [[ $? -ne 0 ]]
then
    echo "git is not installed. Please install git."
    exit 1
else
    echo "git is installed"
fi