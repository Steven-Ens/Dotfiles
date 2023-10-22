# .xinitrc

# Screen orientation
xrandr --output DP-1 --primary --mode 3440x1440 --rate 143.96 --left-of HDMI-1 
xrandr --output HDMI-1 --secondary --mode 1680x1050 --rate 59.95

# Set laptop screen brightness
#xbacklight -set 60 &

# Turn on Num Lock 
numlockx &

# Load .Xresources
xrdb ~/.Xresources &

# Turn off DPMS Energy Star power saving and turn off the screensaver
xset -dpms &
xset s off &

# Run i3wm
exec i3

