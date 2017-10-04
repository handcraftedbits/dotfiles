export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color

export ZSH=~/.oh-my-zsh

ZSH_THEME="handcraftedbits"

plugins=(git shrink-path ssh-agent zsh-autosuggestions zsh-256color)

source $ZSH/oh-my-zsh.sh

# User configuration

alias ccat='~/.local/bin/pygmentize -O style=monokai-hcb -f console256 -g'
alias ls='ls --color=tty -F'
