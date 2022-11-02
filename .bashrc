echo 'hello from bashrc'

eval "$(rbenv init -)"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# removes duplicate values in path.
typeset -U PATH

# default editor
export EDITOR='vim'
