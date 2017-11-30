export LANG="en_US.utf8"
export LANGUAGE="en_US.utf8"
export LC_ALL="en_US.utf8"
export TERM=xterm-256color
export ZSH=~/.oh-my-zsh
export ZSH_TMUX_AUTOSTART=true

[ -n "$TMUX" ] && export TERM=screen-256color

ZSH_THEME="handcraftedbits"

plugins=(git pass shrink-path zsh-autosuggestions zsh-256color)

source $ZSH/oh-my-zsh.sh

# User configuration

alias ccat='~/.local/bin/pygmentize -O style=monokai-hcb -f console256 -g'
alias ls='ls --color=tty -F'
