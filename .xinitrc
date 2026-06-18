# .xinitrc

# Turn on Num Lock 
numlockx &

# Load .Xresources
xrdb ~/.Xresources

# Set screen brightness
brightnessctl set 60%

# Start i3
exec i3
