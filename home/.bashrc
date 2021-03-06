# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend
shopt -s histreedit

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
export TERM='xterm-256color'
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-*color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "${force_color_prompt:-}" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    #PS1=' \[\033[01;32m\]~>\[\033[00m\] '
    #~/repo/git/oss/gnome-terminal-colors-solarized/set_dark.sh
    #~/repo/git/oss/guake-colors-solarized/set_dark.sh
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    if [[ -r ~/.dircolors ]]; then
        eval "$(dircolors -b ~/.dircolors)"
    else
        eval "$(dircolors -b)"
    fi
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    # shellcheck source=/dev/null
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

set -o vi

if [[ -d ~/bin/ ]]; then
  PATH=~/bin/:$PATH
fi

export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.232.b09-0.fc31.x86_64
GROOVY_HOME=/opt/groovy/current
GO_HOME=/usr/local/go
NODE_HOME=/opt/node/current
CARGO_HOME=~/.cargo
GRADLE_HOME=/opt/gradle/current
MAVEN_HOME=/opt/maven/current
ANT_HOME=/opt/ant/current
GRAILS_HOME=/opt/grails/current
MICRONAUT_HOME=/opt/micronaut/current
PACKER_HOME=/opt/packer/current
TERRAFORM_HOME=/opt/terraform/current
LOGSTASH_HOME=/opt/logstash/current
VAULT_HOME=/opt/vault/current
CONSUL_HOME=/opt/consul/current
JQ_HOME=/opt/jq/current
LITTLEBOX_HOME=/opt/littlebox/current
DOCKER_MACHINE_HOME=/opt/docker-machine/current
DOCKER_COMPOSE_HOME=/opt/docker-compose/current
HEROKU_HOME=/usr/local/heroku
NEO4J_HOME=/opt/neo4j/current
IDEA_HOME=/opt/idea/current
RUBYMINE_HOME=/opt/rubymine/current
PYCHARM_HOME=/opt/pycharm/current
VSCODE_HOME=/opt/vscode
PANDOC_HOME=/opt/pandoc/current
VISUALVM_HOME=/opt/visualvm/current
POSTMAN_HOME=/opt/Postman/current

#export GOROOT=$GO_HOME
#export GOPATH=$HOME/gocode

export WORKON_HOME=~/.venv

declare -a scripts_to_source=(
  "$HOME/.rvm/scripts/rvm"
  "$HOME/.homesick/repos/homeshick/homeshick.sh"
  "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
  "/usr/local/bin/virtualenvwrapper.sh"
  "/usr/share/fzf/shell/key-bindings.bash"
  "$MICRONAUT_HOME/bin/mn_completion"
)

for script in ${scripts_to_source[*]}; do
  # shellcheck source=/dev/null
  [[ -s "$script" ]] && source "$script"
done

PATH=$PATH:$JAVA_HOME/bin:$GROOVY_HOME/bin:$GO_HOME/bin:$GOPATH/bin:$NODE_HOME/bin:$CARGO_HOME/bin
PATH=$PATH:$GRADLE_HOME/bin:$MAVEN_HOME/bin:$ANT_HOME/bin:$NEO4J_HOME/bin:$LOGSTASH_HOME/bin
PATH=$PATH:$GRAILS_HOME/bin:$MICRONAUT_HOME/bin:$HEROKU_HOME/bin:$LITTLEBOX_HOME/bin
PATH=$PATH:$IDEA_HOME/bin:$RUBYMINE_HOME/bin:$VSCODE_HOME:$PYCHARM_HOME/bin:$VISUALVM_HOME/bin:$PANDOC_HOME/bin
PATH=$PATH:$PACKER_HOME:$TERRAFORM_HOME:$VAULT_HOME:$CONSUL_HOME:$JQ_HOME:$DOCKER_MACHINE_HOME:$DOCKER_COMPOSE_HOME:$POSTMAN_HOME

PATH=$PATH:$(go env GOPATH)/bin
