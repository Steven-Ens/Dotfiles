# Dotfiles

## Dotfile Installation
* Run ```install_dotfiles.sh``` as root to install the dotfiles (Onwership of /home/steve not modified):
```
$ sudo ./scripts/install_dotfiles.sh
```

## Vim Plugin Installation
* @nomicfoundation/solidity-language-server is installed as well.
* Run ```install_vim_plugins.sh``` to install vim plugins:
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
* ```~/.gitconfig```
* ```~/.xinitrc```
* ```~/.config/i3/config```
* ```~/.config/i3status/config```
* ```~/.config/kitty/kitty.conf```
* ```~/.config/kitty/current-theme.conf```
* ```~/.vim/coc-settings.json```
* ```/usr/share/X11/xkb/symbols/pc```

The following files are symlinked to ```~/``` and ```/root/``` as sudo uses root shell settings:
* ```.bashrc```
* ```.bash_profile```
* ```.vimrc```
