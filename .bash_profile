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
alias ec="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/dev/chef-repo/"
alias hosts="knife node list | sort"
export EDITOR=vim

# path aliases
alias dev="cd ~/dev; ls -C"
alias cf="cd ~/dev/cozy; ls -C"
alias cr="cd ~/dev/chef-repo; ls -C"
alias crb="cd ~/dev/chef-repo/bin; ls -C"
alias cb="cd ~/dev/chef-repo/cookbooks; ls -C"
alias dbag="cd ~/dev/chef-repo/data_bags; ls -C"

# sometimes you get something that has no installer
PATH=$PATH:~/Applications/packer:~/dev/chef-repo/lib:~/Applications/ec2-api-tools/bin
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
  knife data bag show $@ -Fj --secret-file /Users/tim/.chef/encrypted_data_bag_secret
}

dbagshow () {
  knife data bag show $@ -Fj
}

export COZY_PROJECTS_DIR="$HOME/dev/cozy"
export PATH="$COZY_PROJECTS_DIR/cozy-dotfiles:$PATH"
source "$COZY_PROJECTS_DIR/cozy-dotfiles/util/shell_helpers.sh"
source "$COZY_PROJECTS_DIR/cozy-dotfiles/util/bash_completion.sh"
