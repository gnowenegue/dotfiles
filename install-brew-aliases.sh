#!/bin/zsh

BIN_DIR='/usr/local/bin'

for FILE in ~/dotfiles/brew-aliases/*; do ln -vs $FILE $BIN_DIR/brew-$(basename $FILE); done
