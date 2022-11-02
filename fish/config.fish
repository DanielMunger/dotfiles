
alias gs="git status"
alias gd="git diff"
alias gds="git diff --staged"
alias gl="git log"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias ll="ls -l"
alias be="bundle exec"

status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)
status --is-interactive; and source (pyenv activate global > /dev/null)

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/danielmunger/code/repos/ls-common-break/billing-api/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/danielmunger/code/repos/ls-common-break/billing-api/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/danielmunger/code/repos/ls-common-break/billing-api/node_modules/tabtab/.completions/sls.fish ]; and . /Users/danielmunger/code/repos/ls-common-break/billing-api/node_modules/tabtab/.completions/sls.fish
set -g fish_user_paths "/usr/local/opt/mysql-client/bin" $fish_user_paths

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/danielmunger/code/repos/dns-harvester/node_modules/tabtab/.completions/slss.fish ]; and . /Users/danielmunger/code/repos/dns-harvester/node_modules/tabtab/.completions/slss.fish

export PATH=/bin:/usr/local/opt/mysql-client/bin:/usr/local/Cellar/pyenv-virtualenv/1.1.3/shims:/Users/danielmunger/.pyenv/shims:/Users/danielmunger/.rbenv/shims:/Users/danielmunger/.pyenv/shims:/Users/danielmunger/.pyenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/usr/local/Cellar/pyenv-virtualenv/1.1.3/shims:/Users/danielmunger/.pyenv/shims:/Users/danielmunger/.rbenv/shims:/Users/danielmunger/.pyenv/bin:/Users/danielmunger/.local/bin

set -g fish_user_paths "/usr/local/opt/mysql-client@5.7/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/mysql-client@5.7/bin" $fish_user_paths

# use default node 
status --is-interactive; nvm use default 
