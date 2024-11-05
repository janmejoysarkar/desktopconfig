#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi='vim'
alias playonlinux='com.playonlinux.PlayOnLinux4'
alias vlc='org.videolan.VLC'
alias vpn='netExtender --username=janmejoy.sarkar --password=J@nMeJoY#*p*2022 --domain=LocalDomain --auto-reconnect moon.iucaa.in:4433'
alias gnome-settings='XDG_CURRENT_DESKTOP=GNOME gnome-control-center'
alias ql='python3 /home/janmejoyarch/Dropbox/Janmejoy_SUIT_Dropbox/scripts/quick_look.py'
alias sc='python3 /home/janmejoyarch/Dropbox/Janmejoy_SUIT_Dropbox/scripts/suncenter_plot.py'
alias msword="wine '/home/janmejoyarch/.wineprefix/office2007/drive_c/Program Files (x86)/Microsoft Office/Office12/WINWORD.EXE'"
alias msppt="wine '/home/janmejoyarch/.wineprefix/office2007/drive_c/Program Files (x86)/Microsoft Office/Office12/POWERPNT.EXE'"
alias msexcel="wine '/home/janmejoyarch/.wineprefix/office2007/drive_c/Program Files (x86)/Microsoft Office/Office12/EXCEL.EXE'"
alias qlt='python3 /home/janmejoyarch/Dropbox/Janmejoy_SUIT_Dropbox/scripts/quick_look_tile.py'
alias dropbox='/home/janmejoyarch/dropbox.py'
alias token='cat ~/Dropbox/Janmejoy_SUIT_Dropbox/scripts/github_token.txt'
alias r='xdg-open `fzf --tmux=right`'
alias spyder='/usr/bin/spyder'
export PS1="\[\033[01;32m\]λ\[\e[00;220m\] \[\e[38;5;223m\]\w\[\033[0m\] ❯ "
#export PS1="\[\e[38;5;216m\]\u\[\e[38;5;220m\]@\[\e[38;5;222m\]\h \[\e[38;5;229m\]\w \[\033[0m\]$ "
export WINEPREFIX='/home/janmejoyarch/.wineprefix/office2007'
export random='/home/janmejoyarch/Dropbox/Janmejoy_SUIT_Dropbox/random_sync'
export QT_XCB_GL_INTEGRATION=none #Disables OpenGL for GLX related issues in some software.


TERMINAL='/bin/kgx'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/janmejoyarch/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/janmejoyarch/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/janmejoyarch/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/janmejoyarch/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
conda activate work 

