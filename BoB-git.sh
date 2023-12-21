#!/bin/bash
#
#copy all files to BoB notes folder
# switch to ~/BoB-Notes-Coding folder and execute kmgit script to upload
cp -r . ~/BoB-NOTES-CODING
cd ~/BoB-NOTES-CODING/NVIM
kmgit.sh
