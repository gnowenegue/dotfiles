#!/bin/zsh

BIN_DIR="/usr/local/bin"
BREW_ALIASES_DIR="$HOME/.brew-aliases"
MY_BREW_ALIASES_DIR="$HOME/dotfiles/brew-aliases"

ln -vs $MY_BREW_ALIASES_DIR/* $BREW_ALIASES_DIR

for FILE in $MY_BREW_ALIASES_DIR/*;
  do ln -vs $FILE $BIN_DIR/brew-$(basename $FILE);
done
