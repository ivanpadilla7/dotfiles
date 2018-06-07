# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

xrandr --dpi 192
#xrandr --output HDMI1 --auto --left-of eDP1
synclient HorizTwoFingerScroll=1
#feh --bg-scale /usr/share/backgrounds/lioness.jpg 
feh --bg-scale /home/ivan/Downloads/polybackgrounds/7.jpg

compton -cG -b -i 0.85 --backend glx --vsync opengl-swc


export SPIDER_TOOLS_PATH="/home/ivan/spider/spider_tools"
export MAS_ROOT=/home/ivan/spider/mce_script
source $SPIDER_TOOLS_PATH/config/shell/spider_env.bash

# modifications by HEALPixAutoConf 3.31
[ -r /home/ivan/.healpix/3_31_Linux/config ] && . /home/ivan/.healpix/3_31_Linux/config
