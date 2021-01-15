# enable bash completion
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

#######################################
# modify PATH
#######################################

# add local binaries
export PATH="$HOME/.bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"

# localize python venv to projects
export PIPENV_VENV_IN_PROJECT=1

# load sensitive data
[[ -f $HOME/.sensitive-credentials ]] && . "$HOME/.sensitive-credentials"

# NOTE: move to .bash_aliases
alias ls='ls -F'
alias ll='ls -l'

# activate python version manager
eval "$(pyenv init -)"

# link to java 8
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH="/usr/local/opt/node@10/bin:$PATH"

eval $(minikube completion bash)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sonny/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/sonny/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sonny/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/sonny/Downloads/google-cloud-sdk/completion.bash.inc'; fi
