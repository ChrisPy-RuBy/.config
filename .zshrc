# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/chriswoodall/.oh-my-zsh
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

#include Z
. ~/.config/scripts/z.sh


# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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

#sublime
export EDITOR='vim'

#export PSQL_EDITOR="/Users/username/bin/

# Basic Functions
alias hist='function _hist(){ history | grep $1;};_hist' 
alias month="cal -A 1 -B 1"

#### Terminal Setup shizzle ####
# fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


#### Language Shizzle #### 
# Python 
alias ip='ipython'
export PYTHONBREAKPOINT='ipdb.set_trace'
export PYTHONPATH="$PYTHONPATH:/Users/chriswoodall/spark/latest/python"
export PYSPARK_PYTHON="/usr/local/bin/python3"
alias python="python3"
alias flake8='function _flake8(){ flake8 --max-line-length=121 $1;};_flake8' 
alias pipreal='function _pipreal(){ pip install -i https://pypi.python.org/simple/ $1; };_pipreal'

# GO 
export GOPATH=$HOME/dev 

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`



# Work
alias jqtmux='tmux a -t jq'
alias ls='ls -GFh'
alias a="cd ~/dev/tvsquared-ansible/"
alias b="cd ~/dev/tvsquared-backend/"
alias f="cd ~/dev/tvsquared-frontend/"
alias c="cd ~/dev/tvsquared-common/"
alias d="cd ~/Downloads"
alias adhoc="ssh -t backend@adhoc.prod.tvsquared.private"
alias prodjq="ssh -t backend@backend.prod.tvsquared.private 'cd backend  &&  python -m tvsquared.tools.jobqueue show'"
alias preprodjq="ssh -t backend@backend.preprod.tvsquared.private 'cd backend  &&  python -m tvsquared.tools.jobqueue show'"
alias restartjq="b;python3 -m tvsquared.tools.jobqueue stop;python3 -m tvsquared.tools.jobqueue cleanlocks;python3 -m tvsquared.tools.jobqueue start;python3 -m tvsquared.jobqueue.execute -vv dev;"
alias phpocjq="ssh -t backend@backend.prehulupoc.tvsquared.private 'cd backend  &&  python -m tvsquared.tools.jobqueue show'"
alias pprevjq="ssh -t backend@backend.preprev.tvsquared.private 'cd backend  &&  python -m tvsquared.tools.jobqueue show'"
alias prod="ssh -t backend@backend.prod.tvsquared.private"
alias preprod="ssh -t backend@backend.preprod.tvsquared.private"
alias preprev="ssh -t backend@backend.preprev.tvsquared.private"
alias preold="ssh -t backend@backend.preold.tvsquared.private"
alias showjq="b;python -m tvsquared.tools.jobqueue show"
alias runlocalhost="f; git pull; fab rungridserver & fab runserverwithoutupgrade;"
alias getall="f; echo Getting frontend.....;git pull; b; echo Getting backend......; git pull; c; echo Getting common.....;git pull; b; a; echo Getting ansible.....;git pull;b;"
alias collector="bash ~/scripts/collector?.sh"
alias collectordata='bash ~/dev/tvsquared-backend/tvsquared/tmp/cw/tools/bash/tng_data_copy.sh'

#export PYSPARK_SUBMIT_ARGS="--master local[2] pyspark-shell"
#export PYSPARK_PYTHON=/usr/local/bin/python2

#export PYTHONPATH="/Users/chriswoodall/spark/latest/python"
#export SPARK_HOME=/Users/chriswoodall/spark/latest/bin



#spark hacking
#export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
#export SPARK_HOME=/Users/chriswoodall/spark/2.3.0_2.7/spark-2.3.0-bin-hadoop2.7
#export PATH=$SPARK_HOME/bin:$PATH
#export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.9-src.zip:$PYTHONPATH
#export PYSPARK_SUBMIT_ARGS=pyspark-shell

#dbaliases

alias backendprod1="pgcli -h backendpg1-prod.ciepqiqtkoex.eu-west-1.rds.amazonaws.com -U analysis postgres"
alias backendprod2="pgcli -h backendpg2-prod.ciepqiqtkoex.eu-west-1.rds.amazonaws.com -U analysis postgres"
alias backendpreprod='pgcli -h backendpg1-preprod.ciepqiqtkoex.eu-west-1.rds.amazonaws.com -U analysis postgres'
alias backendpreold='pgcli -h backendpg1-preold.ciepqiqtkoex.eu-west-1.rds.amazonaws.com -U analysis postgres'
alias backendprodclones1="pgcli -h backendpgclones1-prod.ciepqiqtkoex.eu-west-1.rds.amazonaws.com -U analysis postgres"
alias backendpreprev1='pgcli -h backendpg1-preprev.ciepqiqtkoex.eu-west-1.rds.amazonaws.com -U analysis postgres'
alias backendpreprev2='pgcli -h backendpg2-preprev.ciepqiqtkoex.eu-west-1.rds.amazonaws.com -U analysis postgres'
alias backendprehalo='pgcli -h backendpg1-prehalo.ciepqiqtkoex.eu-west-1.rds.amazonaws.com -U analysis postgres'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/Users/chriswoodall/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

