#!/bin/sh
if ! [ id $(whoami) -eq 0 ]; then
	echo "Need root permission to execute"
	exit 1
fi
packages=()
if ! [ -x "$(command -v xfce4-terminal)" ]; packages+=("xfce4-terminal"); fi
if ! [ -x "$(command -v feh)" ]; packages+=("feh"); fi
if ! [ -x "$(command -v picom)" ]; packages+=("picom"); fi
# if ! [ -x "$(command -v xfce4-terminal)" ] packages+=("xfce4-terminal") fi
# if ! [ -x "$(command -v xfce4-terminal)" ] packages+=("xfce4-terminal") fi
# if ! [ -x "$(command -v xfce4-terminal)" ] packages+=("xfce4-terminal") fi
if [ -x $(command -v pacman)]; then #user is using archlinux
	pacman -S ${packages[*]}
fi
