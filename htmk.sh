#!/bin/bash
#script to make a new directory with index, style.css and script.js
read -p "Enter name of directory?  will generate index, css and js inside: then cd into and open index.html  " dirname

mkdir "$dirname" || { echo "Failed to create directory"; exit 1; }

cd "$dirname" || { echo "Failed to change directory"; exit 1; }

touch index.html
touch styles.css
touch script.js

cp ../boilerplate.html index.html  || { echo "failed to copy boilerplate.html"; exit 1;}

cp ../stylesboilerplate.css styles.css || { echo "failed to copy stylesboilerplate.css"; exit 1; }

nvim *





