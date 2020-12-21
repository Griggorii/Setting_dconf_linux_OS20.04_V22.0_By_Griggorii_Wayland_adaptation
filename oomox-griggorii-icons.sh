#!/bin/bash

####Griggorii@gmail.com special os icons oomox-griggorii theme Pop-dark hybrid kde links

cat << EOF > dconf-settings.ini
[org/cinnamon/desktop/interface]
icon-theme='oomox-griggorii'

[org/gnome/desktop/interface]
icon-theme='oomox-griggorii'
EOF
dconf load / < dconf-settings.ini && 
EOF
rm -r dconf-settings.ini
EOF
