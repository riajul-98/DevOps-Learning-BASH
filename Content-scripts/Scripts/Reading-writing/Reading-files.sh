#!/bin/bash

read_file(){
    local file_path="$1"

    while IFS= read -r line;    # IFS is used to preserve whitespaces (spaces). -r is used to preserve backslashes. 
    do
        echo "$line"
    done < "$file_path"
}

read_file "./log.txt"


process_file(){
    local file_path="$1"

    cat "$file_path | while IFS= read -r line"
        echo "Processing line: $line"
        # additional processing logic
    done   
}

process_file "./log.txt"