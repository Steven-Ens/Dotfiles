# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompts 1 & 2
PS1='\[\e[1;38;5;150m\]\u \[\e[1;37m\]at \[\e[1;38;5;150m\]\h \[\e[1;37m\]in \[\e[1;38;5;139m\]\w \[\e[1;37m\]\$ \[\e[0;37m\]'
PS2='\[\e[1;37m\]\$> \[\e[0;37m\]'

# Auto vi keybindings for bash
set -o vi

# Set vim as editor for cronie
export EDITOR=vim

# Update directory colours to blue (di) and remove the green highlight from sticky & other-writable directories making them yellow (tw)
LS_COLORS="di=1;38;5;74:tw=1;33"
export LS_COLORS

# Reset CTL-l to clear screen after vi keys set
bind -m vi-insert "\C-l":clear-screen

# Aliases
# Modify ls 
alias ls='ls -ahl --color=auto'

# Home directory
alias h='cd ~' 
alias ..='cd ..' # Last directory
alias ...='cd ../..'

# Directory shortcuts
alias c='cd ~/repositories/Core'
alias d='cd ~/Downloads' 
alias g='cd ~/guides' 
alias r='cd ~/repositories' 

# Replace 'sudo !!'
alias redo='sudo "$BASH" -c "$(history -p !!)"'
# Reboot 
alias reboot='sudo reboot'
# Shutdown
alias shutdown='sudo shutdown now'
# View enabled processes
alias status='sudo sv status /run/runit/service/*' 

#alias mv -i

# Open new terminal in same directory as current terminal
function cd()
{
	builtin cd "$*"
	pwd > ~/.lastdir
}
if [ -e ~/.lastdir ]; then
	cd "$(cat ~/.lastdir)"
fi

# Open new terminal in ~ once terminal closed
trap "echo /home/steve > ~/.lastdir" EXIT


