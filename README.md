# Dotfiles

Dotfile Installation & Vim Plugin Updates:
1. Run ```install_dotfiles.sh``` as root to install the dotfiles:
```
$ sudo ./install_dotfiles.sh
```
3. Run ```update_vim_plugins.sh``` to update Vim plugins:
```
$ ./update_vim_plugins.sh
```

File Locations:
* ```~/.ctags```
* ```~/.gitconfig```
* ```~/.xinitrc```
* ```~/.config/i3/config```
* ```~/.config/i3status/config```
* ```~/.config/kitty/kitty.conf```
* ```~/.config/kitty/current-theme.conf```
* ```~/.vim/coc-settings.json```
* ```/usr/share/X11/xkb/symbols/pc```

The following files are copied to ```~/``` and ```/root/``` as sudo uses root shell settings:
* ```.bashrc```
* ```.bash_profile```
* ```.vimrc```
