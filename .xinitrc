# .xinitrc

# Turn on Num Lock 
numlockx &

# Set screen brightness
brightnessctl set 60%

# Audio
pipewire &
pipewire-pulse &
wireplumber &

# Start i3
exec i3
