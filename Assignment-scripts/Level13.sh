#!/bin/bash

mkdir -p "$backup_dir"

timestamp=$(date +%Y%m%d_%H%M%S)
backup_name="backup_$timestamp"
backup_path="$backup_dir/$backup_name"

cp -r "$source_dir" "$backup_path"

cd "$backup_dir" || exit 1

ls -1t | tail -n +6 | xargs rm -rf

echo "Directory has been backed up!"
