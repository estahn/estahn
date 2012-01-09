export CLICOLOR=1
# MacPorts Installer addition on 2009-11-29_at_17:57:34: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# History Tweaks
# Erase duplicates
export HISTCONTROL=erasedups

# resize history size
export HISTSIZE=100000

# add timestamp
export HISTTIMEFORMAT="%d/%m/%y %T "

# append to bash_history on quit
shopt -s histappend

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# RVM bash completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# bash_completion support
if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi
