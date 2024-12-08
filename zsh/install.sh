#! /bin/sh

echo "install zsh"
sudo apt install zsh
echo "install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
