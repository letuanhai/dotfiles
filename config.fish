# autostart tmux
if status is-interactive
and not set -q TMUX
    exec tmux
end

# WSL X server setting
export DISPLAY=:0
