#!/bin/bash
#script prompts user for filename then will sequentially 
#create numbered scripts / files
#great for tutorials that require a lot of files
#COUNTER STORED IN CURRENT WORKING DIRECTORY NOT BIN FOLDER

#(EDIT BELOW BASED ON NEEDED FILE... ie html / bash script / etc

#current directory you are in is my_dir
my_dir=`pwd`
file=$my_dir/counter

#create counter file if not existant
if test -f "$file"; then
    echo "$file is already here"
else
    echo "counter does not exist. creating now.."
    touch $file
    echo "0" > $file
fi

#ask for user input filename
read -p "enter file name here: " word 

#read counter file and put in number var
number=$(<"$file")
#increment counter by 1
echo $((number+1)) > "$file"

#create new file put shebang chmod and open in vim
newf="$number$word".sh
touch $newf
chmod +x $newf
echo "#!/bin/bash" > $newf

vim $newf


