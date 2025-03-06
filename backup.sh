#!/bin/bash
#Made to rsync config files from the .config folder to the scriptss folder.
DEST=$HOME'/desktopconfig_git'

#bashrc
rsync -rtv --progress --delete $HOME/.bashrc $DEST/i3_config_backup/_.bashrc
rsync -rtv --progress --delete $HOME/.bash_profile $DEST/i3_config_backup/_.bash_profile

#xinitrc
rsync -rtv --progress --delete $HOME/.xinitrc $DEST/i3_config_backup/_.xinitrc

#i3, i3blocks, alacritty, dunst
rsync -rtv --progress --delete $HOME/.config/{i3,i3blocks,alacritty,dunst} $DEST/i3_config_backup/

#vim
rsync -rtv --progress --delete $HOME/.vimrc $DEST/i3_config_backup/_.vimrc
rsync -rtv --progress --delete $HOME/.config/coc $DEST/i3_config_backup/_.config/coc
rsync -rtv --progress --delete $HOME/.vim/ $DEST/i3_config_backup/_.vim/

#tmux
rsync -rtv --progress --delete $HOME/.tmux.conf $DEST/i3_config_backup/_.tmux.conf

#fonts
rsync -rtv --progress --delete $HOME/.fonts $DEST/i3_config_backup/_.fonts

#packages info
yay -Q > $DEST/packages.txt
