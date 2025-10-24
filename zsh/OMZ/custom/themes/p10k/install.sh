DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

if test -d "$DIR"; then
  echo "PowerLevel 10k est déjà installé"
  exit 1
else
  echo "installation de PowerLevel 10k"
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$DIR"
fi
