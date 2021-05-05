#!/usr/bin/env bash

# Install command-line tools using Homebrew.
# Get cask-fonts
brew tap homebrew/cask-fonts

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Use Brew-managed Python3 and Node
brew install python3
# brew install node
brew install nvm

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`
brew install gnu-sed
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
#if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
#  chsh -s "${BREW_PREFIX}/bin/bash";
#fi;

# Install `wget`
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
# brew install screen
# brew install php
# brew install gmp

# Install other useful binaries.
# brew install ack
# brew install ag
# brew install exiv2
brew install git
brew install git-lfs
# brew install gs
brew install imagemagick
# brew install lua
# brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli
brew install rg rga
brew install jq
brew install colordiff

# Install terminal environment tools
brew install tmux
brew install neovim
brew install reattach-to-user-namespace
# brew install fasd
# brew install fzf
brew install diff-so-fancy
# brew install antigen

# Install Pyenv to manage Python version
brew install pyenv pyenv-virtualenv

# Install casks
brew install --cask alacritty
# brew install --cask anki
brew install --cask atext
brew install --cask authy
brew install --cask brave-browser
# brew install --cask coconutbattery
brew install --cask docker
brew install --cask font-fira-code-nerd-font
brew install --cask google-chrome
brew install --cask hammerspoon
brew install --cask itsycal
brew install --cask keka
brew install --cask keycastr
brew install --cask launchbar
brew install --cask meld
brew install --cask michaelvillar-timer
brew install --cask middleclick
brew install --cask miniconda
# brew install --cask noti
# brew install --cask numi
brew install --cask obsidian
brew install --cask openkey
brew install --cask qlcolorcode
brew install --cask qlmarkdown
brew install --cask qlstephen
brew install --cask quicklook-json
brew install --cask rectangle
brew install --cask spotify
brew install --cask suspicious-package
# brew install --cask textmate
brew install --cask visual-studio-code
brew install --cask wireshark
# brew install --cask zotero
brew install --cask fluor
brew install --cask microsoft-edge
# brew install --cask netnewswire
# brew install --cask postman
# brew install --cask proxyman
# brew install --cask pycharm-ce
brew install --cask sloth
brew install --cask stats

# Remove outdated versions from the cellar.
brew cleanup

