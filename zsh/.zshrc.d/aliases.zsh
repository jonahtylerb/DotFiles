#!/bin/zsh

# Replace defaults
alias ls='exa -l --icons=always'
alias g=git
alias cd=z
alias n='nvim '
alias vi=nvim
alias vim=nvim
alias c=clear
alias q=exit
alias e=exit
alias lg=lazygit

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
alias please=sudo
alias thanks='clear && echo "You are very welcome :)"'
