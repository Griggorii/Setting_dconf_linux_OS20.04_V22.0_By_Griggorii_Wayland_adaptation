#!/bin/bash

####Griggorii@gmail.com mit license dconf-config nautilus default icons variante replace nemo show-desktop-icons=false / auto | ignored-desktop-handlers=['conky', nautilus', 'nautilus-desktop'] griggorii sheme patent dbus dconf setting 2015 year | /usr/bin/nemo /usr/bin/nautilus /usr/bin/conky /usr/bin/nemo-desktop /usr/bin/nautilus-desktop + /etc/xdg/autostart variant 

notify-send "Griggorii_reactivate_nautilus_icons" 
EOF
cat << EOF > dconf-settings.ini
[org/gnome/desktop/background]
show-desktop-icons=true

[org/gnome/shell/extensions/desktop-icons]
icon-size='small'
show-trash=true
show-home=true

[org/nemo/desktop]
show-desktop-icons=true
ignored-desktop-handlers=['conky', 'nemo', 'nemo-desktop', 'nautilus', 'nautilus-desktop']
computer-icon-visible=true
use-desktop-grid=true
desktop-layout='true::true'
home-icon-visible=true
trash-icon-visible=true
network-icon-visible=false
show-orphaned-desktop-icons=true
volumes-visible=true
EOF
dconf load / < dconf-settings.ini && 
EOF
