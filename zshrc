##### WSL settings #####

# WSL X server setting
export DISPLAY=:0

# Connect to Docker daemon
export DOCKER_HOST=tcp://localhost:2375

########################

# Enabling Color Prompts
autoload colors zsh/terminfo
colors

# Autostart Tmux
if [ "$TMUX" = "" ]; then tmux; fi

# Auto CD
setopt auto_cd

# Spellcheck / Typo Correction
setopt correctall
alias git status='nocorrect git status'

#################
#PACKAGES
#################

# Package manager
if [[ ! -f ~/.antigen.zsh ]]; then
  curl -L git.io/antigen > ~/.antigen.zsh
fi
source ~/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Syntax Highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Autocomplete
antigen bundle zsh-users/zsh-autosuggestions

antigen bundle git
antigen bundle command-not-found

# Theme
antigen theme denysdovhan/spaceship-prompt

# Tell Antigen that you're done.
antigen apply
