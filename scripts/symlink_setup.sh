#!/usr/bin/env bash
set -euo pipefail

echo "Linking .zshrc"
ln -sf ~/.config/.zshrc ~/.zshrc
echo "Linking .vimrc"
ln -sf ~/.config/.vimrc ~/.vimrc


ln -sf ~/programs/python/days_left ~/bin
ln -sf ~/programs/python/clitter/clitter ~/bin

echo "Add script path to PATH"
export PATH=$PATH:~/bin
