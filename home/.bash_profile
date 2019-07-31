if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export PS1='\[\e[00;36m\]\u@\h> \[\e[0m\]\[\e[00;33m\]\w\[\e[0m\]\[\e[00;31m\]$(__git_ps1 " (%s)")\n\[\e[0m\]\[\e[00;32m\]\\$ \[\e[0m\]'
export GIT_PS1_SHOWDIRTYSTATE=1

export PYTHONSTARTUP=$HOME/.pythonrc

export HISTFILESIZE=
export HISTSIZE=
export HISTCONTROL=ignoreboth:erasedups

# Save History from all terminals
shopt -s histappend
PROMPT_COMMAND="$PROMPT_COMMAND history -a;"

# Auto expand ! combinations on space
bind space:magic-space

source $HOME/.bash_aliases

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="/usr/local/sbin:$PATH"
