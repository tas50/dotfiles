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
alias dev "cd ~/dev"
alias work "cd ~/dev/work"
alias release "find . -name .DS_Store -exec rm -rf {} \;; git push; stove"
alias ga "git add"
alias gc "git commit -v"
alias gp "git push"
alias gpl "git pull --rebase"
alias gs "git status"
alias gd "git diff"
alias master "echo Tim you meant main; git checkout main"
alias main "git checkout main"
alias stash "git stash"
alias a "code"
alias c "code"
alias cb "cd ~/dev/chef-cookbooks"
alias bu "bundle update"
alias bi "bundle install"
alias be "bundle exec"
alias cl clear
alias o "open ."

# set -x CHANGELOG_GITHUB_TOKEN PUTITHERE
# set -x GITHUB_TOKEN PUTITHERE

set -x EDITOR vim

alias dokken "env KITCHEN_LOCAL_YAML=kitchen.dokken.yml /opt/chef-workstation/embedded/bin/kitchen"

eval (direnv hook fish)
fish_add_path /opt/chef-workstation/bin
# resolve git prompt failures in OMF https://github.com/fish-shell/fish-shell/issues/8105
set -U fish_features no-stderr-nocaret

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent