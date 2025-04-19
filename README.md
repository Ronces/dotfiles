# Ronces dotfiles

## Généralités

A force d'essayer différentes configurations de différents auteurs, j'ai fini par faire mes propres dotfiles. Sentez vous libre de les utiliser ou de vous en inspirer à votre tour !

## Catégories

Tout le contenu est organisé par catégories, pour faciliter la maintenance et la portabilité sur différents systèmes.

## Contenu

Quelques précisions à propos du contenu :

- **bin/** : Tout ce qui est dans le dossier `bin/` est ajouté à votre `$PATH` et devient accessible de n'importe où.
- **_catégorie_/\*.szsh** : Tout fichier avec l'extension `.zsh` est chargé dans l'environnement par `zshrc`.
- **_catégorie_/path.zsh** : Tout fichier nommé `path.zsh` est chargé en premier et permet de définir `$PATH`.
- **_catégorie_/completion.zsh** : Tout fichier nommé `completion.zsh` est chargé en dernier et permet d'ajouter de nouvelles autocompletions.
- **_catégorie_/install.sh** : Tout fichier nommé `install.sh` est appelé à l'exécution de `script/install`. L'extension est `.sh` et non `.zsh` pour éviter d'être lancé à chaque instance de `zsh`.
- **_catégorie_/\*.symlink** : Tout fichier avec l'extension `.symlink` ("sym-link") est dupliqué via un lien symbolique dans votre `$HOME` en un "dotfile". La création de ces liens symboliques se fait à l'exécution de `script/bootstrap`.
- **script/** : Le dossier `script/` contient les executables nécessaires à l'installation et au maintien des dotfiles et autres configurations.
- **functions** : Contient des... fonctions. Si si. Ces fonctions sont chargées via le fichier `config.zsh`

## Installation

```sh
sudo apt install git curl
git clone https://github.com/Ronces/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/install
script/bootstrap
```

Pensez également à :
- installer les bonnes polices : https://github.com/ryanoasis/nerd-fonts
- configurer votre émulateur de terminal en mode solarized dark


