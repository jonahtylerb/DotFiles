#!/bin/zsh

# Replace defaults
alias ls='exa -l --icons=always'
alias g=git
alias cd=z
alias n='neovide --fork '
alias vi=n
alias vim=n
alias c=clear
alias e=exit
alias e=exit
alias lg=lazygit
alias y=yazi

v() {
  nohup ~/.config/zsh/.zshrc.d/neovide.sh "$1" >/dev/null 2>&1 &!
  exit
}

alias tt='taskwarrior-tui'

# more ways to ls
alias l=ls
alias ll='ls -lh'
alias la='ls -lAh'
alias ldot='ls -ld .*'

# the only good things in Windows
alias cd..='cd ..'
alias cls='clear'
alias tree='exa --tree --icons=always'

# tar
alias tarls="tar -tvf"
alias untar="tar -xf"

# find
alias fd='find . -type d -name'
alias ff='find . -type f -name'

# misc
alias zbench='for i in {1..10}; do /usr/bin/time zsh -lic exit; done'

# be kind to your terminal
alias pls=sudo
alias thx='clear && echo "You are very welcome :)"'
