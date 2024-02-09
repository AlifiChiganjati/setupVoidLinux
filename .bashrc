# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Git
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"

alias sudo='doas'

alias ls='eza -a --icons'
alias ll='eza -alh --icons'
alias lt='eza -a --tree --level=1 --icons'

PS1='[\u@\h \W]\$ '

cmatrix
neofetch
eval "$(starship init bash)"
