#!/usr/bin/env bash
set -euo pipefail

echo "Linking .zshrc"
ln -sf ~/.config/.zshrc ~/.zshrc
echo "Linking .vimrc"
ln -sf ~/.config/.vimrc ~/.vimrc

ln -s ~/programs/python/days_left

echo "Add script path to PATH"
export PATH=$PATH:~/bin
