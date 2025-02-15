#!/bin/bash
# Adds all files in folder to GitHub (elementtest7@gmail.com)

# Function to get a random number between 0 and 32767
get_random_number() {
    echo $((RANDOM))
}

# Generate a random number by concatenating multiple random numbers
random_number=$(printf "%d" "$(get_random_number)$(get_random_number)$(get_random_number)")

# Make sure the random number is within a valid range (0 - 100000000000000000001)
random_number=$((random_number % 100000000000000000001))

echo "Random Number: $random_number"

# Ask the user for the random number input
read -p "Enter the random number to continue: " user_input

# Check if the input matches the random number
if [[ "$user_input" -eq "$random_number" ]]; then
    echo "Random number matched. Proceeding with git commands..."
    
    # Git commands to add, commit, and push
    git add *
    read -p "Git commit description: " desc
    git commit -m "$desc"
    git push origin main
else
    echo "Incorrect random number. Please try again."
fi

