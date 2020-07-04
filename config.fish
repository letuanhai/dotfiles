# Auto start tmux
#if status is-interactive
#and not set -q TMUX
#    exec tmux
#end

# Aliases
alias v='nvim'
## git alias
alias g='git'
alias gs='git status'
alias gcm='git commit'
alias gck='git checkout'
## reload config
alias sf='source ~/.config/fish/config.fish'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

