export PATH="/usr/local/bin:$HOME/bin:$HOME/.gem/ruby/:$PATH"
export EDITOR="vim"
export PGDATA="/usr/local/pgsql/data"
eval "$(rbenv init -)"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#Golang dep
export GOPATH="$HOME/gocode"
export PATH="$GOPATH/bin:$PATH"
##
#Nav
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias bbin="cd ~/bin"
alias dls="cd ~/Downloads"
alias dox="cd ~/code/work/doximity"
alias campa="cd ~/code/work/campaigns"
alias home="cd ~/"
alias ulists='cd ~/code/work/user-lists'
alias dotfiles="cd ~/dotfiles"
alias code="cd ~/code"
alias reports="cd /Users/jack/gocode/src/github.com/doximity/reports"
alias quack= "cd ~/code/stuff/quack"

#Quick File Access
alias zrc="vim ~/dotfiles/zshrc"
alias vrc="vim ~/dotfiles/vimrc"
alias vimt="vim '+CommandT'"

#Git
alias gp="git pull"
alias gst="git status"
alias cb="git checkout"
alias lb="git branch"
alias branch="git branch"
alias gm="git merge"
alias subupdate="git submodule update --init --recursive"
alias untracked="git ls-files --others --exclude-standard"
alias staged="git diff --name-only --cached"

#Rails
alias be="bundle exec"
alias rr=". approot"
alias logs="tail -f log/development.log"
alias migrate='bundle exec rake db:migrate'
alias rollback='bundle exec rake db:rollback'
alias pyr="pry"
alias brspec="bin/rspec"

#Utility
alias lsop="lsof -i -P | grep -i 'listen'"
alias sauce="source ~/.zshrc"
alias scheme="gsi"
alias permit="chmod 777"
alias :q="exit"

#Typos
alias mkdire="mkdir"

source ~/.secrets

# Don't raise error on no filename match (required so rake task argument brackets dont have to be escaped)
unsetopt nomatch

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
# ENABLE_CORRECTION="true"

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
plugins=(git alias-tips colored-man)

# User configuration

export PATH="/Users/jack/gocode/bin:/usr/local/heroku/bin:/Users/jack/.rbenv/shims:/usr/local/bin:/Users/jack/bin:/Users/jack/.gem/ruby/:/Users/jack/gocode/bin:/usr/local/heroku/bin:/Users/jack/.rbenv/shims:/usr/local/bin:/Users/jack/bin:/Users/jack/.gem/ruby/:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
