function fish_greeting
  echo -e $(expr '(' $(date -jf %m%d%Y 10242022 +%s) - $(date +%s) + 86399 ')' / 86400) "days until KubeCon!!!"
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
alias dev "cd ~/dev"
alias release "find . -name .DS_Store -exec rm -rf {} \;; git push; stove"
alias ga "git add"
alias gc "git commit -v"
alias gp "git push"
alias gpl "git pull --rebase"
alias gs "git status"
alias gd "git diff"
alias master "git checkout master"
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
set -x GPG_TTY $(tty)

alias dokken "env KITCHEN_LOCAL_YAML=kitchen.dokken.yml /opt/chef-workstation/embedded/bin/kitchen"

eval (direnv hook fish)
fish_add_path /opt/chef-workstation/bin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
# resolve git prompt failures in OMF https://github.com/fish-shell/fish-shell/issues/8105
# set -U fish_features no-stderr-nocaret

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent

fish_add_path /opt/homebrew/opt/ruby/bin
fish_add_path /Users/tsmith/go/bin
set -x GOPATH /Users/tsmith/go
fish_add_path /opt/homebrew/opt/go@1.17/bin

function fish_right_prompt
#intentionally left blank
end
