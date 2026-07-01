# ~/.bashrc

# Only run the following settings in interactive shells
[[ $- != *i* ]] && return

# Prompts
PS1='\[\e[1;38;5;150m\]\u \[\e[1;37m\]at \[\e[1;38;5;150m\]\h \[\e[1;37m\]in \[\e[1;38;5;139m\]\w \[\e[1;37m\]\$ \[\e[0;37m\]'
PS2='\[\e[1;37m\]\$> \[\e[0;37m\]'

# Set Vim as the default editor
export EDITOR=vim

# Set Vi keybindings
set -o vi

# Use CTRL-l to clear screen with Vi keybindings set
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
alias r='cd ~/Repositories'

# View enabled processes
alias status='sudo sv status /run/runit/service/*' 
# Reboot 
alias reboot='sudo reboot'
# Shutdown
alias shutdown='sudo poweroff'

# feh
alias feh='feh --fullscreen --draw-filename'
# PIA VPN
alias vpn='sudo openvpn --config /etc/openvpn/client/ca_vancouver.ovpn --auth-nocache --auth-user-pass /etc/openvpn/login.txt'

# New foundry project
new() {
    forge init --empty "$1" || return

    cp ~/Dotfiles/foundry/.gitignore "$1/"
    cp ~/Dotfiles/foundry/.solhint.json "$1/"
}

# Open new terminals in the same directory as the current terminal
cd() {
	builtin cd "$@" || return
	pwd > ~/.lastdir
}
if [[ -f ~/.lastdir ]]; then
	cd "$(cat ~/.lastdir)"
fi

# Open new terminals in ~ once terminal closed
trap 'echo "$HOME" > ~/.lastdir' EXIT

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Foundry
export PATH="$PATH:$HOME/.foundry/bin"
