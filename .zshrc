
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export TOOLSHOME=$HOME/tools
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LANG="en_US.UTF-8"
export GRADLE_OPTS="-Dorg.gradle.daemon=true"
export SCRIPTS_DIR=$HOME/.scripts
# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="amuse"
export EDITOR='mate -w'
export JSTESTDRIVER_HOME=/Users/chrkolst/tools/jstestdriver
export JRUBY_OPTS="--1.9"
export MAVEN_OPTS="-Xmx1536m -XX:MaxPermSize=384m"
export SRC_HOME=$HOME/src
export SBT_OPTS="-Xmx1536m -XX:MaxPermSize=384m"
export FINN_HOME=$SRC_HOME/finn
# Default Java charset is MacRoman (of all things) override with UTF-8

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

alias j6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias j7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias j8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
alias pullall='find . -name ".git" -type d -depth 2 -execdir git pull \;'
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mac ruby rails brew bundler grails gradle autojump themes)

source $ZSH/oh-my-zsh.sh
zstyle ':completion:*' users chrkolst root
# Customize to your needs...
if [ -s "$HOME/bin" ]; then
    export PATH=$PATH:$HOME/bin
fi
if [ -s "$SCRIPTS_DIR" ]; then
  export PATH=$PATH:$SCRIPTS_DIR
fi
if [ -s "/usr/local/bin" ]; then
    export PATH=/usr/local/bin:$PATH
fi

alias dashboard="ssh finn@jobdashboard"
alias jiraboard="ssh finn@jiraboard"
alias emacs="/usr/local/Cellar/emacs/24.3/Emacs.app/Contents/MacOS/Emacs"
alias uat="ssh finn@uat.finn.no"
alias mod1="ssh finn@mod1.finntech.no"
alias jobscreen="ssh finn@jobscreen"
alias mod2="ssh finn@mod2.finntech.no"
alias dev="ssh finn@dev.finn.no"
alias iadbuild="cd $FINN_HOME/iad && git safepull && mvn -Pfinn clean install -U -T1C"
alias buildfinnamd="cd $FINN_HOME/mupf-js/src/main/webapp/clientscript/finn/amd && node r.js -o build.js"
alias 'gits=cd $FINN_HOME/search && for i in `ls`; do echo "----CHECKING $i----"; cd $i; git s; cd ..; done'
alias 'gitu=cd $FINN_HOME/search && for i in `ls`; do echo "----UPDATING $i----"; cd $i; git pull; cd ..; done'
alias f="cd $FINN_HOME/iad"
alias afj="ssh chriswk@afj"

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

[[ -s "$HOME/.env" ]] && source "$HOME/.env"

export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

export GROOVY_HOME=/usr/local/Cellar/groovy/2.2.3/libexec

# drop into tmux if this is a login shell and we're not in tmux already
if (which tmux >/dev/null) && [[ -o login ]] &&  [[ -z "$TMUX" ]] && [[ -f ~/etc/script/tmux-login ]]; then
  exec zsh "$HOME/etc/script/tmux-login" $(which tmux)
fi

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/chrkolst/.gvm/bin/gvm-init.sh" ]] && source "/Users/chrkolst/.gvm/bin/gvm-init.sh"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
