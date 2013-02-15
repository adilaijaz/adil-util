# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.mavenrc ]; then
   source ~/.mavenrc
fi

#$HOME/bin/ssh-agent.sh

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export M2_HOME=/usr/local/maven
export M2=$M2_HOME/bin
export M2_REPO=${HOME}/.m2/repository
export MAVEN_OPTS="-Xmx1024m -Xms512m"
export ANT_OPTS="-Xms512m -Xmx2500m -XX:PermSize=256m -XX:MaxPermSize=1024m"
