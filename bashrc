export PATH="/usr/local/bin:$HOME/bin:$HOME/.gem/ruby/:$PATH"
eval "$(rbenv init -)"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#Golang dep
export GOPATH="/Users/jack/gocode"

##
# Your previous /Users/jack/.bash_profile file was backed up as /Users/jack/.bash_profile.macports-saved_2014-05-21_at_11:51:44
##
#For Git prompt
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

#For Auto completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#Nav
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias bbin="cd ~/bin"
alias dls="cd ~/Downloads"
alias dox="cd ~/code/doximity"
alias campa="cd ~/code/campaigns"
alias home="cd ~/"
alias ulists='cd ~/code/user_lists'
alias dotfiles="cd ~/dotfiles"
alias code="cd ~/code"

#Quick File Access
alias brc="vim ~/dotfiles/bashrc"
alias vrc="vim ~/dotfiles/vimrc"

#Git
alias gp="git pull"
alias gst="git status"
alias cb="git checkout"
alias lb="git branch"
alias branch="git branch"
alias gm="git merge"
alias diff="git diff"
#I guess I already trust Github with everything else...
alias git="hub"
alias subupdate="git submodule update --init --recursive"
alias untracked="git ls-files --others --exclude-standard"

#Rails
alias be="bundle exec"
alias rokurun="heroku run"
alias rr=". approot"
alias konarun="bundle && bundle exec rake tmp:clear && bundle exec rake konacha:run"
alias konaserve="bundle && bundle exec rake tmp:clear && bundle exec rake konacha:serve"
alias logs="tail -f log/development.log"
alias migrate='bundle exec rake db:migrate'
alias rollback='bundle exec rake db:rollback'
alias pyr="pry"

#Utility
alias lsop="lsof -i -P | grep -i 'listen'"
alias sauce="source ~/.bash_profile"
alias scheme="gsi"
alias permit="chmod 777"

source ~/.secrets
