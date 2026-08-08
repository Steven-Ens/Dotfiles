# Dotfiles

## Clone the Repository
```
$ git clone https://github.com/Steven-Ens/Dotfiles
```

## cd into the Repository
```
$ cd <directory>/Dotfiles/scripts/
```

## Dotfile Installation
```
$ ./install_dotfiles.sh
```

## Manually Link Dotfiles for root
```
$ sudo ln -sfn <directory>/Dotfiles/.bash_profile /root/.bash_profile
$ sudo ln -sfn <directory>/Dotfiles/.bashrc /root/.bashrc
$ sudo ln -sfn <directory>/Dotfiles/.vimrc /root/.vimrc
```

## Vim Plugin Installation
```
$ ./install_vim_plugins.sh
```

## Manually Link Vim Theme for root
```
$ sudo mkdir -p /root/.vim/colors
$ sudo ln -sfn /home/<user>/.vim/colors/nord.vim /root/.vim/colors/nord.vim
```

## Vim Plugin Updates
```<directory>/Dotfiles/scripts/update_vim_plugins.sh``` runs automatically as a pacman hook post update.

## File Locations
The following files are symlinked to ```~/``` and ```/root/``` because sudo uses root shell settings:
* ```.bashrc```
* ```.bash_profile```
* ```.vimrc```

The following files are symlinked to ```~/```:
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
