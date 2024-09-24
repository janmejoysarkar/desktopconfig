#!/bin/bash
#Made to rsync config files from the .config folder to the scriptss folder.
rsync -rtv --progress --delete $HOME/.bashrc $HOME/scripts_git/i3_config_backup/_.bashrc
rsync -rtv --progress --delete $HOME/.config/{i3,i3blocks,alacritty} $HOME/scripts_git/i3_config_backup/
rsync -rtv --progress --delete $HOME/.vimrc $HOME/scripts_git/i3_config_backup/_.vimrc
rsync -rtv --progress --delete $HOME/.vimrc $HOME/scripts_git/i3_config_backup/_.tmux.conf
