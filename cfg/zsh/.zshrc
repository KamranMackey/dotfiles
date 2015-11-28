#
# Kamran's zsh configuration
#

# useful aliases
alias cp="cp -i"				# confirm before overwriting something
alias df='df -h'				# human-readable sizes
alias free='free -m'				# show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less

# history settings
HISTFILE=$ZDOTDIR/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
setopt appendhistory				# Don't overwrite history.

# General settings
setopt no_beep 					# Don't ever, ever, beep at me.
setopt extendedglob
setopt nomatch
setopt notify

# enable Vi/Vim keybindings.
bindkey -v

zstyle :compinstall filename '/home/kamran/local/cfg/zsh/.zshrc'

# enable enhanced tab completion.
autoload -Uz compinit
compinit

# enable the colors module.
autoload -U colors
colors

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
$HOME/local/bin/screenfetch-dev

# change the $TERM variable to be xterm-256color
# since we want the full 256 color palette.
export TERM=xterm-256color

# set vim as the default editor (if installed).
export EDITOR="vim"
export VISUAL="vim"

# Arch Linux only aliases
alias sysupdate="sudo pacman -Syyu"		# refresh the repos and do a system update if updates are available
alias repo-refresh="sudo pacman -Syy"	        # refresh the repos only
alias install="sudo pacman -S"			# install packages
alias remove="sudo pacman -Rns"			# remove packages, their config files and unneeded dependencies.
alias aur-install="yaourt -S"			# install packages from the AUR.

# Playlist handler alias
alias playlisthandler="~/.local/bin/playlisthandler"

# zsh manpage alias
alias help="man zsh"

# zsh --version alias
alias version="zsh --version"

# change the vim alias to use the config
# file located in $XDG_CONFIG_HOME.
alias vim="vim -u $XDG_CONFIG_HOME/vim/.vimrc"
