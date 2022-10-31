#!/bin/sh

a1=('bspwm.env' 'bspwm.service' 'fcitx5.service' 'gui-session.target' 'gui-session-pre.target' 'picom.service' 'polybar.service' 'qv2ray.service' 'redshift.service' 'stalonetray.service' 'xorg@.service' 'xorg@.socket')
a2="${HOME}/.config/systemd/user"

for ((i=0; i<${#a1[@]}; i++))
do
    if [ ! -d ${a2} ]; then
        echo Directory ${a2} does not exist!
    elif [[ $(sha256sum "${a1[$i]}" | awk '{print $1}') != $(sha256sum "${a2}/${a1[$i]}" | awk '{print $1}') ]]; then
        echo ${a1[$i]} failed!
    fi
done