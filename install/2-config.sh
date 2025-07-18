#!/bin/sh

source ~/.acr/utils.sh

_logColor "$cyan" "$log_header" "we need to add your user to the input group"
sudo usermod -a -G input $USER

_logColor "$cyan" "$log_header" "copying dotfiles to $HOME/.config/"

# Copy the config files
cp -R ~/.acr/dotfiles/* ~/.config/

echo "source ~/.acr/dotfiles/.bashrc" >~/.bashrc

