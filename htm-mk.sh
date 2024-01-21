#!/bin/bash
#script to make a new directory with index, style.css and script.js
read -p "Enter name of directory?  will generate index, css and js inside: then cd into and open index.html  " dirname

mkdir "$dirname"

cd "$dirname"

touch index.html
touch style.css
touch script.js






