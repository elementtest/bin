#!/bin/bash
# README: Script to randomize the order of JPG files in a folder

# Check if there are any JPG files in the current directory
if [ "$(ls *.jpg)" ]; then
    # Get a list of all JPG files in the current directory
    files=$(ls *.jpg)

    # Create an array to store the randomized file names
    declare -a randomized_names

    # Generate random names for each JPG file and rename them
    for file in $files; do
        # Generate a random string of characters for the new file name
        random_name=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 10)

        # Keep the .jpg extension while renaming the file with the random name
        mv "$file" "${random_name}.jpg"

        # Add the randomized name to the array
        randomized_names+=("${random_name}.jpg")
    done

    # Print the randomized file names
    echo "Randomized JPG file names:"
    printf '%s\n' "${randomized_names[@]}"
else
    echo "No JPG files found in the current directory."
fi

