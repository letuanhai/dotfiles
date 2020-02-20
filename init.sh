#!/bin/bash

# add Fish repository
apt-add-repository ppa:fish-shell/release-3

# install tools
apt install fish tmux python3-pip

# install tmux plugins manager
rm -rf ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install fonts
apt install fonts-powerline

# set fish shell as default shell
chsh -s /usr/bin/fish

# remove existing configs
rm -rf ~/.vim ~/.config/fish/config.fish ~/.vimrc ~/.tmux ~/.tmux.conf 2> /dev/null

# make necessary directory
mkdir ~/.config ~/.config/fish

# linking configs
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/config.fish ~/.config/fish/config.fish
