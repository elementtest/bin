#!/bin/bash
#copy contents of file specified to system clipboard using xclip
ls
read -p "what file do you want to copy to clipboard?: " input

xclip -sel clip < $input
