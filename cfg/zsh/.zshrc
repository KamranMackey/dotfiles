#
#  Kamran's zsh configuration.
#

# xterm hack for some terminals to support 256 colors
if [ "$TERM" = "xterm" ]; then
  if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
  else
    export TERM='xterm-color'
  fi
fi

# Useful aliases.
alias cp="cp -i"                # confirm before overwriting something
alias df='df -h'                # human-readable sizes
alias free='free -m'            # show sizes in MB
alias more=less                 # more is also less!

# History settings
HISTFILE=$HOME/.histfile
HISTSIZE=1000000                # Make the history go up to 1 million lines
SAVEHIST=1000000                # Same for this.
setopt appendhistory            # Don't overwrite .histfile.
setopt inc_append_history       # save history as we go, not just when zsh exits
setopt extended_history         # put timestamps in the history.
setopt share_history
setopt bang_hist
setopt hist_reduce_blanks       # Remove superfluous blanks from .histfile entiries.
setopt hist_ignore_space
setopt hist_find_no_dups
setopt nohistverify
setopt prompt_subst
setopt always_to_end

# General settings
setopt autocd                   # automatically cd into directories if I only type the directory name
setopt no_beep                  # don't ever, ever, beep at me.
setopt extendedglob             # enable extended globbing.
setopt nomatch
setopt notify
setopt completealiases          # autocomplete aliases

zstyle :compinstall filename '/Users/kamran/.zshrc'

# A few performance tweaks to make
# the completion system a bit faster
# by using a cache and using Perl.
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $HOME/.zsh/cache
zstyle ':completion:*' use-perl on

# make the completion system look a
# bit better and enable the tab completion
# graphical menu.
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' menu yes select  # show menu when tabbing
zstyle ':completion:*' rehash true      # set compinit to automatically detect new executables

# set the fpath and load all of the
# default functions of zsh.
fpath=($ZDOTDIR/completions $fpath)
autoload -U compinit && compinit

# enable the colors module.
autoload -U colors && colors

# enable the pomptinit module.
autoload -U promptinit && promptinit

# enable the help module, unalias
# run-help, and alias it to help.
autoload -U run-help && autoload run-help-git
autoload run-help-svn && autoload run-help-svk
unalias run-help &>/dev/null 
alias help=run-help

# set some tools such as grep
# to automatically use colors
# in their output.
alias ls='ls -G'
alias grep='grep -G'
alias egrep='egrep -G'
alias fgrep='fgrep -G'

# Find out how many colors the terminal is capable of putting out.
# Color-related settings _must_ use this if they don't want to blow up on less
# endowed terminals.
C=$(tput colors)

# make the prompt colored and show the username,
# hostname, and the current working directory.
PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%# "

# Change the name of the terminal to
# username@hostname: directory.
case $TERM in
    xterm*)
        precmd () {print -Pn "\e]0;%n@%m: %~\a"}
        ;;
esac

# launch neofetch on terminal launch (if it's installed).
# neofetch displays various system details such as the
# CPU, how much RAM is in use, the number of packages, the
# shell name and version number, and other small and helpful 
# things.
/usr/local/bin/neofetch

# set vim as the default editor (if installed).
export EDITOR="vim"
export VISUAL="vim"

# Print the current running command's name to the window title.
function preexec {
   if [[ $TERM == xterm-*  ]]; then
       local cmd=${1[(wr)^(*=*|sudo|exec|ssh|-*)]}
       print -Pn "\e];$cmd:q\a"
   fi
}

# colored manpages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

# set less as the default pager
PAGER='less'

# zsh --version alias, similar to
# bash's built-in version command.
alias version="zsh --version"

alias bupgrade='brew upgrade $(brew list)'
