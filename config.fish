# autostart tmux
if status is-interactive
and not set -q TMUX
    exec tmux
end

# WSL X server setting
export DISPLAY=:0

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /d/wsl/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

