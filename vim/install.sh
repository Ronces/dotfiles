#! /bin/sh

sudo apt install vim

if [[! -d ~/.vim/undo]]; then
  mkdir ~/.vim/undo
fi

