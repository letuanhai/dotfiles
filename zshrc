# zmodload zsh/zprof
# Enabling Color Prompts
autoload colors zsh/terminfo
colors

# History size
#set history size
export HISTSIZE=10000
#save history after logout
export SAVEHIST=10000
#history file
export HISTFILE=~/.zhistory
#append into history file
setopt INC_APPEND_HISTORY
#save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
#add timestamp for each entry
setopt EXTENDED_HISTORY

# ALIASES
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Autostart Tmux
#if [ "$TMUX" = "" ]; then tmux; fi

# Auto CD
setopt auto_cd

#============================================================================
#PACKAGES
#============================================================================

# # ## Package manager if [[ ! -f ~/antigen.zsh ]]; then
# #   curl -L git.io/antigen > ~/antigen.zsh
# # fi
# # source ~/antigen.zsh
# source /usr/local/share/antigen/antigen.zsh

# # Load the oh-my-zsh's library.
# antigen use oh-my-zsh

# # Syntax Highlighting
# antigen bundle zsh-users/zsh-syntax-highlighting            # should be sourced at the end .zshrc

# # Autocomplete
# antigen bundle zsh-users/zsh-autosuggestions
# antigen bundle zsh-users/zsh-completions

# antigen bundle git
# antigen bundle docker
# antigen bundle docker-compose
# antigen bundle command-not-found
# # antigen bundle rupa/z
# # antigen bundle clvv/fasd

# # Theme
# # antigen theme denysdovhan/spaceship-prompt
# antigen theme robbyrussell

# # Tell Antigen that you're done.
# antigen apply

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#============================================================================
# Syntax highlighting color
#============================================================================
#
# Enable highlighters
# ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# # Override highlighter colors
# ZSH_HIGHLIGHT_STYLES[default]=none
# ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
# ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
# ZSH_HIGHLIGHT_STYLES[alias]=fg=cyan,bold
# ZSH_HIGHLIGHT_STYLES[builtin]=fg=cyan,bold
# ZSH_HIGHLIGHT_STYLES[function]=fg=cyan,bold
# ZSH_HIGHLIGHT_STYLES[command]=fg=cyan,bold
# ZSH_HIGHLIGHT_STYLES[precommand]=fg=cyan,underline
# ZSH_HIGHLIGHT_STYLES[commandseparator]=none
# ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
# ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
# ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
# ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=gray,underline
# ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
# ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
# ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
# ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
# ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
# ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
# ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
# ZSH_HIGHLIGHT_STYLES[assign]=none

# fzf
#============================================================================
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# vi mode with status indicator
#============================================================================
# https://gist.github.com/chrismccord/6723644
# http://pawelgoscicki.com/archives/2012/09/vi-mode-indicator-in-zsh-prompt/
#bindkey -v
#
#vim_ins_mode="%{$fg[cyan]%}[INS]%{$reset_color%}"      # Insert mode status
#vim_cmd_mode="%{$fg[red]%}[CMD]%{$reset_color%}"       # Command mode status
#vim_mode=$vim_ins_mode
#
#function zle-keymap-select {
#  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
#  zle reset-prompt
#}
#zle -N zle-keymap-select
#
#function zle-line-finish {
#  vim_mode=$vim_ins_mode
#}
#zle -N zle-line-finish
#
## Fix a bug when you C-c in CMD mode and you'd be prompted with CMD mode indicator, while in fact you would be in INS mode
## Fixed by catching SIGINT (C-c), set vim_mode to INS and then repropagate the SIGINT, so if anything else depends on it, we will not break it
#function TRAPINT() {
#  vim_mode=$vim_ins_mode
#  return $(( 128 + $1 ))
#}
#
#RPROMPT='${vim_mode}'
#RPROMPT2='${vim_mode}'
#setopt transient_rprompt # don't show command modes on previously accepted lines

# Key binding
#============================================================================
bindkey '^ ' forward-word

# Environment setup
#============================================================================
if [ -f ~/.env ]; then
    source ~/.env
fi
