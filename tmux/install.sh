#!/bin/sh

sudo apt install tmux

if [[-d ~/.tmux]]; then
  rm -rf ~/.tmux
fi

 git clone https://github.com/gpakosz/.tmux.git ~/.tmux
 ln -sf ~/.tmux/.tmux.conf ~/.dotfiles/tmux/tmux.conf.symlink
