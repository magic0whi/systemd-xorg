#!/bin/sh

a1=('bspwm.env' 'bspwm.service' 'fcitx5.service' 'gui-session.target' 'gui-session-pre.target' 'picom.service' 'polybar.service' 'qv2ray.service' 'redshift.service' 'stalonetray.service' 'xorg@.service' 'xorg@.socket')
a2="${HOME}/.config/systemd/user"

for ((i=0; i<${#a1[@]}; i++))
do
    cp ${a1[i]} "${a2}/"
done
