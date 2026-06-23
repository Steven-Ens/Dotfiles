#!/bin/bash

# Exit immediately if any command fails
set -e

DOTFILES="/home/steve/Dotfiles"
USER_HOME="/home/steve"

mkdir -p "$USER_HOME/.config/i3"
mkdir -p "$USER_HOME/.config/i3status"
mkdir -p "$USER_HOME/.config/kitty"
mkdir -p "$USER_HOME/.vim"

# ln -sfn
# -s = Make a symbolic link
# -f = Force overwrite existing destination files/symlinks
# -n = If destination is a symlink to a directory, replace the symlink itself instead of following it

# ~/
ln -sfn "$DOTFILES/.ctags" "$USER_HOME/.ctags"
ln -sfn "$DOTFILES/.gitconfig" "$USER_HOME/.gitconfig"
ln -sfn "$DOTFILES/.xinitrc" "$USER_HOME/.xinitrc"

# ~/.config/i3/
ln -sfn "$DOTFILES/.config/i3/config" "$USER_HOME/.config/i3/config"

# ~/.config/i3status/
ln -sfn "$DOTFILES/.config/i3status/config" "$USER_HOME/.config/i3status/config"

# ~/.config/kitty/
ln -sfn "$DOTFILES/.config/kitty/kitty.conf" "$USER_HOME/.config/kitty/kitty.conf"
ln -sfn "$DOTFILES/.config/kitty/current-theme.conf" "$USER_HOME/.config/kitty/current-theme.conf"

# ~/.vim/
ln -sfn "$DOTFILES/.vim/coc-settings.json" "$USER_HOME/.vim/coc-settings.json"

# /usr/share/X11/xkb/symbols/
ln -sfn "$DOTFILES/usr/share/X11/xkb/symbols/pc" "/usr/share/X11/xkb/symbols/pc"

# ~/
ln -sfn "$DOTFILES/.bashrc" "$USER_HOME/.bashrc"
ln -sfn "$DOTFILES/.bash_profile" "$USER_HOME/.bash_profile"
ln -sfn "$DOTFILES/.vimrc" "$USER_HOME/.vimrc"

# /root/
ln -sfn "$DOTFILES/.bashrc" "/root/.bashrc"
ln -sfn "$DOTFILES/.bash_profile" "/root/.bash_profile"
ln -sfn "$DOTFILES/.vimrc" "/root/.vimrc"

# Make sure everything in the user's home is owned by them
chown -R steve:steve "$USER_HOME"

echo "Dotfiles installed successfully."
