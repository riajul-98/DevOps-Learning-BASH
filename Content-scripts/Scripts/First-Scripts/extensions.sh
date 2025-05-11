#!/bin/bash

# Renaming all .txt files to .bak
for file in *.txt; do
        mv "$file" "$(file%.txt).bak"
done

: '
Explanating:
- Looping through all .txt files in the current directory
- Use 'mv' command each .txt file to .bak
- The $(file%.txt).bak is the syntax that removes the .txt extension and appends .bak
'