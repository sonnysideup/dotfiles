################################################################################
# Shell Tweaks
################################################################################

export CLICOLOR=1
export PS1="\u@\h:\W ~> "

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

################################################################################
# Configurations
################################################################################

# enable bash completion installed by homebrew
if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
  . $(brew --prefix)/share/bash-completion/bash_completion
fi

################################################################################
# Environment Variables
################################################################################

# default editor for all of my doings
export EDITOR="$(which vim)"

# add personal bins to executable path
export PATH="~/.bin:$PATH"

# add rustup bins to executable path
export PATH="$HOME/.cargo/bin:$PATH"

export TF_VAR_ssh_key_name="am1-prd-kp"
export TF_VAR_ssh_key_path="~/.ssh/$TF_VAR_ssh_key_name.pem"

################################################################################
# Aliases
################################################################################

alias dc='docker-compose'
complete -F _docker_compose dc

alias diff='colordiff'

alias ll='ls -lF'

alias tree='tree -C'

################################################################################
# Functions
################################################################################

# change the namespace of the current context set in kubeconfig
switch_kube_ns() {
  #if [[ command -v kubectl ]]; then
  #  echo "error: kubectl is not installed"
  #fi

  if [[ -z $1 ]]; then
    echo "usage: switch_kube_ns NAMESPACE"
    return 1
  fi

  namespaces="$(kubectl get namespace -o jsonpath='{.items[*].metadata.name}')"

  if [[ ${namespaces[@]} =~ $1 ]]; then
    current_ctx="$(kubectl config current-context)"
    kubectl config set-context "$current_ctx" --namespace="$1"
  else
    echo "error: namespace '$1' does not exist, type \`kubectl get ns\` for a complete list"
  fi
}
