###### WSL settings #####
#
## WSL X server setting
#export DISPLAY=:0
#
## Connect to Docker daemon
#export DOCKER_HOST=tcp://localhost:2375
#
########################

# Enabling Color Prompts
autoload colors zsh/terminfo
colors

# Autostart Tmux
#if [ "$TMUX" = "" ]; then tmux; fi

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
antigen bundle rupa/z

# Theme
#antigen theme denysdovhan/spaceship-prompt
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

#################
# Aliases
#################
alias v='nvim'
alias sf='source ~/.zshrc'
alias gs='git status'
alias gcm='git commit'
alias gck='git checkout'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#################
# Syntax highlighting color
#################
#
# Enable highlighters
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# Override highlighter colors
ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
ZSH_HIGHLIGHT_STYLES[alias]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=gray,underline
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[assign]=none
