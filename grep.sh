#!/bin/bash
# basic script to search all folders and subfolders for a string

# Prompt user for search string
read -p "Enter the string to search for (in this folder and all subfolders) : " search_string

# Run grep
grep -rn "$search_string" .
