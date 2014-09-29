# simple command shell aliases
alias cl=clear
alias ll="ls -lah"

# setup git
git config --global user.name 'Tim Smith'
git config --global user.email 'tim@cozy.co'
git config --global push.default simple

# chef aliases
alias kef="knife environment from file"
alias krf="knife role from file"

# path aliases
alias dev="cd ~/dev"
alias cr="cd ~/dev/chef-repo"
alias cb="cd ~/dev/chef-repo/cookbooks"

# sometimes you get something that has no installer
PATH=$PATH:~/Applications/packer
alias s='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# smaller prompt with more info since hostsnames are crazy long
PS1="\[\e[00;31m\]MBP\[\e[0m\]\[\e[00;37m\]_\[\e[0m\]\[\e[00;31m\]\u\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[00;36m\]\w\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

