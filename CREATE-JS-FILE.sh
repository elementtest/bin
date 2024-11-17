#/bin/bash
#script to make files and add codewars solutions

ls
read -p "file name ? " filename
touch "$filename.js"
read -p "instructions of the challenge? " shuoming
echo "//$shuoming" >> "$filename.js"
# use xclip to take copy / paste register from system clipboard and append it to file
xclip -selection clipboard -o >> "$filename.js"
cat $filename.js
