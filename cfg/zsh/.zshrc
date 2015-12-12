#
# Kamran's zsh configuration
#

# xterm hack for some terminals to support 256 colors
if [ "$TERM" = "xterm" ]; then
  if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
  else
    export TERM='xterm-color'
  fi
fi

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-solarized.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL


# Useful aliases.
alias cp="cp -i"			# confirm before overwriting something
alias df='df -h'			# human-readable sizes
alias free='free -m'			# show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less

# History settings
HISTFILE=$ZDOTDIR/.histfile
HISTSIZE=1000000			# Make the history go up to 1 million lines
SAVEHIST=1000000			# Same for this.
setopt appendhistory			# Don't overwrite history.
setopt inc_append_history		# save history as we go, not just when zsh exits
setopt extended_history			# put timestamps in the history.
setopt no_bg_nice
setopt share_history
setopt bang_hist
#setopt hist_reduce_blanks
setopt hist_ignore_space
setopt hist_find_no_dups
setopt nohistverify
setopt prompt_subst
##setopt hist_fcntl_lock
setopt always_to_end
#setopt nohistfcntllock

# General settings
setopt autocd				# automatically cd into directories if I only type the directory name
setopt no_beep				# don't ever, ever, beep at me.
setopt extendedglob			# enable extended globbing.
setopt nomatch
setopt notify
setopt completealiases			# autocomplete aliases

zstyle :compinstall filename '/home/kamran/local/cfg/zsh/.zshrc'

# A few performance tweaks to
# make the completion system
# a bit faster.
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $HOME/.zsh/cache
zstyle ':completion:*' use-perl on

# make the completion system look a
# bit better and enable the tab completion
# graphical menu.
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' menu yes select 	# show menu when tabbing
zstyle ':completion:*' rehash true	# set compinit to automatically detect new executables

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
unalias run-help && alias help=run-help

# set some tools such as grep
# to automatically use colors
# in their output.
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

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

# better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

# launch screenfetch on terminal launch (if it's installed).
# screenfetch displays various system details such as the
# CPU, how much RAM is in use, the number of packages, the
# shell name and version number, and other small things.
$HOME/.local/bin/screenfetch-dev

# add ruby gems to the $PATH.
PATH=$PATH:/home/kamran/.gem/ruby/2.2.0/bin
export PATH

# set vim as the default editor (if installed).
export EDITOR="vim"
export VISUAL="vim"

# enable colors in the less pager
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

b16() {
    BASE16_SHELL="$@"
    [[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL

}

compdef '_files -g "$HOME/.config/base16-shell/*"' b16

# set less as the default pager
PAGER='less'

# Arch Linux only aliases
alias sysupdate="sudo pacman -Syyu"     # refresh the repos and do a system update if updates are available
alias repo-refresh="sudo pacman -Syy"   # refresh the repos only
alias install="sudo pacman -S"          # install packages
alias remove="sudo pacman -Rns"         # remove packages, their config files and unneeded dependencies.
alias aur-install="yaourt -S"           # install packages from the AUR.

# Playlist handler alias
alias playlisthandler="$HOME/local/bin/playlisthandler"

# zsh --version alias
alias version="zsh --version"

# alias hub as git
alias git=hub
