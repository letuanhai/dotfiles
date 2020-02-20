# autostart tmux
if status is-interactive
and not set -q TMUX
    exec tmux
end

# install fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# WSL X server setting
export DISPLAY=:0
