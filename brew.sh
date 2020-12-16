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
brew install node

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
brew install screen
brew install php
brew install gmp

# Install other useful binaries.
# brew install ack
brew install ag
# brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick
brew install lua
brew install lynx
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

# Install casks
brew cask install alacritty
brew cask install anki
brew cask install atext
brew cask install authy
brew cask install brave-browser
brew cask install coconutbattery
brew cask install docker
brew cask install font-fira-code-nerd-font
brew cask install google-chrome
brew cask install hammerspoon
brew cask install itsycal
brew cask install keka
brew cask install keycastr
brew cask install launchbar
brew cask install meld
brew cask install michaelvillar-timer
brew cask install middleclick
brew cask install miniconda
brew cask install noti
brew cask install numi
brew cask install obsidian
brew cask install openkey
brew cask install qlcolorcode
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install quicklook-json
brew cask install rectangle
brew cask install spotify
brew cask install suspicious-package
# brew cask install textmate
brew cask install visual-studio-code
brew cask install wireshark
brew cask install zotero

# Install terminal environment tools
brew install tmux
brew install neovim
brew install reattach-to-user-namespace
brew install fasd
brew install fzf
brew install diff-so-fancy
# brew install antigen

# Install Pyenv to manage Python version
brew install pyenv pyenv-virtualenv

# Remove outdated versions from the cellar.
brew cleanup

