# simple command shell aliases
alias cl=clear
alias ll="ls -lah"

# setup git
git config --global user.name 'Tim Smith'
git config --global user.email 'tim@cozy.co'
git config --global push.default simple

# chef stuff
alias kef="knife environment from file"
alias krf="knife role from file"
export EDITOR=vim

# path aliases
alias dev="cd ~/dev; ls -C"
alias cr="cd ~/dev/chef-repo; ls -C"
alias cb="cd ~/dev/chef-repo/cookbooks; ls -C"

# sometimes you get something that has no installer
PATH=$PATH:~/Applications/packer:~/dev/chef-repo/lib
alias s='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

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


# aws
. ~/.aws/aws.sh
