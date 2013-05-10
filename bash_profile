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

# Give user and local binaries precendence over system binaries
export PATH="$HOME/.bin:/usr/local/bin:/usr/local/sbin:$PATH"

# Where npm libraries are stored 
export NODE_PATH=/usr/local/lib/node_modules

# Enables bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Activate rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Activate tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Tweaking REEs GC settings
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=250000000

# Aliases
alias tree='tree -C'
alias be='bundle exec'
alias ssh='TERM=xterm-256color ssh'
alias grep='grep --color=auto'
alias l='ls -F'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'

