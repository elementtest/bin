#!/bin/bash
read -p "let your thoughts die here:: " input

echo "$input" >> ~/.3emac.rt
#disable backup
#echo "$input" >> ~/.3emac.rtbackup
#clear entire file
#echo "" > ~/.3emac.rt
clear
