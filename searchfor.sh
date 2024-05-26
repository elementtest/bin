#!/bin/bash
#script used to search in current directory and all sub directories
#prompts user for what name to be searched for i.e. neovim
# Prompt the user for the filename pattern
read -p "Enter the filename pattern you want to search for: " pattern

# Use the find command to search for the specified pattern
find . -type f -name "*${pattern}*"

