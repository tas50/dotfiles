# simple command shell aliases
alias cl=clear
alias ll="ls -lah"

# setup git
git config --global user.name 'Tim Smith'
git config --global user.email 'tsmith@chef.io'
git config --global push.default simple
eval "$(hub alias -s)"

# chef stuff
alias kef="knife environment from file"
alias krf="knife role from file"
alias hosts="knife node list | sort"
export EDITOR=vim
alias vi=vim

# path aliases
alias dev="cd ~/dev; ls -C"
alias d=dev

# git aliases
alias ga="git add"
alias gc="git commit -v"
alias gca="git add *; git commit -av"
alias gp="git push"
alias gpl="git pull --rebase"
alias gs="git status"
alias uncommitted='for x in *; do cd $x; echo $x; git status; cd ..; done'
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'

# bundler
alias bu="bundle update"
alias bi="bundle install"
alias be="bundle exec"

# I'm lazy
alias v=vi

# sometimes you get something that has no installer
PATH=/usr/local/opt/gnupg/libexec/gpgbin:$PATH:~/bin

# allow the prompt to not show branch if if not in git repo
function in_git_repo () {
  [ -d .git ]
}

# smaller prompt with more info since hostsnames are crazy long
source /usr/local/etc/bash_completion.d/git-prompt.sh
export PS1="\[\033[38;5;160m\]MBP\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;51m\]\w\[$(tput sgr0)\$(__git_ps1) "

# easier navigation
alias ..="cd ..; ls -lh"
alias ...="cd ../..; ls -lh"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# setup rbenv
eval "$(rbenv init -)"

# easily generate CSRs
csr () {
 openssl req -out $1.csr -new -newkey rsa:2048 -nodes -keyout $1.private.key
}

# easily generate 3yr self signed cert from csr
selfsignedcert () {
  openssl x509 -signkey $1.private.key -in $1.csr -req -days 1095 -out $1.crt
}

# setup chef dk in a way that doesn't break the world
PATH=/opt/chefdk/bin:$PATH

edbagshow () {
  knife data bag show $@ -Fj --secret-file /Users/tsmith/.chef/encrypted_data_bag_secret
}

dbagshow () {
  knife data bag show $@ -Fj
}

# alias to open finder windows from CLI in an intelligent way
function o () {
  if [ -z $1 ]; then
    open .
  else
    open $1
  fi
}

# alias for opening sublime text. if nothing opened assume the dev dir
function s () {
  if [ -z $1 ]; then
    /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/dev/
  else
    /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl $1
  fi
}

# alias for opening atom. if nothing opened assume the dev dir
function a () {
  if [ -z $1 ]; then
    atom ~/dev/
  else
    atom $1
  fi
}

# nuke ds_store files before shipping cookbooks
alias release="find . -name .DS_Store -exec rm -rf {} \;; git push; stove"

# autocomplete is nice
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#reinstall chefdk nightly
alias reinstalldk="curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -c current -P chefdk"
alias tree="ls -R | grep \":\" | sed -e 's/://' -e 's/[^-][^\\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
