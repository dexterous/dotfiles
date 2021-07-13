# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Add an alias to rerun the last command with sudo
alias ugh='sudo $(history -p \!\!)'

# Add an alias to rerun the last command with less
alias slow='$(history -p \!\!) | less'


alias ls="exa --long --classify --group-directories-first"
alias tree="ls --tree"
alias cat="bat"
alias grep="rg"
alias fzf="fzf --multi --reverse --preview='[[ -r {} ]] && bat {} --color=always'"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
fi

