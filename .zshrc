# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/Users/baonguyen/bin:/usr/local/bin:/Users/baonguyen/bin:/Users/baonguyen/bin:/usr/local/sbin:/usr/local/heroku/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ls='ls -GpF'
alias repy="fab select:dev,baonguyen,vagrant fab.puppet.uwsgi.reload:use_sudo=True"
alias gv='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias mint="cd ~/src/minted"
alias review='rbt post --summary "something" --branch di --tracking-branch digital_invitations'
alias deploy='fab vagrant_deploy'
alias ff="find . -name"
alias gg="git grep"
alias stash="git stash"
alias status="git status"
alias di="git checkout dilocal"
alias master"git checkout master"
alias commit="git commit"
alias rebase="git svn rebase"
alias uncommit="git reset --soft HEAD~1"
alias unadd="git reset"
alias add="git add"
alias amend="git commit --amend"
alias dcommit="git svn dcommit"
alias reset="git checkout"
alias diff="git diff"
alias svi="sudo vim"
alias vi="vim"
####### FILE SYSTEM ##########
alias ..='cd ..'            # Go up one directory
alias ...='cd ../..'        # Go up two directories
alias ....='cd ../../..'    # And for good measure


###### CONNECTION TO EC3 INSTANCES ########################
alias diweb="ssh -i ~/.ssh/minted-ec2.pem ubuntu@web1.di-qa1.mntd.net"
alias dimboweb="ssh -i ~/.ssh/minted-ec2.pem ubuntu@mboweb1.di-qa1.mntd.net"
alias diapi="ssh -i ~/.ssh/minted-ec2.pem ubuntu@minted-api1.di-qa1.mntd.net"
alias dicron="ssh -i ~/.ssh/minted-ec2.pem ubuntu@mbocron1.di-qa1.mntd.net"
alias didb="ssh -i ~/.ssh/minted-ec2.pem ec2-107-21-128-49.compute-1.amazonaws.com"
######## VAGRANT #########
alias vu="vagrant up"
alias vs="vagrant ssh puppet"
alias vh='vagrant halt'


########## using Vim like command line tool ##########
bindkey -v
bindkey ‘^R’ history-incremental-search-backward

