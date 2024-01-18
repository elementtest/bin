#!/bin/bash

# set width and height from user input 
read -p "select the width " width
echo "width is ${width}"
read -p "select the height " height
echo "height is ${height}"
# height="$2"

# set number of images to download 
read -p "select how many images " numim
echo "number to be downloaded is ${numin}"
# num_images="$3"

# function to generate a random filename
generate_random_filename() {
    echo "random_image_$(date +%s).jpg"
}

#create random variable
declare random="?random"
declare https="https://unsplash.it"
declare dimensions="${width}/${height}"
# download num_images number of random images 
for ((i=1; i<=$numim; i++)); do
    # generate a random filename
    filename="random_image_$(date +%s)"

    # download the image using wget 
   wget -q -O "${width}/${height}/${filename}.jpg" "$https/${dimensions}/${random}" 

    echo "Downloaded: $filename"
done






