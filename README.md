# Dotfiles

File Locations:

```/usr/share/X11/xkb/symbols/pc```

```~/.ctags```

```~/.xinitrc```

```~/.Xresources```

```.config/i3/config```

```.config/i3status/config```

Copy the following files to ```~/``` and ```/root/``` as sudo uses root shell settings:

```.bashrc```

```.bash_profile```

```.vim/```

```.vimrc```

Notes:
1. Rename both i3_config and i3status_config to config when copying them
2. add list of vim plugins
3. Directory .vim/ only includes the nord.vim colorscheme, not the plugins which are their own git repositories
4. Modify location of .ctags in .vimrc depending on if on MacOS or Linux (change to only linux version)
5. Run ```update_vim_plugins.sh``` to update all vim plugins.
