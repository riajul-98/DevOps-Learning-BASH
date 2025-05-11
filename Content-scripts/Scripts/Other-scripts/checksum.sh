#!/bin/bash

calculate_md5sum(){
    local file_path="$1"
    md5sum "$file_path"
}

calculate_md5sum "read.txt"

calculate_sha256sum(){
    local file_path="$1"
    sha256sum "$file_path"
}

calculate_sha256sum "read.txt"


compare_checksums(){
    local checksum1="$1"
    local checksum2="$2"

    if [[ "$checksum1" == "$checksum2" ]]
    then
        echo "Checksums match. File is intact"
    else
        echo "Checksums do not match. File integrity compromised."
    fi
}

compare_checksums "123" "1234"