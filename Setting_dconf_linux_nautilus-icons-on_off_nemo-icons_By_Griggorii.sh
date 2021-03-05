#!/bin/bash

####Griggorii@gmail.com mit license dconf-config nautilus default icons variante replace nemo show-desktop-icons=false / auto | ignored-desktop-handlers=['conky', nautilus', 'nautilus-desktop'] griggorii sheme patent dbus dconf setting 2015 year | /usr/bin/nemo /usr/bin/nautilus /usr/bin/conky /usr/bin/nemo-desktop /usr/bin/nautilus-desktop + /etc/xdg/autostart variant 

notify-send "Griggorii_reactivate_nautilus_icons" 
EOF
cat << EOF > dconf-settings.ini
[org/gnome/desktop/background]
show-desktop-icons=true

[org/gnome/shell/extensions/desktop-icons]
show-computer-visible=true
show-home=true
show-trash=true
icon-size='small'
computer-icon-visible=true

[org/nemo/desktop]
show-desktop-icons=false
ignored-desktop-handlers=['conky', 'nemo', 'nemo-desktop', 'nautilus', 'nautilus-desktop']
computer-icon-visible=true
use-desktop-grid=true
desktop-layout='true::true'
home-icon-visible=true
trash-icon-visible=true
network-icon-visible=false
show-orphaned-desktop-icons=true
volumes-visible=true

[org/gnome/shell]
app-picker-view=uint32 1
command-history=['nautilus', 'r']
disable-user-extensions=false
disabled-extensions=['dash-to-panel@jderose9.github.com', 'appindicatorsupport@rgcjonas.gmail.com', 'pop-shell@system76.com', 'dash-to-dock@micxgx.gmail.com', 'unite@hardpixel.eu', 'arcmenu@arcmenu.com', 'ding@rastersoft.com']
enable-hot-corners=true
enabled-extensions=['mediaplayer@patapon.info', 'ubuntu-dock@ubuntu.com', 'GPaste@gnome-shell-extensions.gnome.org', 'gnomenu@panacier.gmail.com', 'popthemetoggle@kylecorry31.github.io', 'auto-ovpn@yahoo.com', 'printers@linux-man.org', 'openweather-extension@jenslody.de', 'sound-output-device-chooser@kgshank.net', 'bettervolume@tudmotu.com', 'dash-to-dock@micxgx.gmail.com', 'suspend-button@laserb', 'TilixDropdown@ivkuzev@gmail.com', 'system-monitor@paradoxxx.zero.gmail.com', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'apps-menu@gnome-shell-extensions.gcampax.github.com', 'impatience@gfxmonk.net', 'ubuntu-appindicators@ubuntu.com', 'hidetopbar@mathieu.bidon.ca', 'CoverflowAltTab@palatis.blogspot.com', 'compiz-alike-magic-lamp-effect@hermes83.github.com', 'disconnect-wifi@kgshank.net', 'desktop-icons@csoriano']
favorite-apps=['org.gnome.Screenshot.desktop', 'ubiquity.desktop', 'nemo.desktop', 'org.gnome.Nautilus.desktop', 'com.github.wwmm.pulseeffects.desktop', 'gnome-control-center.desktop', 'com.gexperts.Tilix.desktop', 'gnome-system-monitor.desktop', 'com.obsproject.Studio.desktop', 'org.gnome.tweaks.desktop', 'org.gnome.DiskUtility.desktop', 'nvidia-settings.desktop', 'ca.desrt.dconf-editor.desktop', 'telegramdesktop.desktop', 'chromium-browser.desktop', 'green-recorder.desktop', 'update-manager.desktop']
had-bluetooth-devices-setup=true
remember-mount-password=false
EOF
dconf load / < dconf-settings.ini && 
EOF
