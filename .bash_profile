export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
# MacPorts Installer addition on 2009-11-29_at_17:57:34: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# History Tweaks
# resize history size
export HISTSIZE=100000
export HISTFILESIZE=$HISTSIZE

# Erase duplicates
export HISTCONTROL=ignorespace:ignoredups:erasedups

# add timestamp
export HISTTIMEFORMAT="%d/%m/%y %T "

# append to bash_history on quit
# shopt -s histappend
# sync history
history() {
  _bash_history_sync
  builtin history "$@"
}

_bash_history_sync() {
  builtin history -a         #1
  HISTFILESIZE=$HISTFILESIZE #2
  builtin history -c         #3
  builtin history -r         #4
}

PROMPT_COMMAND=_bash_history_sync

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# RVM bash completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# bash_completion support
if [ -f /opt/local/etc/bash_completion ]; then
  . /opt/local/etc/bash_completion
fi

# bash prompt
#PS1="\[\e[4;36;40m\] \$? \[\e[0m\]\
#\[\e[0;32;40m\] \t \[\e[0m\]\
#\[\e[1;35;40m\] \l \[\e[0m\]\
#\[\e[1;34;40m\] \H:\[\e[0m\]\
#\[\e[0;33;40m\] \w \[\e[0m\]\
#\n\n\[\e[7m\]\!\[\e[0m\] \\$ "
if [ -f /opt/local/share/git-core/git-prompt.sh ]; then
  . /opt/local/share/git-core/git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE="1"
  GIT_PS1_SHOWSTASHSTATE="1"
  GIT_PS1_SHOWUPSTREAM="auto,verbose"
  PS1='\e[1;37m[\u@\h \e[1;32m\W$(__git_ps1 " (%s)")\e[1;37m]\$\e[0m '
fi

# alias
alias h="history | grep "
alias nginx_start="sudo port load nginx"
alias nginx_stop="sudo port unload nginx"
alias nginx_restart="nginx_stop; nginx_start;"
alias fpm_start='sudo launchctl load -w /opt/local/etc/LaunchDaemons/org.macports.php5-fastcgi.plist'
alias fpm_stop='sudo launchctl unload -w /opt/local/etc/LaunchDaemons/org.macports.php5-fastcgi.plist'
alias fpm_restart='fpm_stop; fpm_start'
alias slime='open -a "/Applications/Sublime Text 2.app"'
alias aliceWorker="php alice/alice/worker/Worker.php"
alias aliceWorkerPartial="php alice/alice/worker/Worker.php partial"
alias schemaUpdate="php bob/cli/index.php --env=dev --module=maintenance --controller=schema-updater"
alias solrImport="php -d memory_limit=-1 bob/cli/index.php --env=dev --module=solr --controller=import --action=import"
alias solrUpdate="php bob/cli/index.php --env=dev --module=solr --controller=import --action=update"
alias mysql_start="sudo port load mysql5"
alias mysql_stop="sudo port unload mysql5"
alias mysql_restart="mysql_stop; mysql_start"
alias mysql_log="tail -f /opt/local/var/log/mysql5/mysql.log"
alias bobAdyenProcessNotifications="sudo php bob/cli/index.php --env=dev --module=payment --controller=adyen-cronjob --action=process-notifications"
alias webdev_restart="fpm_restart; nginx_restart"
