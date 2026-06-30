# Dotfiles

## Dotfile Installation
* Run ```install_dotfiles.sh``` as root to install the dotfiles. Onwership of ```/home/steve``` is not modified:
```
$ sudo ./scripts/install_dotfiles.sh
```

## Vim Plugin Installation
* Run ```install_vim_plugins.sh``` to install Vim plugins:
```
$ ./scripts/install_vim_plugins.sh
```

## Vim Plugin Updates
* Run ```update_vim_plugins.sh``` to update Vim plugins:
```
$ ./scripts/update_vim_plugins.sh
```

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
