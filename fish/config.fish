if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting ""
    set theme_nerd_fonts yes
    export DENO_INSTALL="/home/chigan/.deno"
    export PATH="$DENO_INSTALL/bin:$PATH"
    set -g fish_prompt_font "FiraCode Nerd Font Mono"
    set WAYLAND_DEBUG 1# bun
    set --export BUN_INSTALL "$HOME/.bun"
    set --export PATH $BUN_INSTALL/bin $PATH
    alias graph="git log --all --decorate --oneline --graph"
    cmatrix
    neofetch
end
