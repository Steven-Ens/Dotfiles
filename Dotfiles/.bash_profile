# ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Autostart X at login
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
exec startx
fi
