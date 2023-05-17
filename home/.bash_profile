[[ -s "$HOME/.bash_profile_private" ]] && source "$HOME/.bash_profile_private"
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

# For hgd completion
[[ -s "/etc/bash_completion.d/hgd" ]] && source "/etc/bash_completion.d/hgd"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# export PS1='\[\e[00;36m\]\u@\h> \[\e[0m\]\[\e[00;33m\]\w\[\e[0m\]\[\e[00;31m\]$(__git_ps1 " (%s)")\n\[\e[0m\]\[\e[00;32m\]\\$ \[\e[0m\]'
# export GIT_PS1_SHOWDIRTYSTATE=1
# PS1 created by priate profile

export PYTHONSTARTUP=$HOME/.pythonrc

export HISTFILESIZE=
export HISTSIZE=
export HISTCONTROL=ignoreboth:erasedups

# Save History from all terminals
shopt -s histappend
PROMPT_COMMAND="$PROMPT_COMMAND history -a;"

# Auto expand ! combinations on space
bind space:magic-space

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="$HOME/bin:/usr/local/sbin:$PATH"

# Google cloud installed via homebrew
export CLOUDSDK_PYTHON="/usr/local/opt/python@3.8/libexec/bin/python"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
test -e ~/.iterm2_shell_integration.bash && source ~/.iterm2_shell_integration.bash || true
