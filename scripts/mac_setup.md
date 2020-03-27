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

# setup git 

## generate a ssh key

if we have an ssh key
```
pbcopy < ~/.ssh/id_rsa.pub
```
if we don't
```
ssh-keygen -t rsa -b 4096 -C "<derp>@gmail.com"
```

## Get access to the relevant git repos
- add ssh key to account

## clone setup repos
```
cd ~
git clone git@github.com:ChrisPy-RuBy/.config.git
```

# setup iterm
```
brew cask install iterm
```
## setup profiles
import itemprofile from .config
import keybindings from .config

## setup guake like drop downs.
(https://www.sharmaprakash.com.np/guake-like-dropdown-terminal-in-mac/#)

## setup up powerline
Really hoping this is all in the .config


# setup vim
```
brew install neovim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# setup tmux
```
brew install tmux
```

# setup python

# setup ruby

# install postgres

# useful commandline tools
brew install ag
brew install FZF


# set labbook
brew install mkdocs
cd ~; mkdocs new labbook

# apps to install
- alfred
- anki
- slack
- firefox
brew install cask alfred
brew install cask things3
brew install cask dash

# setup firefox
- get pocket 
- get lastpass

## firefox plugins
- privacy badger
- rescuetime
- 

