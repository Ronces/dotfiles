#! /bin/sh

echo "install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

plugins="$HOME/.oh-my-zsh/custom/plugins"
themes="$HOME/.oh-my-zsh/custom/themes"

# PLUGINS

git clone --depth 1 https://github.com/junegunn/fzf.git $plugins/fzf
git clone https://github.com/jhwohlgemuth/zsh-pentest.git $plugins/zsh-pentest
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $plugins/you-should-use
git clone https://github.com/fdellwing/zsh-bat.git $plugins/zsh-bat

# THEMES

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $themes/powerlevel10k
