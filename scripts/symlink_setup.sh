#!/usr/bin/env bash
set -euo pipefail

echo "Linking .zshrc"
ln -sf ~/.config/.zshrc ~/.zshrc
echo "Linking .vimrc"
ln -sf ~/.config/.vimrc ~/.vimrc


echo "Useful scripts"
ln -sf ~/programs/python/days_left ~/bin
ln -sf ~/programs/python/clitter/clitter ~/bin
ln -sf ~/programs/bash/setuptmux ~/bin
ln -sf ~/programs/bash/bdump ~/bin

echo "Add script path to PATH"
export PATH=$PATH:~/bin
