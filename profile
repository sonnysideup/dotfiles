# Set the terminal prompt
export PS1="\u@\h \w$ "

# Turn on terminal colors
export CLICOLOR=1

# Set editor
export EDITOR=vim

# Set editor for `bundle open` cmd
export BUNDLER_EDITOR=subl

# Make clean tarballs without extended attr files
export COPYFILE_DISABLE=true

# Setup bin path
export PATH="$HOME/.bin:/usr/local/bin:/usr/local/sbin:/opt/packer:$PATH"

# Where npm libraries are stored
export NODE_PATH=/usr/local/lib/node_modules

# Set java home
export JAVA_HOME=$(/usr/libexec/java_home)

# Setup Amazon EC2 CLI tools
export AWS_ACCOUNT_ID=839941853159
export AWS_ACCESS_KEY=AKIAIHQSZK7CZXT2VB5Q
export AWS_SECRET_KEY=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
export EC2_PRIVATE_KEY=~/.aws/pk.pem
export EC2_CERT=~/.aws/cert.pem
export EC2_HOME=~/.aws/ec2-api-tools
export PATH="$PATH:$EC2_HOME/bin"

# Tweaking REEs GC settings
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=250000000

# Chef data paths
export CHEF_REPO="$HOME/code/chef-repo"
export CHEF_DATA_BAGS="$CHEF_REPO/data_bags"
export CHEF_ROLES="$CHEF_REPO/roles"

# Enables bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Activate rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Activate tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Enable hub alias and bash completion
eval "$(hub alias -s)"
#if [ -f $HOME/.etc/hub/etc/hub.bash_completion.sh ]; then
#  . $HOME/.etc/hub/etc/hub.bash_completion.sh
#fi

# Aliases
alias tree='tree -C'
alias be='bundle exec'
alias ssh='TERM=xterm-256color ssh'
alias grep='grep --color=auto'
alias l='ls -F'
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -Al'

alias flushgems='gem list | cut -d " " -f 1 | egrep -v "test-unit|rdoc|psych|io-console|minitest|bigdecimal|rake|json" | xargs gem uninstall -aIx'
