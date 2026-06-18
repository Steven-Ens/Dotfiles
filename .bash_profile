# ~/.bash_profile

# Load .bashrc for login shells
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Autostart X at login
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx
fi
