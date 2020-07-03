#!/bin/bash

# install tools
brew cask install alacritty font-fira-code
brew install fish tmux neovim reattach-to-user-namespace

# set fish as default shell (not use)
which fish | sudo tee -a /etc/shells
fishloc=$(which fish)
chsh -s $fishloc

# remove existing configs
rm -rf ~/.alacritty.yml ~/.config/fish ~/.tmux ~/.tmux.conf 2> /dev/null
rm -rf ~/.vim ~/.vimrc ~/.config/nvim 2> /dev/null

# make necessary directory
mkdir -p ~/.config ~/.config/nvim ~/.config/fish ~/.config/fish/functions

# linking configs
ln -s ~/dotfiles/alacritty.yml ~/.alacritty.yml
ln -s ~/dotfiles/config.fish ~/.config/fish/config.fish
ln -s ~/dotfiles/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim

# install tmux plugins manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
