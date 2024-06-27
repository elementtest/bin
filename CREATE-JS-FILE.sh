#/bin/bash
#script to make files and add codewars solutions

read -p "file name ? " filename
touch "$filename"
read -p "instructions of the challenge? " shuoming
echo "//$shuoming" >> "$filename"
# use xclip to take copy / paste register from system clipboard and append it to file
xclip -selection clipboard -o >> "$filename"
cat $filename
