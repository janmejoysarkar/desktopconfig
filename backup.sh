#!/bin/bash
#Made to rsync config files from the .config folder to the scriptss folder.
#bashrc
rsync -rtv --progress --delete $HOME/.bashrc $HOME/desktop_dotfiles_git/i3_config_backup/_.bashrc
#i3, i3blocks, alacritty, dunst
rsync -rtv --progress --delete $HOME/.config/{i3,i3blocks,alacritty,dunst} $HOME/desktop_dotfiles_git/i3_config_backup/
#vim
rsync -rtv --progress --delete $HOME/.vimrc $HOME/desktop_dotfiles_git/i3_config_backup/_.vimrc
rsync -rtv --progress --delete $HOME/.config/coc $HOME/desktop_dotfiles_git/i3_config_backup/_.config/coc
#tmux
rsync -rtv --progress --delete $HOME/.vimrc $HOME/desktop_dotfiles_git/i3_config_backup/_.tmux.conf
