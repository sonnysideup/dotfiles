# enable bash completion
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

#######################################
# modify PATH
#######################################

# add local binaries
export PATH="$HOME/.bin:$PATH"

# localize python venv to projects
export PIPENV_VENV_IN_PROJECT=1

# load sensitive data
[[ -f $HOME/.sensitive-credentials ]] && . "$HOME/.sensitive-credentials"

# NOTE: move to .bash_aliases
alias ls='ls -F'
alias ll='ls -l'

# activate python version manager
eval "$(pyenv init -)"
