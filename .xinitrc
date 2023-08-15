# .xinitrc

# Screen orientation
xrandr --output DP-2 --primary --auto --left-of eDP-1

# Turn on Num Lock 
numlockx &

# Load .Xresources
xrdb ~/.Xresources &

# Set laptop screen brightness
xbacklight -set 60 &

# Turn off DPMS Energy Star power saving and turn off the screensaver
xset -dpms &
xset s off &

# Run i3wm
exec i3

