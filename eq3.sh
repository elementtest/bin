#!/bin/sh
# if you don't have the script's cwd set, you get XML errors
export WINEPREFIX="$HOME/.wine/"
cd ~/.wine/drive_c/"Program Files (x86)"/Sony/EverQuest/
# 2>/dev/null dumps error messages generated from script into trash
# error messages dont do anything.  Game should work fine
# based on linux guide https://wiki.project1999.com/EverQuest_in_Linux_Guide
wine eqgame.exe patchme 2>/dev/null
