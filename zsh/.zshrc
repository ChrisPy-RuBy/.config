#####################
## CONFIG§
#####################

EDITOR=nvim
PAGER=vimpager

# zsh  config
# Path to your oh-my-zsh installation.
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
export ZSH=$HOME/.oh-my-zsh
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

labbook () {

	tmux a -t labbook
	if [[ $? -eq 1 ]]; then
		setuptmux -s labbook
		tmux a -t labbook
	fi
}

diary () {

	tmux a -t diary
	if [[ $? -eq 1 ]]; then
		setuptmux -s diary 
		tmux a -t diary
	fi
}
	

cat () {

	if [[ -x /usr/local/bin/bat ]]; then
		bat $@
	else
		cat $@
	fi
}


gtticket () {
	cd $WORK/tvsquared-backend; arc browse "$@"
}


#####################h
## PATHS 
######################

# PATH stuff now in .zprofle


source $HOME/.access_keys

#####################################
## GENERAL SCRIPTS TO LOAD OR RUN ###
#####################################

#include Z
. $HOME/.config/scripts/z.sh

# run on startup
days_left
date "+%Y %m" | xargs rulesforlife
alias labbookup="setuptmux -s labbookserver"
alias labup="setuptmux -s labserver"
alias setup="$HOME/.config/scripts/setup"
alias conf="cd $HOME/.config"
alias labfind="cd ~/labbook/docs; ag --nobreak --nonumbers --noheading . | fzf | python3 ~/programs/python/labbook_directions.py"
alias month="cal -A 1 -B 1"
alias gdate=date
alias sourcevim="vim $HOME/.vimrc; source $HOME/.vimrc"
alias sourcezsh="vim $HOME/.zshrc; source $HOME/.zshrc"
alias setup="bash -c $HOME/.config/scripts/setup"
alias ls='ls -GFh'
alias d="cd ~/Downloads"
alias workalias="vim $HOME/.oh-my-zsh/custom/tvs.zsh"
alias generalalias="vim $HOME/.oh-my-zsh/general.zsh"
alias activate='. ./.env/bin/activate'


# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  sublime
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"b
# use nvim instead of vim for a sprint
alias vim='nvim'
alias v='nvim'
export EDITOR='vim'

#export PSQL_EDITOR="/Users/username/bin/

################################
### LANGUAGE SPECIFIC STUFF  ### 
################################


alias ipy='ipython'
export PYTHONBREAKPOINT='web_pdb.set_trace'
export PYTHONPATH="$PYTHONPATH:/Users/chriswoodall/spark/latest/python"
#export PYSPARK_PYTHON="/usr/local/bin/python3"
export PYSPARK_PYTHON="/Users/chriswoodall/.pyenv/shims/python3"
alias python="python3"
alias flake8='function _flake8(){ flake8 --max-line-length=121 $1;};_flake8' 
alias pipreal='function _pipreal(){ pip3 install -i https://pypi.python.org/simple/ $1; };_pipreal'
alias venvup='function _venvup(){python3 -m venv .env; source ./.env/bin/activate; python3 -m pip install --upgrade pip};_venvup'
eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# GO 
export GOPATH=$HOME/dev 

# Java

# Ruby
eval "$(rbenv init -)"

##############################
### TOOL SPECIFIC SETTINGS ###
##############################

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

###########################################
### WORK SPECIFIC ALIASES, FUNCTIONS ETC ##
###########################################

# NOTE: The bulk of this has been moved to ~/.oh-my-zsh/tvs.zsh and symlinked 
# to the custom folder

#####################
## TEMPORARY HACKERY (DONT PUT THINGS HERE YOU WANT TO KEEP) 
#####################

# BEGIN ANSIBLE MANAGED BLOCK
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYTHONPATH="$HOME/spark/latest/python:$PYTHONPATH"
# END ANSIBLE MANAGED BLOCK
