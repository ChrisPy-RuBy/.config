#!/usr/bin/env bash
set -euo pipefail

echo "Linking .zshrc"
ln -sf ~/.config/.zshrc ~/.zshrc
echo "Linking .vimrc"
ln -sf ~/.config/.vimrc ~/.vimrc
