#!/bin/bash
# WILL REMOVE ALL NVIM CONFIG FILES 
# AND GO BACK TO VANILLA NVIM
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
cd ~/.config
mkdir nvim
