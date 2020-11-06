#########################
## THINGS TO DO FIRST ###
#########################

# If you come from bash you might have to change your $PATH.
export PATH="/usr/local/sbin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH=$HOME/.gem/ruby/2.7.0/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

#####################################
## GENERAL SCRIPTS TO LOAD OR RUN ###
#####################################

#include Z
. ~/.config/scripts/z.sh

# run on startup
days_left
setuptmux -s labbook
setuptmux -s life
alias labfind="cd ~/labbook/docs; ag --nobreak --nonumbers --noheading . | fzf | python3 ~/programs/python/labbook_directions.py"
alias bd='~/labbook/docs/braindump.md'
alias month="cal -A 1 -B 1"
alias gdate=date



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
export EDITOR='vim'

#export PSQL_EDITOR="/Users/username/bin/

################################
### LANGUAGE SPECIFIC STUFF  ### 
################################


alias ip='ipython'
export PYTHONBREAKPOINT='ipdb.set_trace'
export PYTHONPATH="$PYTHONPATH:/Users/chriswoodall/spark/latest/python"
export PYSPARK_PYTHON="/usr/local/bin/python3"
alias python="python3"
alias flake8='function _flake8(){ flake8 --max-line-length=121 $1;};_flake8' 
alias pipreal='function _pipreal(){ pip3 install -i https://pypi.python.org/simple/ $1; };_pipreal'

# GO 
export GOPATH=$HOME/dev 

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

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

# NOTE: The bulk of this has been moved to ~/.aliases/tvs.zsh and symlinked 
# to the custom folder

#spark hacking
# export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
#export SPARK_HOME=/Users/chriswoodall/spark/2.3.0_2.7/spark-2.3.0-bin-hadoop2.7
#export PATH=$SPARK_HOME/bin:$PATH
#export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.9-src.zip:$PYTHONPATH
#export PYSPARK_SUBMIT_ARGS=pyspark-shell


#####################
## TEMPORARY HACKERY (DONT PUT THINGS HERE YOU WANT TO KEEP) 
#####################
#
#export DYLD_FALLBACK_LIBRARY_PATH="/usr/lib":$DYLD_FALLBACK_LIBRARY_PATH
#export HADOOP_VERSION=3.2.1
#export HADOOP_HOME=/usr/local/Cellar/hadoop/3.2.1_1/libexec
#export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop/
#export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH

#export HADOOP_OPTS="-Djava.library.path=${HADOOP_HOME}/lib/native"
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${HADOOP_HOME}/lib/native
#export JAVA_LIBRARY_PATH=$JAVA_LIBRARY_PATH:${HADOOP_HOME}/lib/native
