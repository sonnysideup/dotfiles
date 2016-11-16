# enable terminal colors
export CLICOLOR=1

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# load rbenv automatically
eval "$(rbenv init -)"

# aliases
alias ll='ls -l'
