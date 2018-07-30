function edit_fish_config --description 'open up this file for editing'
  atom ~/.config/fish/config.fish
end

function arg_or_cwd --description 'use the passed argument or the cwd'
  if [ $argv ]
    echo $argv
  else
    echo (pwd)
  end
end

alias gca "git add *; git commit -av"
alias ip "dig +short myip.opendns.com @resolver1.opendns.com"
alias localip "ipconfig getifaddr en0"
alias v "vim"
alias dev "cd ~/dev"
alias work "cd ~/dev/work"
alias release "find . -name .DS_Store -exec rm -rf {} \;; git push; stove"
alias ga "git add"
alias gc "git commit -v"
alias gp "git push"
alias gpl "git pull --rebase"
alias gs "git status"
alias gd "git diff"
alias a "atom"
alias cb "cd ~/dev/chef-cookbooks"
alias bu "bundle update"
alias bi "bundle install"
alias be "bundle exec"
alias cl clear
alias o "open ."

#eval (chef shell-init fish)

set -x CHANGELOG_GITHUB_TOKEN PUTITHERE
set -x GITHUB_TOKEN PUTITHERE

#source $HOME/.aws/aws.sh

set -x EDITOR vim

alias dokken "env KITCHEN_LOCAL_YAML=.kitchen.dokken.yml /opt/chefdk/embedded/bin/kitchen"

set -x TF_VAR_keypair (cat ~/.ssh/id_rsa.pub)
