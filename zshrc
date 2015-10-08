export EDITOR="vim"
export PGDATA="/usr/local/pgsql/data"
eval "$(rbenv init -)"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#Add psql to path
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"

#Add Anacoda to path
export PATH="/Users/jacknoble/anaconda/bin:$PATH"

#Golang dep
export GOPATH="$HOME/code/go/"
export PATH="$GOPATH/bin:$PATH"


export PATH="/usr/local/bin:$HOME/bin:$HOME/.gem/ruby/:$PATH"
##
#Nav
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias bbin="cd ~/bin"
alias dls="cd ~/Downloads"
alias dox="cd ~/code/doximity/doximity"
alias campa="cd ~/code/doximity/campaigns"
alias reports="cd ~/code/go/src/github.com/doximity/reports/"
alias home="cd ~/"
alias ulists='cd ~/code/doximity/user-lists'
alias dotfiles="cd ~/dotfiles"
alias code="cd ~/code"

#Quick File Access
alias zrc="vim ~/dotfiles/zshrc"
alias vrc="vim ~/dotfiles/vimrc"
alias vimt="vim '+CommandT'"
alias scratch="vim scratch"

#Git
alias gst="git status"
alias gm="git merge"
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

ZSH_THEME="robbyrussell"
plugins=(git alias-tips colored-man)
source $ZSH/oh-my-zsh.sh
