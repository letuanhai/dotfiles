if status is-interactive
and not set -q TMUX
    exec tmux
end

# Aliases
alias v='nvim'
alias gs='git status'
