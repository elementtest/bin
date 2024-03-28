#!/bin/bash
# README// script used to randomize order of all files in directory
# Check if there are any files in the current directory
if [ "$(ls -A)" ]; then
    # Get a list of all files in the current directory
    files=$(ls)

    # Create an array to store the randomized file names
    declare -a randomized_names

    # Generate random names for each file and rename them
    for file in $files; do
        # Generate a random string of characters for the new file name
        random_name=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 10)

        # Rename the file with the random name
        mv "$file" "$random_name"

        # Add the randomized name to the array
        randomized_names+=("$random_name")
    done

    # Print the randomized file names
    echo "Randomized file names:"
    printf '%s\n' "${randomized_names[@]}"
else
    echo "No files found in the current directory."
fi

