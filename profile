RESET="\[$(tput sgr0)\]"
GREEN="\[$(tput setaf 2)\]"
ORANGE="\[$(tput setaf 3)\]"

export PS1="${GREEN}\u@\h${RESET}:${ORANGE}\W ${RESET}-> "

# enable terminal colors
export CLICOLOR=1

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# load rbenv automatically
eval "$(rbenv init -)"

# default editor
export EDITOR=$(which vim)

#
export TF_VAR_ssh_key_name="am1-prd-kp"
export TF_VAR_ssh_key_path="~/.ssh/$TF_VAR_ssh_key_name.pem"

# chef envvars
export CHEF_VERSION=12.16.42
export CHEF_DATA_BAGS_PATH=~/code/chef-repo/data_bags
export CHEF_SECRET_KEY_PATH=~/.chef/encrypted_data_bag_secret

# aliases
alias ll='ls -l'
alias tree='tree -C'
