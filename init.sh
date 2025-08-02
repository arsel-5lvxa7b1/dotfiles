#!/usr/bin/env bash

set -eu

os_name=$(uname -s)
script_dir=$(dirname -- "$(readlink -f -- "${BASH_SOURCE[0]}")")

if [ "$os_name" == "Darwin" ]; then
  ln -s "$script_dir/.zshrc" ~/.zshrc
  ln -s "$script_dir/.zsh_aliases" ~/.zsh_aliases
elif [ "$os_name" == "Linux" ]; then
  ln -s "$script_dir/.profile" ~/.profile
  ln -s "$script_dir/.bashrc" ~/.bashrc
  ln -s "$script_dir/.bash_aliases" ~/.bash_aliases
fi

mkdir -p ~/.vim/tmp/{undo,backup,swap}

ln -s "$script_dir/.gitignore" ~/.gitignore
ln -s "$script_dir/.vimrc" ~/.vimrc
