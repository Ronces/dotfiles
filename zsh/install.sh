if [[ ! -d ~/.oh-my-zsh/custom/plugins ]]; then
  cp -r zsh/custom_plugins/* ~/.oh-my-zsh/custom/plugins/
fi

if [[ ! -d ~/oh.my-zsh/custom/themes ]]; then
  cp -r zsh/custom/themes/* ~/.oh-my-zsh/custom/themes/
fi

