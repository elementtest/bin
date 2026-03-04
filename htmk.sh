#!/bin/bash
# script to make a directory (user asked for name) then touch html, css and js files
read -p "Enter name of directory?  will generate index, css and js inside: then cd into and open index.html  " dirname

mkdir "$dirname" || { echo "Failed to create directory"; exit 1; }

cd "$dirname" || { echo "Failed to change directory"; exit 1; }

touch index.html
touch style.css
touch script.js

ls





