#!//bin/bash
# ttest move .bashrc file to git repository foldder then update using kmgite script

# move the .bashrc file to ~/bashrc/ folder 
cp ~/.bashrc ~/bashrc/.bashrc || exit 1

cd ~/bashrc/

kmgit.sh
