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
alias gst="git status"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias gp="git pull"
alias cb="git checkout"
alias lb="git branch"
alias branch="git branch"
alias gm="git merge"
alias diff="git diff"
alias brc="vim ~/.bashrc"
alias dbupdate="bundle exec rake db:migrate && bundle exec rake db:test:prepare"
alias be="bundle exec"
alias chrome="/usr/bin/open -a '/Applications/Google Chrome.app'"
alias subupdate="git submodule update --init --recursive"
alias rokurun="heroku run"
alias permit="chmod 777"
alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"
alias rot13="figlet -f rot13"
alias sauce="source ~/.bash_profile"
alias rr=". approot"
alias bbin="cd ~/bin"
alias dox="cd ~/code/doximity"
alias konarun="bundle && bundle exec rake tmp:clear && bundle exec rake konacha:run"
alias konaserve="bundle && bundle exec rake tmp:clear && bundle exec rake konacha:serve"
alias dls="cd ~/Downloads"
#I guess I already trust Github with everything else...
alias git="hub"
alias scheme="gsi"
alias lsop="lsof -i -P | grep -i 'listen'"
alias suble="subl"
alias logs="tail -f log/development.log"
alias campa="cd ~/code/campaigns"
alias home="cd ~/"
alias ulists='cd ~/code/user_lists'
alias migrate='bundle exec rake db:migrate'
alias rollback='bundle exec rake db:rollback'
alias pyr="pry"
alias code="cd ~/code"
alias vrc="vim ~/.vimrc"
alias vimrc="vim ~/.vimrc"
source ~/.secrets
