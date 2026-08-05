# Dotfiles

## Dotfile Installation
* Run ```install_dotfiles.sh``` as root to install the dotfiles. Onwership of ```/home/<user>``` is not modified:
```
$ sudo ./home/<user>/Dotfiles/scripts/install_dotfiles.sh
```

## Vim Plugin Installation
* Run ```install_vim_plugins.sh``` to install Vim plugins:
```
$ ./home/<user>/Dotfiles/scripts/install_vim_plugins.sh
```

## Vim Plugin Updates
* ```./home/<user>/Dotfiles/scripts/update_vim_plugins.sh``` runs automatically as a pacman hook post update.

## File Locations
* ```~/.ctags```
* ```~/.fehbg```
* ```~/.gitconfig```
* ```~/.xinitrc```
* ```~/.config/i3/config```
* ```~/.config/i3status/config```
* ```~/.config/kitty/current-theme.conf```
* ```~/.config/kitty/kitty.conf```
* ```~/.vim/coc-settings.json```
* ```~/Pictures/wallpaper/wallpaper.jpg```
* ```/etc/pacman.d/hooks/update_vim_plugins.hook```
* ```/usr/share/X11/xkb/symbols/pc```

The following files are symlinked to ```~/``` and ```/root/``` as sudo uses root shell settings:
* ```.bashrc```
* ```.bash_profile```
* ```.vimrc```
