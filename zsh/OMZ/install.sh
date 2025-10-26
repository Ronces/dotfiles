#! /bin/zsh

echo "› Install oh-my-zsh"

if  [ -d $HOME/.oh-my-zsh ]; then
  rm -rf "$HOME/.oh-my-zsh"
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo ""

plugins="$HOME/.oh-my-zsh/custom/plugins"
themes="$HOME/.oh-my-zsh/custom/themes"

# PLUGINS

# Fonction pour cloner un dépôt GitHub et installer un paquet si nécessaire
install_plugin() {
    local repo_url=$1
    local plugin_name=$2
    local package_name=$3

    if ! [ -d $plugins/$plugin_name ]; then
        git clone --depth 1 "$repo_url" "$plugins/$plugin_name"
    else
        echo "plugin $plugin_name already installed"
    fi

    if [[ -n "$package_name" ]]; then
        sudo apt install -y "$package_name"
    fi
}

# Liste des plugins à installer
typeset -A plugins_to_install
plugins_to_install=(
    "fzf"          "https://github.com/junegunn/fzf.git fzf"
    "zsh-bat"      "https://github.com/fdellwing/zsh-bat.git bat"
    "zsh-pentest"  "https://github.com/jhwohlgemuth/zsh-pentest.git"
    "you-should-use" "https://github.com/MichaelAquilina/zsh-you-should-use.git"
)

# Installer chaque plugin
echo "› Install custom plugins"
for plugin_name package_info in ${(kv)plugins_to_install}; do
    repo_url=$(echo "$package_info" | awk '{print $1}')
    package_name=$(echo "$package_info" | awk '{print $2}')

    install_plugin "$repo_url" "$plugin_name" "$package_name"
done


echo ""

# THEMES
echo "› Install custom themes"
if ! [ -d $themes/powerlevel10k ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $themes/powerlevel10k
else
    echo "powerlevel10k already installed"
fi
echo ""
