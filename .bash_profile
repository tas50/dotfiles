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

# sometimes you get something that has no installer
PATH=$PATH:~/Applications/packer
