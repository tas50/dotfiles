# simple command shell aliases
alias cl=clear
alias ll="ls -lah"

# setup git
git config --global user.name 'Tim Smith'
git config --global user.email 'tsmith84@gmail.com'
git config --global push.default simple

# chef stuff
alias kef="knife environment from file"
alias krf="knife role from file"
alias hosts="knife node list | sort"
export EDITOR=vim

# path aliases
alias dev="cd ~/dev; ls -C"

# git aliases
alias ga="git add"
alias gc="git commit -v"
alias gca="git commit -av"
alias gp="git push"
alias gpl="git pull --rebase"
alias gs="git status"
alias uncommitted='for x in *; do cd $x; echo $x; git status; cd ..; done'

# bundler
alias bu="bundle update"
alias bi="bundle install"
alias be="bundle exec"

# I'm lazy
alias v=vi

# sometimes you get something that has no installer
PATH=$PATH:~/Applications/packer:~/dev/chef-repo/lib:~/Applications/ec2-api-tools/bin

# smaller prompt with more info since hostsnames are crazy long
PS1="\[\e[00;31m\]MBP\[\e[0m\]\[\e[00;37m\]_\[\e[0m\]\[\e[00;31m\]\u\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[00;36m\]\w\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

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

# aws creds
. ~/.aws/aws.sh

# aws command line tools
export EC2_HOME=~/Applications/ec2-api-tools
export JAVA_HOME=$(/usr/libexec/java_home)

# setup chef dk in a way that doesn't break the world
PATH=/opt/chefdk/bin:$PATH

# add the various chef bin tools
PATH=~/dev/chef-repo/bin:$PATH

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
alias release="find . -name .DS_Store -exec rm -rf {} \;; stove"

eval $(docker-machine env default)
