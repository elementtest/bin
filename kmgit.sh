#/bin/bash
#adds all files in folder to github elementtest7@gmail.com

# add a random number to practice typing numbers
# function to get random num between 0 and 32767
get_random_number() {
    # practice typing only certain digits.  change digits variable for what you want 
    # to practice
    digits=(1 3 5 6 8 7 0)
    echo "${digits[$RANDOM % ${#digits[@]}]}"
    #standard numbers 0 to 10 will be echoed uncomment echo line below
    # echo $((RANDOM))
}

# Geenerate a random number by concatenating multiple random numbers
random_number=$(printf "%d" "$(get_random_number)$(get_random_number)$(get_random_number)")

random_number=$((random_number % 100000000000000000001))

echo "Random Number: $random_number"

git add *
read -p "git commit description: " desc
git commit -m "$desc"
git push origin main

