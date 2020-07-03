#!/bin/bash

# install tools
sudo apt-get -y install zsh tmux python3-pip fonts-powerline vim-gtk3

# setting default shell
chsh -s /usr/bin/zsh

# remove existing configs
rm -rf ~/.vim ~/.zshrc ~/.vimrc ~/.tmux ~/.tmux.conf 2> /dev/null
sudo rm -rf /etc/wsl.conf

# make necessary directory
mkdir ~/.config

# linking configs
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/zshrc ~/.zshrc
#sudo ln -s ~/dotfiles/wsl.conf /etc/wsl.conf

# install tmux plugins manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
