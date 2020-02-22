#!/usr/bin/env bash

# ----- setup script -----
# Things to setup, 

# Brew,, this should also install xcode and git
$(/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)")
brew update 
brew doctor
brew install cask # allow us to install apps

# things to install immediately
# node
brew install node
# python2 
brew install python2
# python3
brew install python3
# ruby
brew install ruby


# setup terminal

# zsh, oh-my-zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# setup git to basic repos
# if we have an ssh key
# pbcopy < ~/.ssh/id_rsa.pub
# else
ssh-keygen -t rsa -b 4096 -C "christopherhwoodall@gmail.com"

# clone setup repos
cd ~
git clone <config repo>

## download iterm
brew cask install iterm
### setup profiles
import itemprofile from .config

### set up guake like drop downs.
(https://www.sharmaprakash.com.np/guake-like-dropdown-terminal-in-mac/#)

# set up vim
brew install neovim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# setup python

# setup ruby

# install postgres

# useful commandline tools
brew install ag


# set labbook
brew install mkdocs
cd ~; mkdocs new labbook

# apps to install
alfred
brew install cask alfred

