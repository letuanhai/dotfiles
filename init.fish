#!/usr/bin/env fish

# remove existing config files
rm -rf ~/.config/fish/config.fish

# install Oh-My-Fish
curl -L https://get.oh-my.fish | fish

# theme spacefish
omf install spacefish
omf theme spacefish

# link to new config files
ln -s ~/dotfiles/config.fish ~/.config/fish/config.fish
