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
rm -rf ~/.vim ~/.vimrc ~/.tmux ~/.tmux.conf 2> /dev/null

# linking configs
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

# initialize Fish configuration
fish init.fish
