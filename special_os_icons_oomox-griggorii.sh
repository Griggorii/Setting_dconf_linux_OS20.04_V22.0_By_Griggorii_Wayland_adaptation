#!/bin/bash

####Griggorii@gmail.com special os icons oomox-griggorii theme Pop-dark

cat << EOF > dconf-settings.ini
[org/gnome/desktop/interface]
clock-format='24h'
clock-show-date=true
clock-show-seconds=true
clock-show-weekday=true
cursor-theme='breeze_cursors'
document-font-name='DejaVu Sans Mono Bold 11'
enable-animations=true
enable-hot-corners=true
font-name='Ubuntu 11'
gtk-im-module='gtk-im-context-simple'
gtk-theme='Pop-dark'
icon-theme='oomox-griggorii'
locate-pointer=true
monospace-font-name='Ubuntu Mono 11'
show-battery-percentage=true
text-scaling-factor=1.0
toolbar-style='both-horiz'
toolkit-accessibility=false
EOF
dconf load / < dconf-settings.ini && 
EOF
