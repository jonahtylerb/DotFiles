#!/bin/zsh
#
# .zshenv - Zsh environment file, loaded always.
#

# Set ZDOTDIR if you want to re-home Zsh.
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export ZDOTDIR=${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}

export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc 
export QT_STYLE_OVERRIDE=Adwaita-Dark

export EDITOR=neovide
export TERM=kitty

# Ensure path arrays do not contain duplicates.
typeset -gU path fpath

# Set the list of directories that zsh searches for commands.
path=(
  $HOME/{,s}bin(N)
  $HOME/.local/{,s}bin(N)
  /opt/{homebrew,local}/{,s}bin(N)
  /usr/local/{,s}bin(N)
  $path
)

alias unsetAWS='unset $(env | grep AWS | grep -v AWS_REGION | grep -v AWS_DEFAULT_REGION | sed '\''s|=.*||'\'')'

function assumeFunction {
   source assume $@
   # Serverless (SLS) fails when AWS_PROFILE is set, so we unset it here
   unset AWS_PROFILE
}

alias assume=assumeFunction
. "$HOME/.cargo/env"
