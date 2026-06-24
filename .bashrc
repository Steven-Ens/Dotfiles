# ~/.bashrc

# Only run the following settings in interactive shells
[[ $- != *i* ]] && return

# Prompt
PS1='\[\e[1;38;5;150m\]\u \[\e[1;37m\]at \[\e[1;38;5;150m\]\h \[\e[1;37m\]in \[\e[1;38;5;139m\]\w \[\e[1;37m\]\$ \[\e[0;37m\]'
PS2='\[\e[1;37m\]\$> \[\e[0;37m\]'

# Auto vi keybindings
set -o vi

# Set vim as the default editor
export EDITOR=vim

# Update directory colours to blue (di), and remove the green highlight from sticky & other-writable directories making them yellow (tw)
LS_COLORS="di=1;38;5;74:tw=1;33"
export LS_COLORS

# Use CTRL-l to clear screen after bash vi keys set
bind -m vi-insert "\C-l":clear-screen

# Show all files in human-readable long format
alias ls='ls -ahl --color=auto'

# Interactive commands
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# Previous directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Directory shortcuts
alias h='cd ~' 
alias d='cd ~/Downloads' 
alias r='cd ~/repositories' 

# feh
alias feh='feh --fullscreen --draw-filename'
# Run PIA VPN
alias vpn='sudo openvpn --config /etc/openvpn/client/ca_vancouver.ovpn --auth-nocache --auth-user-pass /etc/openvpn/login.txt'
# View enabled processes
alias status='sudo sv status /run/runit/service/*' 
# Reboot 
alias reboot='sudo reboot'
# Shutdown
alias shutdown='sudo poweroff'

# Open new terminal in same directory as current terminal
cd() {
	builtin cd "$@" || return
	pwd > ~/.lastdir
}
if [[ -f ~/.lastdir ]]; then
	cd "$(cat ~/.lastdir)"
fi

# Open new terminal in ~ once terminal closed
trap 'echo "$HOME" > ~/.lastdir' EXIT

# nvm source string loading nvm and nvm bash_completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
