#!/bin/bash
# takes all files in a folder and puts them into one file (that user names)
temp_file=$(mktemp)

for file in *; do
    if [[ -f "$file" ]]; then
        echo "===== $file =====" >> "$temp_file"
        cat "$file" >> "$temp_file"
        echo -e "\n" >> "$temp_file"
    fi
done

read -p "Enter the name for the combined file: " output_file

mv "$temp_file" "$output_file"

echo "All files have been combined into '$output_file'."

