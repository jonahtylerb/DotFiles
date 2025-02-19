#!/bin/zsh

# Replace defaults
alias ls='exa -l --icons=always'
alias g=git
alias cat=bat
alias cd=z
alias vi=nvim
alias vim=nvim

# more ways to ls
alias l=ls
alias ll='ls -lh'
alias la='ls -lAh'
alias ldot='ls -ld .*'

# the only good things in Windows
alias cd..='cd ..'
alias cls='clear'

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
