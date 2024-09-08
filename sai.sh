#!/bin/bash

# script to ask user for name of the file he wants to sudo apt install
# execute sudo apt install (sai)
# cat the command "sudo apt install <<whatever package>>" to linux-installed file 
# located in the Desktop folder 

# Prompt the user for the package name
read -p "Enter the package name to install: " package_name

# Check if the package name is empty
if [ -z "$package_name" ]; then
  echo "No package name provided. Exiting."
  exit 1
fi

# Execute the package installation
echo "Installing package: $package_name"
if sudo apt install -y "$package_name"; then
  # Define the file path
  file_path="$HOME/Desktop/linux-installed"

  # Log the installation command to the file
  echo "sudo apt install $package_name" >> "$file_path"

  # Prompt for additional comments
  read -p "Enter any additional comments to add: " comments

  # Append comments to the file
  if [ -n "$comments" ]; then
    echo "# $comments" >> "$file_path"
    echo "" >> "$file_path"
  fi

  # Confirm the logging
  echo "Installation command and comments logged to $file_path"
else
  # Handle the failure case
  echo "Package installation failed. Command not logged."
  exit 1
fi
