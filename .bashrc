#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

export EDITOR='nvim'
export DISPLAY=:0.0

# docker
export PATH=$HOME/bin:$PATH
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

# deno
export DENO_INSTALL="/home/chigan/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

# -----------------------------------------------------
#  EZA
# -----------------------------------------------------

alias ls="eza --all --binary --icons"
alias ll="eza --all --icons --binary --group --header --group-directories-first --long --git"
alias lt="eza --all --binary --icons --group --header --group-directories-first --tree --level"

# -----------------------------------------------------
# GIT
# -----------------------------------------------------

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"
alias gcredential="git config credential.helper store"
#alias gl="git log --all --decorate --oneline --graph"
alias gl="git log --graph --abbrev-commit --decorate --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset) %C(bold cyan)(committed: %cD)%C(reset) %C(auto)%d%C(reset)%n''          %C(white)%s%C(reset)%n'' %C(dim white)- %an <%ae> %C(reset) %C(dim white)(committer: %cn <%ce>)%C(reset)'"

# -----------------------------------------------------
# General
# -----------------------------------------------------

# -----------------------------------------------------
# AUTOSTART
# -----------------------------------------------------

eval "$(starship init bash)"

# -----------------------------------------------------
# LOGIN
# -----------------------------------------------------

if [[ $(tty) == *"pts"* ]]; then
	cmatrix
	fastfetch
else
	echo
	if [ -f /home/chigan/.xinitrc ]; then
		echo "Start BSPWM X11 with command startx"
	fi
fi
