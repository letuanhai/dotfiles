if status is-interactive
and not set -q TMUX
    exec tmux
end

# Aliases
alias v='nvim'
alias gs='git status'
alias gck='git checkout'
alias gcm='git commit'
alias sf='source ~/.config/fish/config.fish'
