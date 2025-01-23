
#Add custom scripts folder to PATH. This is not added to .bashrc because we want PATH to have this folder only when logged in.
CustomScriptsDirectory="$HOME/code/dotfiles/custom-scripts"
if [ ! -d $CustomScriptsDirectory ]; then
  echo "Couldn't find custom-scripts folder in $CustomScriptsDirectory. Please fix the path in .profile." >> /dev/stderr
fi
export PATH="$PATH:$CustomScriptsDirectory"
unset CustomScriptsDirectory

# # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
