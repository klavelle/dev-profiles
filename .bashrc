#export TERM=xterm-color
#export CLICOLOR=1

# Stuff from localvm .bashrc...

# enable color support of ls and also add handy aliases
#if [ -x /usr/bin/dircolors ]; then
    #test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -FG'
    #alias ls='ls -F --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
#fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
if [ -f ~/.bash_smarttouch_aliases ]; then
    . ~/.bash_smarttouch_aliases
fi

# BEGIN My Customizations

export PATH=~/bin:/usr/local/bin:$PATH
export EDITOR=vim

source ~/.bash_colors

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

function grep_less() {
	grep --color=always ${*} | less -R
}

# Prompt-related stuff
print_before_the_prompt() {
	printf "\n${Cyan}%s: ${BGreen}%s ${Purple}%s\n${Color_Off}" "$USER" "$PWD" 
}

#if [ -f ~/gnome_term_reddit.sh ]; then
#	source ~/gnome_term_reddit.sh
#  else
	PROMPT_COMMAND=print_before_the_prompt
	PS1='-> '
#fi


