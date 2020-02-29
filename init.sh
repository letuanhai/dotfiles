#!/bin/bash

# add Fish repository
sudo apt-add-repository -y ppa:fish-shell/release-3

# install tools
sudo apt-get -y install fish tmux python3-pip fonts-powerline

# set fish shell as default shell
chsh -s /usr/bin/fish

# remove existing configs
rm -rf ~/.vim ~/.config/fish/config.fish ~/.vimrc ~/.tmux ~/.tmux.conf 2> /dev/null
sudo rm -rf /etc/wsl.conf

# make necessary directory
mkdir ~/.config ~/.config/fish

# linking configs
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/config.fish ~/.config/fish/config.fish
sudo ln -s ~/dotfiles/wsl.conf /etc/wsl.conf

# install tmux plugins manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
