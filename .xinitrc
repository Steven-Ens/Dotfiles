# .xinitrc

# Turn on Num Lock 
numlockx &

# Use the secondary monitor if connected
if xrandr | grep -q "^HDMI-1 connected"; then
    xrandr --output HDMI-1 --auto --primary --output eDP-1 --off
else
    xrandr --output eDP-1 --auto
fi

# Set screen brightness
brightnessctl set 60%

# Audio
pipewire &
pipewire-pulse &
wireplumber &

# Start i3
exec i3
