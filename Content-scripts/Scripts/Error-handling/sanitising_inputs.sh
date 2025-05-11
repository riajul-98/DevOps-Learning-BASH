#!/bin/bash

# Function sanitising user inputs

sanitize_string(){
    local input=$1
    local sanitized_input=${input//[^a-zA-Z0-9]/}

    echo $sanitized_input
}

echo "Please enter a username:"
read input_username

sanitized_username=$(sanitize_string "$input_username")

echo "Sanitized username: $sanitized_username"