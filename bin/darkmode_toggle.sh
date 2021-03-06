#!/bin/bash

# Check OS
os_name=$(uname -s)
if [ "$os_name" != "Darwin" ]
then
  echo "Error: Only works on MacOS."
  exit 1
fi

defaults read -g AppleInterfaceStyle 1>/dev/null 2>&1

if [ $? -eq 0 ]
then
  # gsed -i 's/\(^colors.*\)light/\1dark/'  $HOME/dotfiles/terminal/alacritty.yml
  gsed -i 's/background=light/background=dark/g' $HOME/dotfiles/vimrc
else
  # gsed -i 's/\(^colors.*\)dark/\1light/'  $HOME/dotfiles/terminal/alacritty.yml
  gsed -i 's/background=dark/background=light/g' $HOME/dotfiles/vimrc
fi
