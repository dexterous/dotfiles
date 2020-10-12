# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Add an alias to rerun the last command with sudo
alias ugh='sudo $(history -p \!\!)'

# Add an alias to rerun the last command with less
alias slow='$(history -p \!\!) | less'


alias ls="exa --long --classify"
alias tree="ls --tree"
alias cat="bat"
alias fzf="fzf --multi --reverse --preview='[[ -r {} ]] && bat {} --color=always'"
