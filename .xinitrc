# .xinitrc

# Turn on Num Lock 
numlockx &

# Mirror the secondary monitor if connected
if xrandr | grep -q "^HDMI-1 connected"; then
    xrandr --output HDMI-1 --auto --same-as eDP-1
fi

# Set screen brightness
brightnessctl set 60%

# Audio
pipewire &
pipewire-pulse &
wireplumber &

# Start i3
exec i3
