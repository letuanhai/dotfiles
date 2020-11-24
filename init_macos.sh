#!/bin/bash

# install tools
#brew cask install alacritty font-fira-code
#brew install fish tmux neovim reattach-to-user-namespace
./brew.sh

# remove existing configs
rm -rf ~/.alacritty.yml ~/.tmux ~/.tmux.conf 2> /dev/null
rm -rf ~/.vim ~/.vimrc ~/.config/nvim 2> /dev/null
rm -rf ~/.zshrc ~/.aliases ~/.env 2> /dev/null
rm -rf ~/.bash_profile ~/.bashrc 2> /dev/null


# make necessary directory
mkdir -p ~/.config ~/.config/nvim ~/.config/fish ~/.config/fish/functions

# linking configs
ln -s ~/dotfiles/terminal/alacritty.yml ~/.alacritty.yml
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/envfile ~/.env
ln -s ~/dotfiles/aliases ~/.aliases
ln -s ~/dotfiles/bash_profile ~/.bash_profile
ln -s ~/dotfiles/bashrc ~/.bashrc


#######################
# BIN
#######################
# #mkdir -p $HOME/bin
#
## FASD
#if [[ ! -f $HOME/bin/fasd ]]; then
#    git clone https://github.com/clvv/fasd.git /tmp/fasd
#    cd /tmp/fasd
#    PREFIX=$HOME make install
#    cd -
#fi
#
## FZF
#if [[ ! -f $HOME/.fzf/bin/fzf ]]; then
#    git clone https://github.com/junegunn/fzf.git $HOME/.fzf
#    yes | $HOME/.fzf/install
#fi
#
## DIFF-SO-FANCY
#if [[ ! -f $HOME/bin/diff-so-fancy ]]; then
#    curl -o $HOME/bin/diff-so-fancy https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy
#fi
#

#######################
# TMUX
#######################

if [[ ! -d $HOME/.tmux/plugins/tpm ]]; then
    mkdir -p $HOME/.tmux/plugins
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi

# install Vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

NVIM=$HOME/.neovim

mkdir -p $NVIM

# Create Python3 environment
if [[ ! -d $NVIM/py3 ]]; then
    python3 -m venv $NVIM/py3
    PIP=$NVIM/py3/bin/pip
    $PIP install --upgrade pip
    $PIP install neovim
    $PIP install 'python-language-server[all]'
    $PIP install pylint isort jedi flake8
    $PIP install black yapf
fi

# Create node env
if [[ ! -d $NVIM/node ]]; then
    mkdir -p $NVIM/node
    NODE_SCRIPT=/tmp/install-node.sh
    curl -sL install-node.now.sh/lts -o $NODE_SCRIPT
    chmod +x $NODE_SCRIPT
    PREFIX=$NVIM/node $NODE_SCRIPT -y
    PATH="$NVIM/node/bin:$PATH"
    npm install -g neovim
fi
