# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# Alias to multiple ls commands
#alias la='ls -A'               # show hidden files
#alias ll='ls -Al'               # show hidden files
#alias ls='ls -Gh'               # show hidden files

alias grep="grep --color=auto --exclude=\"*\.svn*\""
alias grepjava="grep -RH --include=\"*.java\""
alias grepspring="grep -RH --include=\"*.spring*\""
alias greppom="grep -RH --include=\"pom.xml\" --include=\"*.pom\""
alias gitpull="git pull origin master"
alias gitpush="git push origin master"
###########################################################
# bashrc variables from linkedin
###########################################################

### aliases

# adil's aliases
alias vi='vim -O '
alias cdl='cd $LEOHOME'
alias cdw='cd ${HOME}/Documents/workspace/'
