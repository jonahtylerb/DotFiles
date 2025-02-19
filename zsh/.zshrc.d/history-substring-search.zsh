[[ -v terminfo ]] || zmodload zsh/terminfo

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
