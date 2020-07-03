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
