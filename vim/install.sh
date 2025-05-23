#! /bin/sh

echo "› Install vim"
sudo apt install vim

if ! [ -d ~/.vim/undo ]; then
  mkdir ~/.vim/undo
fi

echo ""

echo "› Install vim-plug"
if [ ! -f ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
  echo "Vim-plug is already installed"
fi

echo ""

echo "› Install vim plugins"
vim +'PlugUpgrade --sync' +qa
echo "Plug up to date"
vim +'PlugInstall --sync' +qa
echo "Plugins installed"
vim +'PlugUpdate --sync' +qa
echo "Plugins up to date"

