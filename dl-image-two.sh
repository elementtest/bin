#!/bin/bash

# Function to generate a random number within a range

# Get user input for height, width, and the number of images
read -p "Enter the desired height: " height
read -p "Enter the desired width: " width
read -p "Enter the number of images to download: " num_images

# Create a directory to store downloaded images
mkdir -p downloaded_images

# Iterate through the specified number of images
for ((i=1; i<=$num_images; i++)); do

  # Construct the image URL
  image_url="https://picsum.photos/${width}/${height}"

  # Download the image and save it with a sequentially numbered file name
  filename="downloaded_images/random_image_${i}.jpg"
  wget -O "$filename" "$image_url"
  echo "Image $i downloaded successfully as $filename"
done

echo "Download of $num_images images completed."

