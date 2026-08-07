# Dotfiles

## Clone the Repository
```
$ git clone https://github.com/Steven-Ens/Dotfiles
```

## Change Directory into the Repository
```
$ cd <directory>/Dotfiles/scripts/
```

## Dotfile Installation
* Run ```install_dotfiles.sh``` as root to install the dotfiles. Onwership of ```/home/<user>``` is not modified:
```
$ sudo ./install_dotfiles.sh
```

## Vim Plugin Installation
* Run ```install_vim_plugins.sh``` to install Vim plugins:
```
$ ./install_vim_plugins.sh
```

## Configure Vim Theme for root
* Manually Link ```~/.vim/colors/nord.vim``` to ```/root/.vim/colors/nord.vim```:
```
$ sudo mkdir -p /root/.vim/colors
$ sudo ln -sfn /home/<user>/.vim/colors/nord.vim /root/.vim/colors/nord.vim
```

## Vim Plugin Updates
* ```<directory>/Dotfiles/scripts/update_vim_plugins.sh``` runs automatically as a pacman hook post update.

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
