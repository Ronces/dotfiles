#!/bin/sh

echo "› Install tmux"
sudo apt install tmux

if [ -d ~/.tmux ]; then
  rm -rf ~/.tmux
fi

 git clone https://github.com/gpakosz/.tmux.git ~/.tmux
 ln -sf ~/.tmux/.tmux.conf ~/.dotfiles/tmux/tmux.conf.symlink

echo "› reloading tmux to apply change"
tmux source-file ~/.tmux.conf

echo ""
