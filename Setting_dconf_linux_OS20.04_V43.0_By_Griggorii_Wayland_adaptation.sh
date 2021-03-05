#!/bin/bash

####Griggorii@gmail.com mit license dconf-config

dconf dump / > dconf-settings-original-restore.ini
EOF
xdg-mime default nautilus.desktop inode/directory
EOF
xdg-mime default org.gnome.Nautilus.desktop inode/directory
EOF
xdg-mime default nemo.desktop inode/directory
EOF
update-mime-database ~/.local/share/mime
EOF
dconf reset -f /org/gnome/shell/extensions/dash-to-dock/
EOF
dconf reset -f /org/gnome/nm-applet/eap/
EOF
cat << EOF > qt5ct.conf
[Appearance]
color_scheme_path=/usr/share/qt5ct/colors/simple.conf
custom_palette=false
standard_dialogs=gtk2
style=gtk2

[Fonts]
fixed=@Variant(\0\0\0@\0\0\0\x16\0U\0\x62\0u\0n\0t\0u\0 \0M\0o\0n\0o@&\0\0\0\0\0\0\xff\xff\xff\xff\x5\x1\0\x32\x10)
general=@Variant(\0\0\0@\0\0\0\f\0U\0\x62\0u\0n\0t\0u@&\0\0\0\0\0\0\xff\xff\xff\xff\x5\x1\0K\x10)

[Interface]
activate_item_on_single_click=2
buttonbox_layout=2
cursor_flash_time=1000
dialog_buttons_have_icons=2
double_click_interval=400
gui_effects=General, AnimateMenu, AnimateCombo, AnimateTooltip, AnimateToolBox
keyboard_scheme=4
menus_have_icons=true
show_shortcuts_in_context_menus=true
stylesheets=@Invalid()
toolbutton_style=4
underline_shortcut=2
wheel_scroll_lines=3

[SettingsWindow]
geometry=@ByteArray(\x1\xd9\xd0\xcb\0\x3\0\0\0\0\0\xe1\0\0\0\b\0\0\x3\xc1\0\0\x2\xde\0\0\0\xe2\0\0\0&\0\0\x3\xc0\0\0\x2\xdd\0\0\0\0\0\0\0\0\x5V\0\0\0\xe2\0\0\0&\0\0\x3\xc0\0\0\x2\xdd)
EOF
cp qt5ct.conf ~/.config/qt5ct/
EOF
rm qt5ct.conf
EOF
cat << EOF > accels.scm
; mousepad GtkAccelMap rc-file         -*- scheme -*-
; this file is an automated accelerator map dump
;
; (gtk_accel_path "<Actions>/MousepadWindow/back" "<Primary>Page_Up")
; (gtk_accel_path "<Actions>/MousepadWindow/help-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/line-numbers" "")
; (gtk_accel_path "<Actions>/MousepadWindow/uppercase" "")
; (gtk_accel_path "<Actions>/MousepadWindow/word-wrap" "")
; (gtk_accel_path "<Actions>/MousepadWindow/redo" "<Primary>y")
; (gtk_accel_path "<Actions>/MousepadWindow/tab-size_3" "")
; (gtk_accel_path "<Actions>/MousepadWindow/unix" "")
; (gtk_accel_path "<Actions>/MousepadWindow/recent-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/replace" "<Primary>r")
; (gtk_accel_path "<Actions>/MousepadWindow/save" "<Primary>s")
; (gtk_accel_path "<Actions>/MousepadWindow/find-next" "<Primary>g")
; (gtk_accel_path "<Actions>/MousepadWindow/select-all" "")
; (gtk_accel_path "<Actions>/MousepadWindow/tab-size_2" "")
; (gtk_accel_path "<Actions>/MousepadWindow/go-to" "<Primary>l")
; (gtk_accel_path "<Actions>/MousepadWindow/mac" "")
; (gtk_accel_path "<Actions>/MousepadWindow/line-up" "")
; (gtk_accel_path "<Actions>/MousepadWindow/document-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/transpose" "<Primary>t")
; (gtk_accel_path "<Actions>/MousepadWindow/undo" "<Primary>z")
; (gtk_accel_path "<Actions>/MousepadWindow/edit-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/tab-size-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/delete" "")
; (gtk_accel_path "<Actions>/MousepadWindow/clear-recent" "")
; (gtk_accel_path "<Actions>/MousepadWindow/save-as" "<Primary><Shift>s")
; (gtk_accel_path "<Actions>/MousepadWindow/contents" "F1")
; (gtk_accel_path "<Actions>/MousepadWindow/strip-trailing" "")
; (gtk_accel_path "<Actions>/MousepadWindow/tab-size-other" "")
; (gtk_accel_path "<Actions>/MousepadWindow/save-all" "")
; (gtk_accel_path "<Actions>/MousepadWindow/menubar" "")
; (gtk_accel_path "<Actions>/MousepadWindow/move-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/print" "<Primary>p")
; (gtk_accel_path "<Actions>/MousepadWindow/about" "")
; (gtk_accel_path "<Actions>/MousepadWindow/revert" "")
; (gtk_accel_path "<Actions>/MousepadWindow/paste" "<Primary>v")
; (gtk_accel_path "<Actions>/MousepadWindow/copy" "<Primary>c")
; (gtk_accel_path "<Actions>/MousepadWindow/increase-indent" "")
; (gtk_accel_path "<Actions>/MousepadWindow/convert-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/change-selection" "")
; (gtk_accel_path "<Actions>/MousepadWindow/no-recent-items" "")
; (gtk_accel_path "<Actions>/MousepadWindow/lowercase" "")
; (gtk_accel_path "<Actions>/MousepadWindow/paste-column" "")
; (gtk_accel_path "<Actions>/MousepadWindow/file-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/eol-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/forward" "<Primary>Page_Down")
; (gtk_accel_path "<Actions>/MousepadWindow/detach" "<Primary>d")
; (gtk_accel_path "<Actions>/MousepadWindow/spaces-to-tabs" "")
; (gtk_accel_path "<Actions>/MousepadWindow/tab-size_8" "")
; (gtk_accel_path "<Actions>/MousepadWindow/new" "<Primary>n")
; (gtk_accel_path "<Actions>/MousepadWindow/dos" "")
; (gtk_accel_path "<Actions>/MousepadWindow/font" "")
; (gtk_accel_path "<Actions>/MousepadWindow/template-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/close-window" "<Primary>q")
; (gtk_accel_path "<Actions>/MousepadWindow/opposite-case" "")
; (gtk_accel_path "<Actions>/" "")
; (gtk_accel_path "<Actions>/MousepadWindow/open" "<Primary>o")
; (gtk_accel_path "<Actions>/MousepadWindow/write-bom" "")
; (gtk_accel_path "<Actions>/MousepadWindow/cut" "<Primary>x")
; (gtk_accel_path "<Actions>/MousepadWindow/decrease-indent" "")
; (gtk_accel_path "<Actions>/MousepadWindow/auto-indent" "")
; (gtk_accel_path "<Actions>/MousepadWindow/preferences" "")
; (gtk_accel_path "<Actions>/MousepadWindow/fullscreen" "F11")
; (gtk_accel_path "<Actions>/MousepadWindow/close" "<Primary>w")
; (gtk_accel_path "<Actions>/MousepadWindow/new-window" "<Primary><Shift>n")
; (gtk_accel_path "<Actions>/MousepadWindow/search-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/view-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/tabs-to-spaces" "")
; (gtk_accel_path "<Actions>/MousepadWindow/duplicate" "")
; (gtk_accel_path "<Actions>/MousepadWindow/language-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/statusbar" "")
; (gtk_accel_path "<Actions>/MousepadWindow/line-down" "")
; (gtk_accel_path "<Actions>/MousepadWindow/mousepad-tab-0" "<Alt>1")
; (gtk_accel_path "<Actions>/MousepadWindow/tab-size_4" "")
; (gtk_accel_path "<Actions>/MousepadWindow/insert-spaces" "")
; (gtk_accel_path "<Actions>/MousepadWindow/titlecase" "")
; (gtk_accel_path "<Actions>/MousepadWindow/find-previous" "<Primary><Shift>g")
; (gtk_accel_path "<Actions>/MousepadWindow/color-scheme-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/paste-history" "")
; (gtk_accel_path "<Actions>/MousepadWindow/toolbar" "")
; (gtk_accel_path "<Actions>/MousepadWindow/paste-menu" "")
; (gtk_accel_path "<Actions>/MousepadWindow/find" "<Primary>f")
EOF
cp accels.scm ~/.config/Mousepad/
EOF
rm accels.scm
EOF
cat << EOF > leafpadrc
0.8.18.1
827
484
Monospace 12
0
0
0
EOF
cp leafpadrc ~/.config/leafpad/
EOF
rm leafpadrc
EOF
cat << EOF > dconf-settings-original-restore.sh
dconf load / < dconf-settings-original-restore.ini && rm dconf-settings-original-restore.ini && rm dconf-settings-original-restore.sh
EOF
chmod -R a+rwx dconf-settings-original-restore.sh
EOF
cat << EOF > dconf-settings.sh
notify-send "Перезаидите в сессию что бы изменения вступили в силу | please restart session By Griggorii setting my donate https://money.yandex.ru/to/410014999913799 " 
EOF
chmod -R a+rwx dconf-settings.sh && ./dconf-settings.sh && rm dconf-settings.sh
EOF
cat << EOF > dconf-settings.ini
[net/launchpad/plank/docks/dock1]
position='top'
icon-size=24
auto-pinning=true
pressure-reveal=false
show-dock-item=false
items-alignment='center'
theme='Transparent'
zoom-percent=150
monitor=''
lock-items=false
dock-items=['liteusermanager.dockitem', 'gufw.dockitem', 'gparted.dockitem', 'org.gnome.baobab.dockitem', 'org.gnome.DiskUtility.dockitem', 'Thunar.dockitem', 'caja.dockitem', 'org.gnome.Nautilus.dockitem', 'nemo-1.dockitem', 'nemo.dockitem', 'org.gnome.Terminal.dockitem', 'lxterminal.dockitem', 'terminology.dockitem', 'gnome-system-monitor.dockitem', 'alacarte-made-48.dockitem', 'synaptic.dockitem', 'org.gnome.Todo.dockitem', 'org.gnome.Totem.dockitem', 'libreoffice-startcenter.dockitem', 'ca.desrt.dconf-editor.dockitem', 'thunderbird.dockitem', 'xfce-display-settings.dockitem', 'unity-tweak-tool.dockitem', 'onboard-settings.dockitem', 'onboard.dockitem', 'mate-about.dockitem', 'exo-preferred-applications.dockitem', 'yelp.dockitem', 'org.gnome.Extensions.dockitem', 'gnome-ppp.dockitem', 'JB-java-jdk8.dockitem', 'JB-policytool-jdk8.dockitem', 'JB-controlpanel-jdk8.dockitem', 'JB-jvisualvm-jdk8.dockitem', 'JB-mission-control-jdk8.dockitem', 'kodi.dockitem', 'budgie-desktop-settings.dockitem', 'cinnamon-settings.dockitem', 'com.obsproject.Studio.dockitem', 'obs.dockitem', 'rhythmbox.dockitem', 'pavucontrol.dockitem', 'com.github.wwmm.pulseeffects.dockitem', 'PlayOnLinux.dockitem', 'steam.dockitem', 'alacarte-made-61.dockitem', 'firefox.dockitem', 'systemback.dockitem']
tooltips-enabled=true
unhide-delay=0
current-workspace-only=false
alignment='center'
hide-delay=500
hide-mode='dodge-maximized'
zoom-enabled=true
pinned-only=false
offset=0

[org.gnome.settings-daemon.plugins.media-keys.custom-keybindings/custom2]
command='/usr/lib/budgie-desktop/plugins/budgie-wprviews/wprv current'
name='prv_single'
binding='<Alt>grave'

[org.gnome.settings-daemon.plugins.media-keys.custom-keybindings/custom1]
command='/usr/lib/budgie-desktop/plugins/budgie-wprviews/wprv'
name='prv_all'
binding='<Alt>Tab'

[desktop/ibus/general]
enable-by-default=false
xkb-latin-layouts=['ara', 'bg', 'cz', 'dev', 'gr', 'gur', 'in', 'jp(kana)', 'mal', 'mkd', 'ru', 'ua']
use-xmodmap=true
preload-engines=['xkb:us::eng', 'xkb:ru::rus']
dconf-preserve-name-prefixes=['/desktop/ibus/engine/pinyin', '/desktop/ibus/engine/bopomofo', '/desktop/ibus/engine/hangul']
use-global-engine=true
engines-order=['xkb:us::eng', 'xkb:ru::rus']
embed-preedit-text=true
switcher-delay-time=400
use-system-keyboard-layout=false
version='1.5.22'

[desktop/ibus/general/hotkey]
previous-engine=@as []
enable-unconditional=@as []
disable-unconditional=@as []
next-engine=['Alt+Shift_L']
trigger=['Control+space', 'Zenkaku_Hankaku', 'Alt+Kanji', 'Alt+grave', 'Hangul', 'Alt+Release+Alt_R']
next-engine-in-menu=['Alt+Shift_L']
prev-engine=@as []
triggers=['<Shift>alt']

[desktop/ibus/panel]
show=0
show-im-name=false
y=-1
xkb-icon-rgba='#415099'
show-icon-on-systray=false
auto-hide-timeout=10000
lookup-table-orientation=1
custom-font='Sans 10'
use-custom-font=false
property-icon-delay-time=500
follow-input-cursor-when-always-shown=false
x=-1

[desktop/ibus/panel/emoji]
has-partial-match=false
favorite-annotations=@as []
load-unicode-at-startup=false
partial-match-length=3
favorites=@as []
hotkey=['<Control><Shift>e']
lang='en'
font='Monospace 16'
load-emoji-at-startup=true
unicode-hotkey=['<Control><Shift>u']
partial-match-condition=0

[desktop/gnome/crypto/cache]
gpg-cache-method='session'

[desktop/gnome/crypto/pgp]
keyservers=@as []

[org/virt-manager/virt-manager/paths]
media-default=''

[org/virt-manager/virt-manager]
manager-window-width=550
manager-window-height=550

[org/virt-manager/virt-manager/urls]
isos=['']

[org/virt-manager/virt-manager/vmlist-fields]
disk-usage=false
network-traffic=false

[org/virt-manager/virt-manager/connections]
uris=['qemu:///system']
autoconnect=['qemu:///system']

[org/virt-manager/virt-manager/vms/fa8818ecc6fc40ad92d9df93a44b6ad5]
vm-window-size=(911, 600)

[org/nemo/preferences]
always-use-browser=true
never-queue-file-ops=false
show-advanced-permissions=true
show-new-folder-icon-toolbar=true
show-open-in-terminal-toolbar=true
show-hidden-files=false
show-reload-icon-toolbar=true
tooltips-in-icon-view=true
context-menus-show-all-actions=true
quick-renames-with-pause-in-between=false
tooltips-show-birth-date=true
thumbnail-limit=uint64 1073741824
tooltips-show-path=true
tooltips-show-access-date=true
tooltips-in-list-view=true
click-policy='single'
show-edit-icon-toolbar=true
last-server-connect-method=5
ignore-view-metadata=false
show-show-thumbnails-toolbar=true
tooltips-show-mod-date=true
executable-text-activation='ask'
show-home-icon-toolbar=true
tooltips-show-file-type=true
show-location-entry=true
show-computer-icon-toolbar=true
sort-directories-first=true
tooltips-on-desktop=true

[org/nemo/preferences/menu-config]
selection-menu-duplicate=true
selection-menu-make-link=true
selection-menu-copy-to=true
selection-menu-move-to=true

[org/nemo/list-view]
default-visible-columns=['name', 'type', 'date_created', 'date_modified', 'size', 'where', 'owner', 'date_modified_with_time', 'group', 'date_accessed', 'selinux_context', 'detailed_type', 'permissions', 'octal_permissions', 'mime_type', 'date_created_with_time']
default-column-order=['name', 'type', 'date_created', 'date_modified', 'size', 'where', 'owner', 'date_modified_with_time', 'group', 'date_accessed', 'selinux_context', 'detailed_type', 'permissions', 'octal_permissions', 'mime_type', 'date_created_with_time']

[org/nemo/desktop]
network-icon-visible=false
volumes-visible=true
show-desktop-icons=true
computer-icon-visible=true
use-desktop-grid=true
background-fade=true
home-icon-visible=true
font='Noto Sans 10.5'
ignored-desktop-handlers=['conky', 'nemo', 'nemo-desktop', 'nautilus', 'nautilus-desktop']
desktop-layout='true::true'
show-orphaned-desktop-icons=true
trash-icon-visible=true

[org/nemo/icon-view]
default-use-tighter-layout=true
labels-beside-icons=false

[org/nemo/plugins]
disabled-extensions=@as []
disabled-actions=@as []
enabled-extensions=@as []

[org/nemo/window-state]
start-with-menu-bar=true
sidebar-width=194
sidebar-bookmark-breakpoint=4
start-with-toolbar=true
geometry='885x490+34+28'
maximized=false
side-pane-view='places'
start-with-sidebar=true
start-with-status-bar=true

[org/nemo/compact-view]
all-columns-have-same-width=true

[org/nemo/sidebar-panels/tree]
show-only-directories=false

[org/gtk/settings/file-chooser]
date-format='regular'
show-size-column=true
show-hidden=false
show-type-column=true
sidebar-width=229
sort-column='name'
window-position=(34, 28)
sort-order='ascending'
location-mode='path-bar'
sort-directories-first=false
type-format='category'
window-size=(925, 504)

[org/gtk/settings/debug]
enable-inspector-keybinding=true

[org/gtk/settings/color-chooser]
custom-colors=[(0.0078431372549019607, 0.21176470588235294, 0.23921568627450981, 1.0), (0.011764705882352929, 0.21176470588235297, 0.23921568627450981, 1.0), (0.87450980392156863, 0.85882352941176465, 0.76470588235294112, 1.0), (0.20000000000000001, 0.18823529411764706, 0.18431372549019609, 1.0), (0.27058823529411763, 0.25882352941176473, 0.25098039215686274, 1.0), (1.0, 1.0, 0.0, 0.5), (0.10196078431372549, 0.10196078431372549, 0.10196078431372549, 1.0), (0.25882352941176473, 0.25882352941176473, 0.25882352941176473, 1.0)]
selected-color=(true, 0.64313725490196083, 0.0, 0.0, 1.0)

[org/gtk/settings/emoji-chooser]
recent-emoji=[(([uint32 128077, 0], 'thumbs up', ':thumbsup:'), uint32 0), (([128675, 0, 8205, 9794, 65039], 'man rowing boat', ''), 0), (([128669], 'monorail', ':monorail:'), 0), (([128138], 'pill', ':pill:'), 0), (([128511], 'moai', ':moyai:'), 0), (([128290], 'input numbers', ':1234:'), 0), (([9997, 0], 'writing hand', ':writing_hand:'), 0), (([127757], 'globe showing Europe-Africa', ':earth_africa:'), 0), (([127758], 'globe showing Americas', ':earth_americas:'), 0), (([129504], '⊛ brain', ''), 0)]

[org/gtk/Demo]
fullscreen=false
window-size=(712, 437)
color='green'
maximized=false

[org/blueman/transfer]
shared-path=''

[org/blueman/general]
services-last-item=1
window-properties=[618, 373, 640, 232]
plugin-list=['!TransferService']

[org/blueman/plugins/recentconns]
recent-connections=[{'adapter': '00:19:86:00:2D:C5', 'address': '85:93:D4:DD:CD:68', 'alias': 'BT-M-100', 'icon': 'audio-card', 'name': 'Профили автоматического подключения', 'uuid': '00000000-0000-0000-0000-000000000000', 'time': '1584936500.8412452', 'device': '', 'mitem': ''}]

[org/blueman/plugins/powermanager]
auto-power-on=@mb false

[org/blueman/network]
nap-enable=false

[org/sugarlabs/user]
group-label='Взрослый'
gender='male'
color='#F8E800,#00EA11'
nick='Griggorii X64'
birth-timestamp=786639272

[org/sugarlabs/user/background]
image-path=''
alpha-level='0.2'

[org/sugarlabs/frame]
trigger-size=1
corner-delay=0
edge-delay=1000

[org/sugarlabs/peripherals/keyboard]
layouts=['us()']
options=['']
model='pc105'

[org/sugarlabs/speech]
pitch=0
rate=0

[org/sugarlabs/network/gsm]
number=''
pin=''
password=''
apn=''
username=''
puk=''

[org/sugarlabs/screen]
brightness=929

[org/sugarlabs/sound]
volume=80

[org/fedoraproject/FirewallConfig]
show-icmp-types=true
show-lockdown-whitelist=true
show-ipsets=true
show-helpers=true
show-active-bindings=true
show-direct=true

[org/yorba/shotwell/plugins/enable-state]
org-gnome-shotwell-publishing-google-photos=false

[org/yorba/shotwell/sharing/youtube]
refresh-token=''

[org/yorba/shotwell/preferences/editing]
external-raw-editor='eog %U'

[org/yorba/shotwell/preferences/files]
commit-metadata=false
auto-import=false
directory-pattern='%Y/%m/%d'

[org/yorba/shotwell/preferences/ui]
display-search-bar=false
transparent-background-type='solid'
display-photo-tags=true
photo-thumbnail-scale=179
display-sidebar=true
display-photo-titles=false
display-event-comments=false
use-dark-theme=true
show-welcome-dialog=false
library-photos-sort-ascending=false
display-photo-comments=false
display-extended-properties=false
display-basic-properties=true
display-photo-ratings=true
sidebar-position=199
transparent-background-color='rgb(51,48,47)'
library-photos-sort-by=2
events-sort-ascending=false

[org/yorba/shotwell/preferences/window]
direct-height=697
direct-width=1024
library-height=697
direct-maximize=false
library-maximize=false
library-width=1024

[org/mate/desktop/interface]
gtk-shell-shows-menubar=true
gtk-dialogs-use-header=true
gtk-overlay-scrolling=true
gtk-shell-shows-app-menu=true

[org/mate/caja/window-state]
start-with-location-bar=true
sidebar-width=163
geometry='894x551+380+150'
start-with-toolbar=true
maximized=false
side-pane-view='places'
start-with-sidebar=true
start-with-status-bar=true

[org/mate/caja/preferences]
click-policy='single'

[org/mate/caja/list-view]
default-visible-columns=['name', 'size', 'type', 'date_modified', 'owner', 'octal_permissions', 'group', 'date_accessed', 'selinux_context', 'where', 'permissions', 'size_on_disk', 'mime_type']
default-column-order=['name', 'size', 'type', 'date_modified', 'owner', 'octal_permissions', 'group', 'date_accessed', 'selinux_context', 'where', 'permissions', 'size_on_disk', 'mime_type']

[org/mate/panel/general]
object-id-list=['menu-bar', 'notification-area', 'clock', 'show-desktop', 'window-list', 'workspace-switcher', 'object-0', 'object-1', 'object-2', 'object-3', 'object-4', 'object-5', 'object-6', 'object-7', 'object-8']
toplevel-id-list=['top', 'bottom']

[org/mate/panel/objects/object-4]
position=939
toplevel-id='top'
action-type='shutdown'
object-type='action'
panel-right-stick=false

[org/mate/panel/objects/object-3]
position=939
toplevel-id='top'
action-type='connect-server'
object-type='action'
panel-right-stick=false

[org/mate/panel/objects/object-2]
position=939
applet-iid='IndicatorAppletAppmenuFactory::IndicatorAppletAppmenu'
toplevel-id='top'
object-type='applet'
panel-right-stick=false

[org/mate/panel/objects/clock]
locked=true
applet-iid='ClockAppletFactory::ClockApplet'
position=0
toplevel-id='top'
object-type='applet'
panel-right-stick=true

[org/mate/panel/objects/clock/prefs]
format='24-hour'
custom-format=''

[org/mate/panel/objects/object-0]
position=976
applet-iid='FishAppletFactory::FishApplet'
toplevel-id='top'
object-type='applet'
panel-right-stick=false

[org/mate/panel/objects/window-list]
locked=true
applet-iid='WnckletFactory::WindowListApplet'
position=20
toplevel-id='bottom'
object-type='applet'

[org/mate/panel/objects/menu-bar]
locked=true
position=0
toplevel-id='top'
object-type='menu-bar'

[org/mate/panel/objects/notification-area]
locked=true
applet-iid='NotificationAreaAppletFactory::NotificationArea'
position=10
toplevel-id='top'
object-type='applet'
panel-right-stick=true

[org/mate/panel/objects/object-1]
position=939
applet-iid='IndicatorAppletCompleteFactory::IndicatorAppletComplete'
toplevel-id='top'
object-type='applet'
panel-right-stick=false

[org/mate/panel/objects/object-7]
position=939
toplevel-id='top'
action-type='search'
object-type='action'
panel-right-stick=false

[org/mate/panel/objects/object-6]
position=939
toplevel-id='top'
action-type='logout'
object-type='action'
panel-right-stick=false

[org/mate/panel/objects/object-5]
position=939
toplevel-id='top'
action-type='lock'
object-type='action'
panel-right-stick=false

[org/mate/panel/objects/workspace-switcher]
locked=true
applet-iid='WnckletFactory::WorkspaceSwitcherApplet'
position=0
toplevel-id='bottom'
object-type='applet'
panel-right-stick=true

[org/mate/panel/objects/show-desktop]
locked=true
applet-iid='WnckletFactory::ShowDesktopApplet'
position=0
toplevel-id='bottom'
object-type='applet'

[org/mate/panel/objects/object-8]
position=939
use-menu-path=false
toplevel-id='top'
tooltip='Главное меню MATE'
object-type='menu'
panel-right-stick=false

[org/mate/panel/toplevels/bottom]
orientation='bottom'
screen=0
expand=true
y=744
size=24
y-bottom=0

[org/mate/panel/toplevels/top]
orientation='top'
screen=0
expand=true
size=24

[org/cinnamon/settings-daemon/peripherals/keyboard]
delay=uint32 500
repeat-interval=uint32 30
numlock-state='off'

[org/cinnamon/settings-daemon/peripherals/mouse]
double-click=400
drag-threshold=8
motion-threshold=1

[org/cinnamon/settings-daemon/peripherals/touchpad]
touchpad-enabled=true
motion-threshold=1

[org/cinnamon/settings-daemon/plugins/power]
sleep-display-battery=1800
sleep-display-ac=1800
sleep-inactive-battery-timeout=0
lid-close-battery-action='suspend'
sleep-inactive-ac-timeout=0
lid-close-suspend-with-external-monitor=false
idle-dim-battery=true
lid-close-ac-action='suspend'

[org/cinnamon]
command-history=['gnome-terminal', '']
active-display-scale=1
panel-launchers=['DEPRECATED']
alttab-switcher-style='coverflow'
desktop-effects-close-transition='easeOutQuad'
applet-cache-updated=1548212940
desktop-effects-close-effect='scale'
panel-edit-mode=false
panels-enabled=['1:0:bottom']
panels-height=['1:33']
extension-cache-updated=1548207497
desktop-effects-tile-transition='easeInExpo'
enabled-extensions=['!DesktopCube@yare']
desktop-effects-maximize-effect='scale'
desktop-effects-map-time=400
next-applet-id=15
desktop-effects-map-effect='flyUp'
desktop-effects-unmaximize-transition='easeOutElastic'
desktop-effects-minimize-effect='flyDown'
enabled-applets=['panel1:right:1:systray@cinnamon.org:0', 'panel1:left:0:menu@cinnamon.org:1', 'panel1:right:10:show-desktop@cinnamon.org:2', 'panel1:left:2:panel-launchers@cinnamon.org:3', 'panel1:left:3:window-list@cinnamon.org:4', 'panel1:right:3:keyboard@cinnamon.org:5', 'panel1:right:4:notifications@cinnamon.org:6', 'panel1:right:5:removable-drives@cinnamon.org:7', 'panel1:right:6:user@cinnamon.org:8', 'panel1:right:2:network@cinnamon.org:9', 'panel1:right:8:power@cinnamon.org:11', 'panel1:right:9:calendar@cinnamon.org:12', 'panel1:right:7:sound@cinnamon.org:13', 'panel1:right:0:xrandr@cinnamon.org:14']
desktop-effects-unmaximize-effect='scale'
workspace-expo-view-as-grid=true
alttab-switcher-delay=100
workspace-osd-duration=400
desktop-effects-minimize-time=400
desklet-snap-interval=25
desktop-effects-maximize-time=100
desktop-effects-close-time=400
workspace-osd-x=50
enabled-desklets=['clock@cinnamon.org:0:1000:275', 'launcher@cinnamon.org:1:925:275', 'launcher@cinnamon.org:2:925:350']
desktop-effects-map-transition='easeOutElastic'
desktop-effects-minimize-transition='easeOutExpo'
desktop-effects-unmaximize-time=100
hotcorner-layout=['scale:true:0', 'gnome-terminal:true:0', 'expo:false:0', 'expo:true:0']
workspace-osd-y=50
desktop-effects-tile-effect='scale'
next-desklet-id=3
desktop-effects-maximize-transition='easeInExpo'
panels-resizable=['1:true']
desktop-effects-tile-time=100

[org/cinnamon/cinnamon-session]
quit-time-delay=60

[org/cinnamon/desklets/launcher]
launcher-list=['2:KODI.desktop']

[org/cinnamon/theme]
name='Adapta-Nokto'
theme-cache-updated=1549188375

[org/cinnamon/desktop/notifications]
bottom-notifications=false
remove-old=true

[org/cinnamon/desktop/wm/preferences]
min-window-opacity=30
workspace-names=['Workspace 1', 'Workspace 2', '', '', '']
button-layout='menu,shade,stick:minimize,maximize,close'
theme='Materia-dark'

[org/cinnamon/desktop/screensaver]
layout-group=0

[org/cinnamon/desktop/sound]
event-sounds=false
volume-sound-file='/usr/share/sounds/ubuntu/stereo/button-pressed.ogg'
volume-sound-enabled=true

[org/cinnamon/desktop/background]
picture-options='zoom'

[org/cinnamon/desktop/background/slideshow]
delay=15
image-source='xml:///usr/share/gnome-background-properties/disco-wallpapers.xml'

[org/cinnamon/desktop/a11y/applications]
screen-keyboard-enabled=false
screen-reader-enabled=false

[org/cinnamon/desktop/a11y/keyboard]
bouncekeys-delay=300
mousekeys-init-delay=300
mousekeys-max-speed=10
mousekeys-accel-time=300
slowkeys-delay=300

[org/cinnamon/desktop/a11y/mouse]
secondary-click-time=1.2
dwell-click-enabled=false
dwell-threshold=10
dwell-time=1.2
secondary-click-enabled=false

[org/cinnamon/desktop/interface]
clock-show-date=true
clock-show-seconds=true
font-name='Ubuntu 11.5'
cursor-theme='breeze_cursors'
cursor-blink-time=1200
cursor-size=24
text-scaling-factor=1.0
scaling-factor=uint32 0
keyboard-layout-prefer-variant-names=false
toolkit-accessibility=false

[org/cinnamon/desktop/media-handling]
autorun-x-content-open-folder=@as []
autorun-x-content-ignore=@as []
autorun-x-content-start-app=['x-content/unix-software', 'x-content/bootable-media']

[org/cinnamon/sounds]
tile-file='/usr/share/sounds/ubuntu/stereo/window-slide.ogg'
plug-file='/usr/share/sounds/ubuntu/stereo/bell.ogg'
notification-enabled=true
maximize-enabled=true
unplug-file='/usr/share/sounds/ubuntu/stereo/bell.ogg'
map-enabled=true
close-file='/usr/share/sounds/ubuntu/stereo/button-pressed.ogg'
map-file='/usr/share/sounds/ubuntu/stereo/service-logout.ogg'
plug-enabled=true
unplug-enabled=true
minimize-file='/usr/share/sounds/ubuntu/stereo/service-login.ogg'
close-enabled=true
switch-enabled=true
logout-file='/usr/share/sounds/ubuntu/stereo/desktop-logout.ogg'
minimize-enabled=true
login-enabled=true
unmaximize-enabled=true
logout-enabled=true
maximize-file='/usr/share/sounds/ubuntu/stereo/service-login.ogg'
switch-file='/usr/share/cinnamon/sounds/bell.ogg'
notification-file='/usr/share/sounds/ubuntu/stereo/message-new-instant.ogg'
tile-enabled=true
unmaximize-file='/usr/share/sounds/ubuntu/stereo/message.ogg'
login-file='/usr/share/sounds/ubuntu/stereo/desktop-login.ogg'

[org/cinnamon/muffin]
workspace-cycle=true
resize-threshold=24
tile-hud-threshold=25
unredirect-fullscreen-windows=true

[org/freedesktop/color-helper]
profile-upload-uri='https://github.com/Griggorii/DisplayCal-3.7.1.4-Ubuntu-20.04--Focal-Fossa--portation_griggorii'

[org/freedesktop/pulseaudio/module-groups/combine]
name0='module-combine'
enabled=false
args0=''

[org/freedesktop/tracker/miner/files]
index-recursive-directories=@as []
index-single-directories=@as []

[org/ubuntubudgie/plugins/budgie-showtime]
datefont='Sans 20'
linespacing=7
datefontcolor='#00FCB6'
timefontcolor='#C4A000'
autoposition=true
timefont='Sans 50'
leftalign=true

[org/ubuntubudgie/plugins/weathershow]
dynamicicon=true
textcolor=['139', '255', '0']
xposition=999
yposition=300

[org/gnome/Totem]
subtitle-encoding='UTF-8'
disable-deinterlacing=false
audio-output-type='stereo'
active-plugins=['variable-rate', 'vimeo', 'autoload-subtitles', 'totem-im-status', 'skipto', 'recent', 'rotation', 'screensaver', 'save-file', 'dbusservice', 'screenshot', 'movie-properties', 'apple-trailers', 'media-player-keys', 'pythonconsole', 'open-directory', 'opensubtitles']
repeat=true

[org/gnome/mines]
use-animations=true
window-width=600
window-height=428
window-is-maximized=false

[org/gnome/gnome-panel/layout/objects/menu-bar]
toplevel-id='top-panel'
pack-index=0
object-iid='org.gnome.gnome-panel.menu::menu-bar'

[org/gnome/gnome-panel/layout/objects/workspace-switcher]
toplevel-id='bottom-panel'
pack-index=0
object-iid='org.gnome.gnome-panel.wncklet::workspace-switcher'
pack-type='end'

[org/gnome/gnome-panel/layout/objects/window-list]
toplevel-id='bottom-panel'
pack-index=1
object-iid='org.gnome.gnome-panel.wncklet::window-list'

[org/gnome/gnome-panel/layout/objects/indicators]
toplevel-id='top-panel'
pack-index=0
object-iid='IndicatorAppletCompleteFactory::IndicatorAppletComplete'
pack-type='end'

[org/gnome/gnome-panel/layout/objects/show-destkop]
toplevel-id='bottom-panel'
pack-index=0
object-iid='org.gnome.gnome-panel.wncklet::show-desktop'

[org/gnome/gnome-panel/layout]
object-id-list=['menu-bar', 'indicators', 'show-destkop', 'window-list', 'workspace-switcher']
toplevel-id-list=['top-panel', 'bottom-panel']

[org/gnome/gnome-panel/layout/toplevels/bottom-panel]
enable-buttons=false
size=24
unhide-delay=100
animation-speed='fast'
x-centered=false
monitor=0
x=0
expand=true
orientation='bottom'
auto-hide-size=1
auto-hide=false
y=744
y-centered=false
hide-delay=300
y-bottom=0
x-right=-1

[org/gnome/gnome-panel/layout/toplevels/top-panel]
enable-buttons=false
size=24
unhide-delay=100
animation-speed='fast'
x-centered=false
monitor=0
x=0
expand=true
orientation='top'
auto-hide-size=1
auto-hide=false
y=0
y-centered=false
hide-delay=300
y-bottom=-1
x-right=-1

[org/gnome/settings-daemon/peripherals/keyboard]
numlock-state='off'

[org/gnome/settings-daemon/peripherals/mouse]
locate-pointer=false

[org/gnome/settings-daemon/peripherals/touchscreen]
orientation-lock=false

[org/gnome/settings-daemon/plugins/color]
night-light-enabled=false
night-light-temperature=uint32 5700
night-light-schedule-automatic=true

[org/gnome/settings-daemon/plugins/media-keys]
window-screenshot=['<Shift>F12']
control-center=['<Shift>F6']
next=['<Shift>KP_6']
home=['<Primary><Alt>Home']
help=['F1']
play=['<Primary>p']
custom-keybindings=['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-show-desktop/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-show-files-test/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']
email=['<Shift>F4']
media=['KP_Insert']
increase-text-size=['<Shift>KP_Add']
calculator=['<Shift>F3']
previous=['<Shift>KP_4']
screenshot-clip=['<Shift>F10']
decrease-text-size=['<Shift>KP_Subtract']
volume-mute=['<Primary>m']
terminal=['<Control><Alt>t']
max-screencast-length=uint32 1000100010
pause=['<Shift>KP_8']
stop=['<Shift>KP_2']
volume-down=['<Primary>KP_Subtract']
screenshot=['<Shift>F7']
volume-up=['<Primary>KP_Add']
mic-mute=['<Alt>m']
area-screenshot=['<Shift>F11']
area-screenshot-clip=['<Shift>F8']
screencast=['<Primary>Print']
www=['<Shift>F2']
window-screenshot-clip=['<Shift>F9']
search=['<Shift>F5']

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_topright]
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 1 0'
name='Shuffler-tiling topright'
binding='<Primary><Alt>KP_9'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-tilix-quake1]
command='tilix --quake'
name='Show/Hide Tilix Quake Console 1'
binding='<Alt>q'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-screenshot-window]
command='gnome-screenshot -w'
name='Save a screenshot of a window to Pictures'
binding='<Alt>Print'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_topleft]
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 0 0'
name='Shuffler-tiling topleft'
binding='<Primary><Alt>KP_7'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_topleft_noKP]
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 0 0'
name='Shuffler-tiling topleft mainkeyboard'
binding='<Super>1'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0]
command='tilix'
name='Терминал tilix'
binding='<Primary><Alt>t'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/windowshuffler]
command='/usr/share/budgie-desktop/windowshuffler/matrix_wrapper'
name='Toggle Window Shuffler'
binding='<Super>s'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_bottomhalf]
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 1 2 0 1'
name='Shuffler-tiling bottomhalf'
binding='<Primary><Alt>KP_2'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_topright_noKP]
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 1 0'
name='Shuffler-tiling topright mainkeyboard'
binding='<Super>2'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_lefthalf]
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 1 0 0'
name='Shuffler-tiling lefthalf'
binding='<Primary><Alt>KP_4'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-screenshot-area-clipboard]
command='gnome-screenshot -a -c'
name='Copy a screenshot of an area to clipboard'
binding='<Shift><Ctrl>Print'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-tilix-quake2]
command='tilix --quake'
name='Show/Hide Tilix Quake Console 2'
binding='F12'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_max]
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 1 1 0 0'
name='Shuffler-tiling maximized'
binding='<Primary><Alt>KP_5'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-visualspace-left]
command='/usr/share/budgie-desktop/visualspace/visualspace prev'
name='Move to Workspace left'
binding='<Control><Alt>Left'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-screenshot]
command='gnome-screenshot'
name='Save a screenshot to Pictures'
binding='Print'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_bottomright_noKP]
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 1 1'
name='Shuffler-tiling bottomright mainkeyboard'
binding='<Super>4'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_righthalf]
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 1 1 0'
name='Shuffler-tiling righthalf'
binding='<Primary><Alt>KP_6'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_tophalf]
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 1 2 0 0'
name='Shuffler-tiling tophalf'
binding='<Primary><Alt>KP_8'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_bottomleft_noKP]
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 0 1'
name='Shuffler-tiling bottomleft mainkeyboard'
binding='<Super>3'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-visualspace-right]
command='/usr/share/budgie-desktop/visualspace/visualspace next'
name='Move to Workspace right'
binding='<Control><Alt>Right'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_bottomleft]
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 0 1'
name='Shuffler-tiling bottomleft'
binding='<Primary><Alt>KP_1'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-screenshot-window-clipboard]
command='gnome-screenshot -w -c'
name='Copy a screenshot of a window to clipboard'
binding='<Ctrl>Print'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-show-files-test]
command='nemo'
name='Show File Browser'
binding='<Super>e'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-show-desktop]
command='/usr/share/budgie-desktop/showdesktop/showdesktop'
name='Hide/Show desktop'
binding='<Super>d'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/shuffler_bottomright]
command='/usr/share/budgie-desktop/windowshuffler/shuffler_nogui 2 2 1 1'
name='Shuffler-tiling bottomright'
binding='<Primary><Alt>KP_3'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1]
command='/usr/bin/tilix --quake'
name='tilix-quake'
binding='<Super>t'

[org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/budgie-screenshot-area]
command='gnome-screenshot -a'
name='Save a screenshot of an area to Pictures'
binding='<Shift>Print'

[org/gnome/settings-daemon/plugins/orientation]
active=true

[org/gnome/settings-daemon/plugins/power]
sleep-inactive-battery-type='suspend'
sleep-inactive-ac-type='nothing'
idle-dim=true
sleep-inactive-ac-timeout=3600
sleep-inactive-battery-timeout=6000
active=false

[org/gnome/settings-daemon/plugins/xsettings]
overrides={'Gtk/ShellShowsAppMenu': <0>, 'Gtk/DecorationLayout': <'menu:minimize,maximize,close'>}
srgba-order='srgb'
rgba-order='rgb'
antialiasing='grayscale'
hinting='slight'

[org/gnome/maps]
window-maximized=false
window-size=[787, 572]
last-viewed-location=[76.168235701644321, -0.070145112634972126, -44.242737293243408, -164.12554979324341]
window-position=[34, 28]
map-type='MapsStreetSource'
transportation-type='pedestrian'

[org/gnome/Weather/Application]
locations=[<(uint32 2, <('Irkutsk', 'UIII', true, [(0.91222542819346697, 1.8206693038565154)], [(0.91276841757705507, 1.8203153859907963)])>)>]

[org/gnome/charmap/window-state]
size=(768, 412)

[org/gnome/charmap]
font=@ms 'Courier New 20'
last-char=uint32 65

[org/gnome/rhythmbox/sources]
visible-columns=['post-time', 'duration', 'track-number', 'album', 'genre', 'artist']

[org/gnome/rhythmbox/podcast]
download-location=''

[org/gnome/rhythmbox/podcast/source]
show-browser=true

[org/gnome/rhythmbox/library]
layout-filename='%tN - %tt'
layout-path='%aa/%at'

[org/gnome/rhythmbox/library/encoding]
media-type='audio/x-vorbis'

[org/gnome/rhythmbox/library/source]
show-browser=true

[org/gnome/rhythmbox]
position=(34, 28)
size=(915, 542)
statusbar-visible=false

[org/gnome/rhythmbox/player]
volume=1.0

[org/gnome/rhythmbox/rhythmdb]
locations=['']

[org/gnome/rhythmbox/plugins/alternative_toolbar]
show-source-toolbar=false

[org/gnome/rhythmbox/plugins]
seen-plugins=['mpris', 'dbus-media-server', 'notification', 'cd-recorder', 'pythonconsole', 'audioscrobbler', 'rblirc', 'ipod', 'rb', 'alternative-toolbar', 'rbzeitgeist', 'soundcloud', 'replaygain', 'magnatune', 'im-status', 'sendto', 'webremote', 'artsearch', 'lyrics', 'grilo', 'daap', 'mtpdevice', 'fmradio', 'listenbrainz']
active-plugins=['mpris', 'dbus-media-server', 'mmkeys', 'notification', 'audiocd', 'power-manager', 'generic-player', 'cd-recorder', 'audioscrobbler', 'ipod', 'android', 'rb', 'alternative-toolbar', 'artsearch', 'iradio', 'daap', 'mtpdevice']

[org/gnome/rhythmbox/plugins/audioscrobbler/Last.fm]
scrobbling-enabled=true

[org/gnome/rhythmbox/plugins/audioscrobbler/Libre.fm]
scrobbling-enabled=true

[org/gnome/rhythmbox/plugins/iradio]
initial-stations-loaded=true

[org/gnome/rhythmbox/plugins/iradio/source]
show-browser=true

[org/gnome/photos]
window-size=[960, 600]
window-position=[132, 60]
window-maximized=false

[org/gnome/GPaste]
track-changes=false
history-name='history'

[org/gnome/evolution-data-server]
oauth2-google-client-secret=''
oauth2-google-client-id=''
migrated=true
network-monitor-gio-name=''

[org/gnome/brasero/plugins/dvdauthor]
priority=0

[org/gnome/brasero/plugins/growisofs]
priority=0

[org/gnome/brasero/plugins/readom]
priority=0

[org/gnome/brasero/plugins/genisoimage]
priority=0

[org/gnome/brasero/plugins/file-checksum]
priority=0

[org/gnome/brasero/plugins/wodim]
priority=0

[org/gnome/brasero/plugins/audio2cue]
priority=0

[org/gnome/brasero/plugins/vcdimager]
priority=0

[org/gnome/brasero/plugins/dvd-rw-format]
priority=0

[org/gnome/brasero/plugins/libburn]
priority=0

[org/gnome/brasero/plugins/cdrdao]
priority=0

[org/gnome/brasero/plugins/libisofs]
priority=0

[org/gnome/brasero/plugins/transcode2vob]
priority=0

[org/gnome/brasero/plugins/image-checksum]
priority=0

[org/gnome/brasero/plugins/normalize]
priority=0

[org/gnome/brasero/plugins/burn-uri]
priority=0

[org/gnome/brasero/plugins/file-downloader]
priority=0

[org/gnome/brasero/plugins/transcode]
priority=0

[org/gnome/brasero/plugins/dvdcss]
priority=0

[org/gnome/meld/window-state]
width=584
is-maximized=false
height=400
is-fullscreen=false

[org/gnome/mahjongg]
window-width=900
window-height=600
window-is-maximized=false

[org/gnome/Characters]
recent-characters=['↓']

[org/gnome/nm-applet]
disable-disconnected-notifications=false
disable-wifi-create=true
disable-vpn-notifications=false
suppress-wireless-networks-available=false
disable-connected-notifications=false

[org/gnome/packagekit]
search-mode='details'

[org/gnome/solitaire/window-state]
fullscreen=false
width=800
maximized=false
height=600

[org/gnome/sysprof]
window-size=(831, 519)
window-position=(64, 66)
last-spawn-env=@as []
window-maximized=false

[org/gnome/todo]
default-provider='local'
window-size=[870, 405]
active-extensions=['today-panel', 'scheduled-panel', 'background', 'eds', 'todoist', 'dark-theme', 'score', 'unscheduled-panel']
window-position=[0, 0]
view='grid'
window-maximized=false

[org/gnome/epiphany]
search-engines=[('', '', '!g')]
automatic-downloads=false
default-search-engine=''

[org/gnome/epiphany/sync]
sync-device-name='GriggoriiX64'

[org/gnome/epiphany/web]
remember-passwords=false

[org/gnome/epiphany/state]
window-size=(685, 474)
window-position=(258, 150)
is-maximized=false

[org/gnome/gedit/plugins/filebrowser]
tree-view=true
virtual-root=''
root='file:///'

[org/gnome/gedit/plugins]
active-plugins=['docinfo', 'externaltools', 'terminal', 'commander', 'snippets', 'time', 'modelines', 'quickopen', 'git', 'findinfiles', 'joinlines', 'colorpicker', 'smartspaces', 'textsize', 'filebrowser', 'bracketcompletion', 'translate', 'spell', 'charmap', 'colorschemer', 'codecomment', 'quickhighlight', 'wordcompletion', 'sort', 'multiedit', 'pythonconsole', 'synctex']

[org/gnome/gedit/preferences/editor]
use-default-font=false
wrap-mode='word'
highlight-current-line=false
display-right-margin=false
background-pattern='none'
display-line-numbers=false
editor-font='Sans 12'
bracket-matching=true
scheme='classic'
wrap-last-split-mode='word'

[org/gnome/gedit/preferences/encodings]
candidate-encodings=['UTF-8', 'ISO-8859-15', 'UTF-16', 'WINDOWS-1250', 'WINDOWS-1251']

[org/gnome/gedit/preferences/ui]
statusbar-visible=true
bottom-panel-visible=true
side-panel-visible=true
show-tabs-mode='auto'

[org/gnome/gedit/state/file-chooser]
open-recent=false

[org/gnome/gedit/state/history-entry]
replace-with-entry=['']
search-for-entry=['']

[org/gnome/gedit/state/window]
bottom-panel-size=22
side-panel-size=289
side-panel-active-page='GeditFileBrowserPanel'
bottom-panel-active-page='GeditExternalToolsShellOutput'
size=(965, 525)
state=87168

[org/gnome/desktop/wm/keybindings]
switch-group=['']
begin-resize=['<Alt>F8']
switch-to-workspace-7=['disabled']
begin-move=['<Alt>F7']
move-to-side-w=['<Control><Alt>KP_Left']
move-to-corner-nw=['<Control><Alt>KP_Home']
move-to-workspace-10=['disabled']
move-to-workspace-6=['disabled']
move-to-workspace-right=['<Shift><Control><Alt>Right']
toggle-maximized=['<Alt>F10']
move-to-workspace-left=['<Shift><Control><Alt>Left']
switch-to-workspace-8=['disabled']
move-to-workspace-11=['disabled']
lower=['disabled']
move-to-workspace-7=['disabled']
move-to-workspace-down=['<Shift><Super>Next']
minimize=['<Super>h']
switch-to-workspace-9=['disabled']
move-to-workspace-12=['disabled']
toggle-on-all-workspaces=['<Super>Tab']
switch-input-source=['<Shift>Alt_L']
move-to-workspace-8=['disabled']
move-to-side-n=['<Control><Alt>KP_Up']
maximize-horizontally=['<Shift>KP_Multiply']
activate-window-menu=['<Alt>space']
switch-windows-backward=['disabled']
maximize-vertically=['<Shift>KP_Divide']
move-to-corner-sw=['<Control><Alt>KP_End']
move-to-workspace-9=['disabled']
maximize=['<Super>Up']
panel-main-menu=['<Alt>F1']
close=['<Alt>F4']
move-to-side-e=['<Control><Alt>KP_Right']
move-to-corner-ne=['<Control><Alt>KP_Prior']
panel-run-dialog=['<Alt>F2']
switch-to-workspace-1=['<Super>1']
switch-windows=['disabled']
unmaximize=['<Super>Down']
switch-to-workspace-2=['<Super>2']
switch-applications=['']
move-to-workspace-1=['<Shift><Super>KP_1']
switch-to-workspace-up=['<Super>Prior']
switch-to-workspace-3=['<Super>3']
move-to-side-s=['<Control><Alt>KP_Down']
show-desktop=['<Shift><Super>KP_Decimal']
switch-to-workspace-right=['disabled']
move-to-workspace-2=['<Shift><Super>KP_2']
switch-to-workspace-left=['disabled']
raise=['disabled']
move-to-corner-se=['<Control><Alt>KP_Next']
switch-to-workspace-10=['disabled']
switch-to-workspace-4=['<Super>4']
toggle-shaded=['disabled']
switch-to-workspace-down=['<Super>Next']
move-to-workspace-3=['<Shift><Super>KP_3']
switch-input-source-backward=['<Super>space']
switch-to-workspace-5=['disabled']
switch-to-workspace-11=['disabled']
switch-applications-backward=['']
move-to-workspace-4=['<Shift><Super>KP_4']
toggle-fullscreen=['disabled']
switch-to-workspace-6=['disabled']
switch-to-workspace-12=['disabled']
move-to-workspace-up=['<Shift><Super>Prior']
move-to-workspace-5=['disabled']
switch-group-backward=['']

[org/gnome/desktop/wm/preferences]
resize-with-right-button=false
workspace-names=['Рабочее место 1', 'Рабочее место 2', '', '', '']
auto-raise-delay=1000
focus-mode='click'
visual-bell-type='frame-flash'
button-layout='appmenu:minimize,maximize,close'
action-middle-click-titlebar='none'
titlebar-font='Ubuntu Bold 11'
mouse-button-modifier='<Super>'
num-workspaces=1
auto-raise=true
theme='Materia-dark'
visual-bell=false

[org/gnome/desktop/notifications]
application-children=['gnome-control-center', 'org-gnome-tweaks', 'org-gnome-gedit', 'firefox', 'com-gexperts-tilix', 'mousepad', 'org-gnome-nautilus', 'org-gnome-terminal', 'org-gnome-fileroller', 'org-gnome-baobab', 'budgie-desktop-settings', 'nemo', 'brave-browser', 'jb-mission-control-jdk8', 'brave-browser-beta', 'thunar', 'gdebi', 'thunderbird', 'telegramdesktop', 'org-midori-browser-midori', 'vlc', 'xfce4-notifyd-config', 'nm-applet', 'com-obsproject-studio', 'yelp', 'gnome-power-panel', 'gnome-network-panel', 'displaycal', 'displaycal-scripting-client', 'stacer', 'chromium-browser', 'gnome-system-monitor', 'org-gnome-boxes', 'displaycal-vrml-to-x3d-converter', 'green-recorder', 'org-gnome-eog', 'io-github-celluloid-player-celluloid', 'update-manager', 'org-gnome-totem']
show-banners=true
show-in-lock-screen=true

[org/gnome/desktop/notifications/application/brave-browser-beta]
application-id='brave-browser-beta.desktop'

[org/gnome/desktop/notifications/application/gnome-network-panel]
application-id='gnome-network-panel.desktop'

[org/gnome/desktop/notifications/application/com-gexperts-tilix]
application-id='com.gexperts.Tilix.desktop'

[org/gnome/desktop/notifications/application/org-gnome-boxes]
application-id='org.gnome.Boxes.desktop'

[org/gnome/desktop/notifications/application/mousepad]
application-id='mousepad.desktop'

[org/gnome/desktop/notifications/application/gdebi]
application-id='gdebi.desktop'

[org/gnome/desktop/notifications/application/nemo]
application-id='nemo.desktop'

[org/gnome/desktop/notifications/application/chromium-browser]
application-id='chromium-browser.desktop'

[org/gnome/desktop/notifications/application/bleachbit]
application-id='bleachbit.desktop'

[org/gnome/desktop/notifications/application/firefox]
application-id='firefox.desktop'

[org/gnome/desktop/notifications/application/budgie-desktop-settings]
application-id='budgie-desktop-settings.desktop'

[org/gnome/desktop/notifications/application/org-gnome-software]
application-id='org.gnome.Software.desktop'

[org/gnome/desktop/notifications/application/org-gnome-epiphany]
application-id='org.gnome.Epiphany.desktop'

[org/gnome/desktop/notifications/application/caja]
application-id='caja.desktop'

[org/gnome/desktop/notifications/application/org-gnome-diskutility]
application-id='org.gnome.DiskUtility.desktop'

[org/gnome/desktop/notifications/application/thunderbird]
application-id='thunderbird.desktop'

[org/gnome/desktop/notifications/application/org-remmina-remmina]
application-id='org.remmina.Remmina.desktop'

[org/gnome/desktop/notifications/application/org-midori-browser-midori]
application-id='org.midori_browser.Midori.desktop'

[org/gnome/desktop/notifications/application/xfce-display-settings]
application-id='xfce-display-settings.desktop'

[org/gnome/desktop/notifications/application/displaycal]
application-id='displaycal.desktop'

[org/gnome/desktop/notifications/application/gnome-shell-extension-prefs]
application-id='gnome-shell-extension-prefs.desktop'

[org/gnome/desktop/notifications/application/green-recorder]
application-id='green-recorder.desktop'

[org/gnome/desktop/notifications/application/gparted]
application-id='gparted.desktop'

[org/gnome/desktop/notifications/application/org-gnome-tweaks]
application-id='org.gnome.tweaks.desktop'

[org/gnome/desktop/notifications/application/brave-browser]
application-id='brave-browser.desktop'

[org/gnome/desktop/notifications/application/displaycal-scripting-client]
application-id='displaycal-scripting-client.desktop'

[org/gnome/desktop/notifications/application/yelp]
application-id='yelp.desktop'

[org/gnome/desktop/notifications/application/update-manager]
application-id='update-manager.desktop'

[org/gnome/desktop/notifications/application/telegramdesktop]
application-id='telegramdesktop.desktop'

[org/gnome/desktop/notifications/application/com-obsproject-studio]
application-id='com.obsproject.Studio.desktop'

[org/gnome/desktop/notifications/application/vlc]
application-id='vlc.desktop'

[org/gnome/desktop/notifications/application/org-gnome-fileroller]
application-id='org.gnome.FileRoller.desktop'

[org/gnome/desktop/notifications/application/displaycal-vrml-to-x3d-converter]
application-id='displaycal-vrml-to-x3d-converter.desktop'

[org/gnome/desktop/notifications/application/org-gnome-nautilus]
details-in-lock-screen=true
application-id='org.gnome.Nautilus.desktop'

[org/gnome/desktop/notifications/application/gnome-system-monitor]
application-id='gnome-system-monitor.desktop'

[org/gnome/desktop/notifications/application/org-gnome-gedit]
application-id='org.gnome.gedit.desktop'

[org/gnome/desktop/notifications/application/com-github-wwmm-pulseeffects]
application-id='com.github.wwmm.pulseeffects.desktop'

[org/gnome/desktop/notifications/application/apport-gtk]
application-id='apport-gtk.desktop'

[org/gnome/desktop/notifications/application/chrome-nhbmpbdladcchdhkemlojfjdknjadhmh-default]
application-id='chrome-nhbmpbdladcchdhkemlojfjdknjadhmh-Default.desktop'

[org/gnome/desktop/notifications/application/xfce4-notifyd-config]
application-id='xfce4-notifyd-config.desktop'

[org/gnome/desktop/notifications/application/org-gnome-dejadup]
application-id='org.gnome.DejaDup.desktop'

[org/gnome/desktop/notifications/application/org-gnome-baobab]
application-id='org.gnome.baobab.desktop'

[org/gnome/desktop/notifications/application/org-gnome-eog]
application-id='org.gnome.eog.desktop'

[org/gnome/desktop/notifications/application/blueman-manager]
application-id='blueman-manager.desktop'

[org/gnome/desktop/notifications/application/org-gnome-terminal]
application-id='org.gnome.Terminal.desktop'

[org/gnome/desktop/notifications/application/gnome-control-center]
application-id='gnome-control-center.desktop'

[org/gnome/desktop/notifications/application/rstudio]
application-id='rstudio.desktop'

[org/gnome/desktop/notifications/application/gnome-power-panel]
application-id='gnome-power-panel.desktop'

[org/gnome/desktop/notifications/application/jb-mission-control-jdk8]
application-id='JB-mission-control-jdk8.desktop'

[org/gnome/desktop/notifications/application/org-gnome-totem]
application-id='org.gnome.Totem.desktop'

[org/gnome/desktop/notifications/application/nm-applet]
application-id='nm-applet.desktop'

[org/gnome/desktop/notifications/application/io-github-celluloid-player-celluloid]
application-id='io.github.celluloid_player.Celluloid.desktop'

[org/gnome/desktop/notifications/application/gnome-alsamixer]
application-id='gnome-alsamixer.desktop'

[org/gnome/desktop/notifications/application/thunar]
application-id='Thunar.desktop'

[org/gnome/desktop/notifications/application/rhythmbox]
application-id='rhythmbox.desktop'

[org/gnome/desktop/notifications/application/stacer]
application-id='stacer.desktop'

[org/gnome/desktop/background]
picture-options='zoom'
color-shading-type='solid'
show-desktop-icons=true
secondary-color='#000000'
primary-color='#000000'

[org/gnome/desktop/session]
idle-delay=uint32 0

[org/gnome/desktop/search-providers]
disabled=['seahorse.desktop']
sort-order=['org.gnome.Contacts.desktop', 'org.gnome.Documents.desktop', 'org.gnome.Nautilus.desktop']

[org/gnome/desktop/calendar]
show-weekdate=true

[org/gnome/desktop/privacy]
report-technical-problems=true
disable-microphone=false
remember-recent-files=false
recent-files-max-age=1
remove-old-temp-files=false
remove-old-trash-files=false

[org/gnome/desktop/input-sources]
xkb-options=['terminate:ctrl_alt_bksp', 'grp:alt_shift_toggle', 'lv3:ralt_switch']
mru-sources=[('xkb', 'ru'), ('xkb', 'us')]
show-all-sources=false
current=uint32 0
per-window=true
sources=[('xkb', 'us'), ('xkb', 'ru')]

[org/gnome/desktop/peripherals/keyboard]
numlock-state=true

[org/gnome/desktop/peripherals/mouse]
left-handed=false

[org/gnome/desktop/peripherals/touchpad]
two-finger-scrolling-enabled=true
disable-while-typing=true
click-method='fingers'
tap-to-click=true

[org/gnome/desktop/sound]
theme-name='__custom'
event-sounds=true
allow-volume-above-100-percent=true

[org/gnome/desktop/media-handling]
autorun-never=true
autorun-x-content-open-folder=['x-content/bootable-media']
automount-open=false
autorun-x-content-ignore=@as []
automount=false
autorun-x-content-start-app=['x-content/unix-software', 'x-content/bootable-media']

[org/gnome/desktop/file-sharing]
require-password='never'

[org/gnome/desktop/applications/terminal]
exec='tilix'

[org/gnome/desktop/a11y/applications]
screen-keyboard-enabled=false
screen-magnifier-enabled=false
screen-reader-enabled=false

[org/gnome/desktop/a11y]
always-show-universal-access-status=true

[org/gnome/desktop/a11y/keyboard]
enable=false
mousekeys-enable=false
stickykeys-enable=false
togglekeys-enable=true

[org/gnome/desktop/a11y/magnifier]
invert-lightness=false
contrast-red=0.0
mouse-tracking='proportional'
brightness-blue=0.0
brightness-red=0.0
contrast-green=0.0
lens-mode=false
contrast-blue=0.0
show-cross-hairs=false
brightness-green=0.0
mag-factor=4.0
color-saturation=1.0

[org/gnome/desktop/a11y/mouse]
secondary-click-time=1.2
dwell-threshold=10
secondary-click-enabled=false
click-type-window-orientation='vertical'
dwell-time=1.2
dwell-click-enabled=false
click-type-window-style='both'
click-type-window-geometry=''

[org/gnome/desktop/app-folders/folders/Pop-System]
translate=true
name='System.directory'
apps=['gnome-language-selector.desktop', 'gnome-session-properties.desktop', 'gnome-system-monitor.desktop', 'im-config.desktop', 'nm-connection-editor.desktop', 'nvidia-settings.desktop', 'org.gnome.baobab.desktop', 'org.gnome.DiskUtility.desktop', 'org.gnome.PowerStats.desktop', 'org.gnome.seahorse.Application.desktop', 'software-properties-gnome.desktop', 'system76-driver.desktop', 'system76-firmware.desktop']

[org/gnome/desktop/app-folders/folders/Pop-Utility]
translate=true
name='X-GNOME-Utilities.directory'
apps=['com.github.donadigo.eddy.desktop', 'eog.desktop', 'gucharmap.desktop', 'org.gnome.Evince.desktop', 'org.gnome.FileRoller.desktop', 'org.gnome.font-viewer.desktop', 'org.gnome.Screenshot.desktop', 'org.gnome.Totem.desktop', 'popsicle.desktop', 'simple-scan.desktop', 'yelp.desktop']

[org/gnome/desktop/app-folders/folders/YaST]
translate=true
categories=['X-SuSE-YaST']
name='suse-yast.directory'

[org/gnome/desktop/app-folders/folders/Utilities]
translate=true
categories=['X-GNOME-Utilities']
name='X-GNOME-Utilities.directory'
apps=['org.gnome.baobab.desktop', 'deja-dup-preferences.desktop', 'eog.desktop', 'evince.desktop', 'org.gnome.FileRoller.desktop', 'gnome-calculator.desktop', 'gnome-dictionary.desktop', 'org.gnome.Characters.desktop', 'org.gnome.DiskUtility.desktop', 'org.gnome.font-viewer.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Screenshot.desktop', 'gnome-system-log.desktop', 'gnome-system-monitor.desktop', 'gnome-tweak-tool.desktop', 'gucharmap.desktop', 'seahorse.desktop', 'vinagre.desktop', 'yelp.desktop']

[org/gnome/desktop/app-folders/folders/Pop-Office]
translate=true
name='Office.directory'
apps=['libreoffice-calc.desktop', 'libreoffice-draw.desktop', 'libreoffice-impress.desktop', 'libreoffice-math.desktop', 'libreoffice-startcenter.desktop', 'libreoffice-writer.desktop']

[org/gnome/desktop/app-folders/folders/Sundry]
translate=true
categories=['X-GNOME-Sundry']
name='X-GNOME-Sundry.directory'
apps=['alacarte.desktop', 'authconfig.desktop', 'ca.desrt.dconf-editor.desktop', 'fedora-release-notes.desktop', 'firewall-config.desktop', 'flash-player-properties.desktop', 'gconf-editor.desktop', 'gnome-abrt.desktop', 'gnome-power-statistics.desktop', 'ibus-setup-anthy.desktop', 'ibus-setup.desktop', 'ibus-setup-hangul.desktop', 'ibus-setup-libbopomofo.desktop', 'ibus-setup-libpinyin.desktop', 'ibus-setup-m17n.desktop', 'ibus-setup-typing-booster.desktop', 'im-chooser.desktop', 'itweb-settings.desktop', 'jhbuild.desktop', 'javaws.desktop', 'java-1.7.0-openjdk-jconsole.desktop', 'java-1.7.0-openjdk-policytool.desktop', 'log4j-chainsaw.desktop', 'log4j-logfactor5.desktop', 'nm-connection-editor.desktop', 'orca.desktop', 'setroubleshoot.desktop', 'system-config-date.desktop', 'system-config-firewall.desktop', 'system-config-keyboard.desktop', 'system-config-language.desktop', 'system-config-printer.desktop', 'system-config-users.desktop', 'vino-preferences.desktop', 'sync-monitor-calendar.desktop']

[org/gnome/desktop/app-folders]
folder-children=['Utilities', 'Sundry', 'YaST']

[org/gnome/desktop/screensaver]
picture-options='zoom'
primary-color='#000000'
color-shading-type='solid'
idle-activation-enabled=false
lock-delay=uint32 0
embedded-keyboard-enabled=true
lock-enabled=false
embedded-keyboard-command='onboard --xid'
secondary-color='#000000'

[org/gnome/desktop/interface]
cursor-size=24
document-font-name='DejaVu Sans Mono Bold 11'
menus-have-icons=true
locate-pointer=true
monospace-font-name='Ubuntu Mono 11'
text-scaling-factor=1.0
clock-format='24h'
scaling-factor=uint32 1
show-battery-percentage=true
toolkit-acc=false
cursor-theme='breeze_cursors'
buttons-have-icons=true
enable-hot-corners=true
clock-show-weekday=true
clock-show-seconds=true
enable-animations=true
toolbar-style='both-horiz'
toolkit-accessibility=false
clock-show-date=true
font-name='Ubuntu 11'
gtk-im-module='gtk-im-context-simple'

[org/gnome/desktop/lockdown]
disable-log-out=false
disable-user-switching=false
disable-lock-screen=false
disable-printing=false

[org/gnome/orca]
active-profile=['Default', 'default']

[org/gnome/yelp]
font-adjustment=0
show-cursor=true

[org/gnome/software]
check-timestamp=int64 1593485964
first-run=false

[org/gnome/gnome-system-log]
logfile='/var/log/Xorg.0.log'
width=668
fontsize=11
logfiles=['/var/log/Xorg.0.log']
height=765

[org/gnome/Disks]
image-dir-uri=''

[org/gnome/Geary]
migrated-config=true
folder-list-pane-position-horizontal=102
messages-pane-position=356
window-height=688

[org/gnome/shell]
app-picker-view=uint32 1
command-history=['nautilus', 'r']
enable-hot-corners=true
favorite-apps=['org.gnome.Screenshot.desktop', 'ubiquity.desktop', 'nemo.desktop', 'org.gnome.Nautilus.desktop', 'com.github.wwmm.pulseeffects.desktop', 'gnome-control-center.desktop', 'com.gexperts.Tilix.desktop', 'gnome-system-monitor.desktop', 'com.obsproject.Studio.desktop', 'org.gnome.tweaks.desktop', 'org.gnome.DiskUtility.desktop', 'nvidia-settings.desktop', 'ca.desrt.dconf-editor.desktop', 'telegramdesktop.desktop', 'chromium-browser.desktop', 'green-recorder.desktop', 'update-manager.desktop']
disable-user-extensions=false
app-picker-layout=[{'org.gnome.TwentyFortyEight.desktop': <{'position': <0>}>, 'gnome-session-properties.desktop': <{'position': <1>}>, 'chromium-browser.desktop': <{'position': <2>}>, 'software-properties-drivers.desktop': <{'position': <3>}>, 'org.gnome.Calculator.desktop': <{'position': <4>}>, 'org.gnome.Maps.desktop': <{'position': <5>}>, 'org.gnome.Mahjongg.desktop': <{'position': <6>}>, 'vlc.desktop': <{'position': <7>}>, 'synaptic.desktop': <{'position': <8>}>, 'org.gnome.Mines.desktop': <{'position': <9>}>, 'gufw.desktop': <{'position': <10>}>, 'gnome-control-center.desktop': <{'position': <11>}>, 'onboard-settings.desktop': <{'position': <12>}>, 'qt5ct.desktop': <{'position': <13>}>, 'update-manager.desktop': <{'position': <14>}>, 'lightdm-settings.desktop': <{'position': <15>}>, 'sol.desktop': <{'position': <16>}>, 'org.xfce.Catfish.desktop': <{'position': <17>}>, 'gdebi.desktop': <{'position': <18>}>, 'software-properties-gtk.desktop': <{'position': <19>}>, 'mpv.desktop': <{'position': <20>}>, 'org.gnome.Evince.desktop': <{'position': <21>}>, 'menulibre.desktop': <{'position': <22>}>}, {'simple-scan.desktop': <{'position': <0>}>, 'org.gnome.PowerStats.desktop': <{'position': <1>}>, 'org.gnome.Sudoku.desktop': <{'position': <2>}>, 'org.gnome.gedit.desktop': <{'position': <3>}>, 'Utilities': <{'position': <4>}>, 'nemo.desktop': <{'position': <5>}>, 'org.gnome.Software.desktop': <{'position': <6>}>, 'gnome-language-selector.desktop': <{'position': <7>}>, 'io.github.celluloid_player.Celluloid.desktop': <{'position': <8>}>, 'org.gnome.Cheese.desktop': <{'position': <9>}>, 'com.github.maoschanz.drawing.desktop': <{'position': <10>}>, 'gparted.desktop': <{'position': <11>}>, 'org.gnome.gThumb.desktop': <{'position': <12>}>, 'libreoffice-calc.desktop': <{'position': <13>}>, 'libreoffice-draw.desktop': <{'position': <14>}>, 'libreoffice-impress.desktop': <{'position': <15>}>, 'libreoffice-writer.desktop': <{'position': <16>}>, 'software-properties-livepatch.desktop': <{'position': <17>}>, 'com.obsproject.Studio.desktop': <{'position': <18>}>, 'onboard.desktop': <{'position': <19>}>, 'plank.desktop': <{'position': <20>}>, 'previewscontrols.desktop': <{'position': <21>}>, 'in.lsp_plug.lsp_plugins_spectrum_analyzer_x12.desktop': <{'position': <22>}>, 'in.lsp_plug.lsp_plugins_spectrum_analyzer_x16.desktop': <{'position': <23>}>}, {'rhythmbox.desktop': <{'position': <0>}>, 'stacer.desktop': <{'position': <1>}>, 'info.desktop': <{'position': <2>}>, 'transmission-gtk.desktop': <{'position': <3>}>, 'shuffler-control.desktop': <{'position': <4>}>, 'com.hughski.ColorHug.DisplayAnalysis.desktop': <{'position': <5>}>, 'org.gnome.Totem.desktop': <{'position': <6>}>, 'org.gnome.tweaks.desktop': <{'position': <7>}>, 'com.hughski.ColorHug.CcmxLoader.desktop': <{'position': <8>}>, 'hardinfo.desktop': <{'position': <9>}>, 'calf.desktop': <{'position': <10>}>, 'lightdm-gtk-greeter-settings.desktop': <{'position': <11>}>, 'mugshot.desktop': <{'position': <12>}>, 'org.gnome.Weather.desktop': <{'position': <13>}>, 'thunderbird.desktop': <{'position': <14>}>, 'org.gnome.eog.desktop': <{'position': <15>}>, 'Sundry': <{'position': <16>}>, 'org.gnome.Extensions.desktop': <{'position': <17>}>, 'usb-creator-gtk.desktop': <{'position': <18>}>, 'com.hughski.ColorHug.FlashLoader.desktop': <{'position': <19>}>, 'ubiquity.desktop': <{'position': <20>}>, 'com.hughski.ColorHug.Backlight.desktop': <{'position': <21>}>, 'org.bleachbit.BleachBit.desktop': <{'position': <22>}>, 'bleachbit-root.desktop': <{'position': <23>}>}, {'cpu-x.desktop': <{'position': <0>}>, 'in.lsp_plug.lsp_plugins_multisampler_x12_do.desktop': <{'position': <1>}>, 'in.lsp_plug.lsp_plugins_multisampler_x24_do.desktop': <{'position': <2>}>, 'in.lsp_plug.lsp_plugins_multisampler_x48_do.desktop': <{'position': <3>}>, 'in.lsp_plug.lsp_plugins_spectrum_analyzer_x8.desktop': <{'position': <4>}>, 'in.lsp_plug.lsp_plugins_spectrum_analyzer_x4.desktop': <{'position': <5>}>, 'gimp.desktop': <{'position': <6>}>, 'org.gnome.GPaste.Ui.desktop': <{'position': <7>}>, 'hannah-foo2zjs.desktop': <{'position': <8>}>, 'in.lsp_plug.lsp_plugins_latency_meter.desktop': <{'position': <9>}>, 'in.lsp_plug.lsp_plugins_crossover_ms.desktop': <{'position': <10>}>, 'in.lsp_plug.lsp_plugins_mb_compressor_ms.desktop': <{'position': <11>}>, 'in.lsp_plug.lsp_plugins_mb_expander_ms.desktop': <{'position': <12>}>, 'in.lsp_plug.lsp_plugins_mb_gate_ms.desktop': <{'position': <13>}>, 'in.lsp_plug.lsp_plugins_sc_mb_expander_ms.desktop': <{'position': <14>}>, 'in.lsp_plug.lsp_plugins_sc_mb_gate_ms.desktop': <{'position': <15>}>, 'in.lsp_plug.lsp_plugins_compressor_ms.desktop': <{'position': <16>}>, 'in.lsp_plug.lsp_plugins_graph_equalizer_x16_ms.desktop': <{'position': <17>}>, 'in.lsp_plug.lsp_plugins_para_equalizer_x16_ms.desktop': <{'position': <18>}>, 'in.lsp_plug.lsp_plugins_graph_equalizer_x32_ms.desktop': <{'position': <19>}>, 'in.lsp_plug.lsp_plugins_para_equalizer_x32_ms.desktop': <{'position': <20>}>, 'in.lsp_plug.lsp_plugins_dyna_processor_ms.desktop': <{'position': <21>}>, 'in.lsp_plug.lsp_plugins_sc_dyna_processor_ms.desktop': <{'position': <22>}>, 'in.lsp_plug.lsp_plugins_expander_ms.desktop': <{'position': <23>}>}, {'in.lsp_plug.lsp_plugins_gate_ms.desktop': <{'position': <0>}>, 'in.lsp_plug.lsp_plugins_sc_expander_ms.desktop': <{'position': <1>}>, 'in.lsp_plug.lsp_plugins_sc_gate_ms.desktop': <{'position': <2>}>, 'in.lsp_plug.lsp_plugins_sc_mb_compressor_ms.desktop': <{'position': <3>}>, 'in.lsp_plug.lsp_plugins_sc_compressor_ms.desktop': <{'position': <4>}>, 'in.lsp_plug.lsp_plugins_graph_equalizer_x16_mono.desktop': <{'position': <5>}>, 'in.lsp_plug.lsp_plugins_graph_equalizer_x32_mono.desktop': <{'position': <6>}>, 'in.lsp_plug.lsp_plugins_para_equalizer_x16_mono.desktop': <{'position': <7>}>, 'in.lsp_plug.lsp_plugins_para_equalizer_x32_mono.desktop': <{'position': <8>}>, 'in.lsp_plug.lsp_plugins_profiler_mono.desktop': <{'position': <9>}>, 'in.lsp_plug.lsp_plugins_trigger_mono.desktop': <{'position': <10>}>, 'in.lsp_plug.lsp_plugins_compressor_mono.desktop': <{'position': <11>}>, 'in.lsp_plug.lsp_plugins_impulse_reverb_mono.desktop': <{'position': <12>}>, 'in.lsp_plug.lsp_plugins_crossover_mono.desktop': <{'position': <13>}>, 'in.lsp_plug.lsp_plugins_comp_delay_mono.desktop': <{'position': <14>}>, 'in.lsp_plug.lsp_plugins_dyna_processor_mono.desktop': <{'position': <15>}>, 'in.lsp_plug.lsp_plugins_sc_dyna_processor_mono.desktop': <{'position': <16>}>, 'in.lsp_plug.lsp_plugins_expander_mono.desktop': <{'position': <17>}>, 'in.lsp_plug.lsp_plugins_gate_mono.desktop': <{'position': <18>}>, 'in.lsp_plug.lsp_plugins_impulse_responses_mono.desktop': <{'position': <19>}>, 'in.lsp_plug.lsp_plugins_limiter_mono.desktop': <{'position': <20>}>, 'in.lsp_plug.lsp_plugins_loud_comp_mono.desktop': <{'position': <21>}>, 'in.lsp_plug.lsp_plugins_sampler_mono.desktop': <{'position': <22>}>, 'in.lsp_plug.lsp_plugins_trigger_midi_mono.desktop': <{'position': <23>}>}, {'in.lsp_plug.lsp_plugins_mb_compressor_mono.desktop': <{'position': <0>}>, 'in.lsp_plug.lsp_plugins_mb_expander_mono.desktop': <{'position': <1>}>, 'in.lsp_plug.lsp_plugins_mb_gate_mono.desktop': <{'position': <2>}>, 'in.lsp_plug.lsp_plugins_sc_mb_expander_mono.desktop': <{'position': <3>}>, 'in.lsp_plug.lsp_plugins_sc_mb_gate_mono.desktop': <{'position': <4>}>, 'in.lsp_plug.lsp_plugins_room_builder_mono.desktop': <{'position': <5>}>, 'in.lsp_plug.lsp_plugins_sc_compressor_mono.desktop': <{'position': <6>}>, 'in.lsp_plug.lsp_plugins_sc_expander_mono.desktop': <{'position': <7>}>, 'in.lsp_plug.lsp_plugins_sc_gate_mono.desktop': <{'position': <8>}>, 'in.lsp_plug.lsp_plugins_sc_limiter_mono.desktop': <{'position': <9>}>, 'in.lsp_plug.lsp_plugins_sc_mb_compressor_mono.desktop': <{'position': <10>}>, 'in.lsp_plug.lsp_plugins_oscillator_mono.desktop': <{'position': <11>}>, 'in.lsp_plug.lsp_plugins_slap_delay_mono.desktop': <{'position': <12>}>, 'in.lsp_plug.lsp_plugins_surge_filter_mono.desktop': <{'position': <13>}>, 'mousepad.desktop': <{'position': <14>}>, 'in.lsp_plug.lsp_plugins_spectrum_analyzer_x1.desktop': <{'position': <15>}>, 'in.lsp_plug.lsp_plugins_phase_detector.desktop': <{'position': <16>}>, 'com.github.wwmm.pulseeffects.desktop': <{'position': <17>}>, 'shotwell.desktop': <{'position': <18>}>, 'in.lsp_plug.lsp_plugins_crossover_lr.desktop': <{'position': <19>}>, 'in.lsp_plug.lsp_plugins_mb_compressor_lr.desktop': <{'position': <20>}>, 'in.lsp_plug.lsp_plugins_mb_expander_lr.desktop': <{'position': <21>}>, 'in.lsp_plug.lsp_plugins_mb_gate_lr.desktop': <{'position': <22>}>, 'in.lsp_plug.lsp_plugins_sc_mb_expander_lr.desktop': <{'position': <23>}>}, {'in.lsp_plug.lsp_plugins_sc_mb_gate_lr.desktop': <{'position': <0>}>, 'in.lsp_plug.lsp_plugins_graph_equalizer_x16_lr.desktop': <{'position': <1>}>, 'in.lsp_plug.lsp_plugins_para_equalizer_x16_lr.desktop': <{'position': <2>}>, 'in.lsp_plug.lsp_plugins_graph_equalizer_x32_lr.desktop': <{'position': <3>}>, 'in.lsp_plug.lsp_plugins_para_equalizer_x32_lr.desktop': <{'position': <4>}>, 'in.lsp_plug.lsp_plugins_compressor_lr.desktop': <{'position': <5>}>, 'in.lsp_plug.lsp_plugins_comp_delay_x2_stereo.desktop': <{'position': <6>}>, 'in.lsp_plug.lsp_plugins_dyna_processor_lr.desktop': <{'position': <7>}>, 'in.lsp_plug.lsp_plugins_sc_dyna_processor_lr.desktop': <{'position': <8>}>, 'in.lsp_plug.lsp_plugins_expander_lr.desktop': <{'position': <9>}>, 'in.lsp_plug.lsp_plugins_gate_lr.desktop': <{'position': <10>}>, 'in.lsp_plug.lsp_plugins_sc_compressor_lr.desktop': <{'position': <11>}>, 'in.lsp_plug.lsp_plugins_sc_expander_lr.desktop': <{'position': <12>}>, 'in.lsp_plug.lsp_plugins_sc_gate_lr.desktop': <{'position': <13>}>, 'in.lsp_plug.lsp_plugins_sc_mb_compressor_lr.desktop': <{'position': <14>}>, 'in.lsp_plug.lsp_plugins_multisampler_x12.desktop': <{'position': <15>}>, 'in.lsp_plug.lsp_plugins_graph_equalizer_x16_stereo.desktop': <{'position': <16>}>, 'in.lsp_plug.lsp_plugins_para_equalizer_x16_stereo.desktop': <{'position': <17>}>, 'in.lsp_plug.lsp_plugins_multisampler_x24.desktop': <{'position': <18>}>, 'in.lsp_plug.lsp_plugins_graph_equalizer_x32_stereo.desktop': <{'position': <19>}>, 'in.lsp_plug.lsp_plugins_para_equalizer_x32_stereo.desktop': <{'position': <20>}>, 'in.lsp_plug.lsp_plugins_multisampler_x48.desktop': <{'position': <21>}>, 'in.lsp_plug.lsp_plugins_profiler_stereo.desktop': <{'position': <22>}>, 'in.lsp_plug.lsp_plugins_trigger_stereo.desktop': <{'position': <23>}>}, {'in.lsp_plug.lsp_plugins_compressor_stereo.desktop': <{'position': <0>}>, 'in.lsp_plug.lsp_plugins_impulse_reverb_stereo.desktop': <{'position': <1>}>, 'in.lsp_plug.lsp_plugins_crossover_stereo.desktop': <{'position': <2>}>, 'in.lsp_plug.lsp_plugins_comp_delay_stereo.desktop': <{'position': <3>}>, 'in.lsp_plug.lsp_plugins_dyna_processor_stereo.desktop': <{'position': <4>}>, 'in.lsp_plug.lsp_plugins_sc_dyna_processor_stereo.desktop': <{'position': <5>}>, 'in.lsp_plug.lsp_plugins_expander_stereo.desktop': <{'position': <6>}>, 'in.lsp_plug.lsp_plugins_gate_stereo.desktop': <{'position': <7>}>, 'in.lsp_plug.lsp_plugins_impulse_responses_stereo.desktop': <{'position': <8>}>, 'in.lsp_plug.lsp_plugins_limiter_stereo.desktop': <{'position': <9>}>, 'in.lsp_plug.lsp_plugins_loud_comp_stereo.desktop': <{'position': <10>}>, 'in.lsp_plug.lsp_plugins_sampler_stereo.desktop': <{'position': <11>}>, 'in.lsp_plug.lsp_plugins_trigger_midi_stereo.desktop': <{'position': <12>}>, 'in.lsp_plug.lsp_plugins_mb_compressor_stereo.desktop': <{'position': <13>}>, 'in.lsp_plug.lsp_plugins_mb_expander_stereo.desktop': <{'position': <14>}>, 'in.lsp_plug.lsp_plugins_mb_gate_stereo.desktop': <{'position': <15>}>, 'in.lsp_plug.lsp_plugins_sc_mb_expander_stereo.desktop': <{'position': <16>}>, 'in.lsp_plug.lsp_plugins_sc_mb_gate_stereo.desktop': <{'position': <17>}>, 'in.lsp_plug.lsp_plugins_room_builder_stereo.desktop': <{'position': <18>}>, 'in.lsp_plug.lsp_plugins_sc_expander_stereo.desktop': <{'position': <19>}>, 'in.lsp_plug.lsp_plugins_sc_gate_stereo.desktop': <{'position': <20>}>, 'in.lsp_plug.lsp_plugins_sc_limiter_stereo.desktop': <{'position': <21>}>, 'in.lsp_plug.lsp_plugins_sc_mb_compressor_stereo.desktop': <{'position': <22>}>, 'in.lsp_plug.lsp_plugins_slap_delay_stereo.desktop': <{'position': <23>}>}, {'in.lsp_plug.lsp_plugins_surge_filter_stereo.desktop': <{'position': <0>}>, 'in.lsp_plug.lsp_plugins_sc_compressor_stereo.desktop': <{'position': <1>}>, 'systemback.desktop': <{'position': <2>}>, 'in.lsp_plug.lsp_plugins_spectrum_analyzer_x2.desktop': <{'position': <3>}>, 'debian-uxterm.desktop': <{'position': <4>}>, 'debian-xterm.desktop': <{'position': <5>}>}]
remember-mount-password=false
enabled-extensions=['mediaplayer@patapon.info', 'ubuntu-dock@ubuntu.com', 'GPaste@gnome-shell-extensions.gnome.org', 'gnomenu@panacier.gmail.com', 'popthemetoggle@kylecorry31.github.io', 'auto-ovpn@yahoo.com', 'printers@linux-man.org', 'openweather-extension@jenslody.de', 'sound-output-device-chooser@kgshank.net', 'bettervolume@tudmotu.com', 'dash-to-dock@micxgx.gmail.com', 'suspend-button@laserb', 'TilixDropdown@ivkuzev@gmail.com', 'system-monitor@paradoxxx.zero.gmail.com', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'apps-menu@gnome-shell-extensions.gcampax.github.com', 'impatience@gfxmonk.net', 'ubuntu-appindicators@ubuntu.com', 'hidetopbar@mathieu.bidon.ca', 'CoverflowAltTab@palatis.blogspot.com', 'compiz-alike-magic-lamp-effect@hermes83.github.com', 'disconnect-wifi@kgshank.net']
disabled-extensions=['appindicatorsupport@rgcjonas.gmail.com', 'pop-shell@system76.com', 'dash-to-dock@micxgx.gmail.com', 'unite@hardpixel.eu', 'arcmenu@arcmenu.com', 'ding@rastersoft.com', 'desktop-icons@csoriano', 'dash-to-panel@jderose9.github.com']
had-bluetooth-devices-setup=true

[org/gnome/shell/overrides]
attach-modal-dialogs=true

[org/gnome/shell/extensions/user-theme]
name='Pop'

[org/gnome/shell/extensions/dash-to-dock]
multi-monitor=false
dock-fixed=false
apply-custom-theme=false
icon-size-fixed=false
dock-position='LEFT'
height-fraction=0.90000000000000002
custom-theme-shrink=true
background-color='#02000e'
extend-height=false
dash-max-icon-size=34
custom-background-color=true
preferred-monitor=0
background-opacity=0.60999999999999999
transparency-mode='FIXED'

[org/gnome/shell/extensions/PulseAudioShortcuts]
label-menu='PulseAudio Shortcuts'

[org/gnome/shell/extensions/desktop-icons]
show-computer-visible=true
show-home=false
show-trash=false
icon-size='small'
computer-icon-visible=true

[org/gnome/shell/extensions/hidetopbar]
enable-active-window=true
enable-intellihide=true
hot-corner=false
mouse-triggers-overview=false
mouse-sensitive-fullscreen-window=false
mouse-sensitive=true
shortcut-toggles=true

[org/gnome/shell/extensions/coverflowalttab]
elastic-mode=true
switcher-style='Coverflow'

[org/gnome/shell/extensions/gnomenu]
hide-panel-menu=false
disable-panel-menu-keyboard=true
apps-grid-icon-size=48
apps-list-icon-size=24
hide-panel-apps=true
startup-view-mode='Grid'
panel-apps-label-text=['Приложения']
disable-activities-hotcorner=false
apps-grid-label-width=64
use-panel-menu-icon=true
shortcuts-icon-size=32
hide-panel-view=true
panel-menu-label-text=['Меню']
disable-panel-menu-hotspot=false
panel-view-label-text=['Обзор']
menu-layout='Normal'
use-panel-view-icon=false

[org/gnome/shell/extensions/EasyScreenCast]
quality-webcam=''
file-container=0
file-resolution-width=640
active-custom-gsp=false
file-resolution-height=480
pipeline='vp9enc min_quantizer=0 max_quantizer=5 cpu-used=3 deadline=1000000 threads=%T ! queue max-size-buffers=0 max-size-time=0 max-size-bytes=0 ! webmmux'

[org/gnome/shell/extensions/openweather]
use-default-owm-key=true
pressure-unit='inHg'
geolocation-provider='openstreetmaps'
unit='fahrenheit'
position-in-panel='left'
show-comment-in-forecast=true
show-text-in-panel=true
decimal-places=1
translate-condition=true
use-symbolic-icons=true
days-forecast=2
weather-provider='openweathermap'
wind-speed-unit='mph'
wind-direction=true

[org/gnome/shell/extensions/ncom/github/hermes83/compiz-alike-magic-lamp-effect]
y-tiles=50.0
effect='sine'
duration=814.0
x-tiles=19.0

[org/gnome/shell/extensions/printers]
show-jobs=true
show-icon='When printers exist'
job-number=true
connect-to='system-config-printer'
show-error=true

[org/gnome/shell/extensions/auto-ovpn]
compact-mode=false
wifi-mode=false

[org/gnome/shell/extensions/dash-to-panel]
trans-use-custom-bg=true
hot-keys=false
panel-size=48
location-clock='STATUSLEFT'
force-check-update=true
panel-position='TOP'
trans-use-custom-opacity=false
hotkeys-overlay-combo='TEMPORARILY'
stockgs-force-hotcorner=false
stockgs-keep-dash=true
taskbar-position='LEFTPANEL'
stockgs-panelbtn-click-only=false
intellihide=true
show-running-apps=true
trans-bg-color='#126078'

[org/gnome/shell/extensions/onboard-indicator]
schema-version='1.0'

[org/gnome/shell/extensions/system-monitor]
swap-graph-width=5
gpu-show-text=false
gpu-graph-width=5
compact-display=true
net-display=false
memory-show-menu=true
battery-show-text=true
net-show-menu=true
swap-show-menu=true
disk-show-menu=true
cpu-graph-width=5
background='#3e0076ff'
show-tooltip=false
thermal-graph-width=5
net-graph-width=5
battery-display=false
center-display=false
fan-graph-width=5
move-clock=false
freq-graph-width=5
gpu-show-menu=true
memory-graph-width=5
gpu-display=false
memory-show-text=false
cpu-show-menu=true
net-show-text=false
swap-show-text=false
disk-graph-width=5
disk-show-text=false
memory-display=false
battery-show-menu=true
thermal-show-menu=true
cpu-individual-cores=true
freq-show-menu=true
fan-show-text=false
cpu-show-text=false
battery-graph-width=5
cpu-display=false
thermal-show-text=false

[org/gnome/shell/window-switcher]
app-icon-mode='both'

[org/gnome/shell/weather]
locations=@av []
automatic-location=true

[org/gnome/mutter]
experimental-features=['x11-randr-fractional-scaling', 'scale-monitor-framebuffer']
attach-modal-dialogs=true
center-new-windows=false
dynamic-workspaces=true
edge-tiling=true

[org/gnome/metacity]
compositing-manager=false

[org/gnome/vinagre]
show-accels=false

[org/gnome/terminal/legacy]
schema-version=uint32 3
theme-variant='dark'

[org/gnome/terminal/legacy/profiles:]
list=['b1dcc9dd-5262-4d8d-a863-c897e6d979b9', '1879a64f-247b-4bfe-8529-fc6425b08b8a', '7fc9d712-165e-4ae8-9bf1-639fc99f92de', 'f4631098-7198-4ab9-9ab6-7375d697048f', 'fb2e59da-4dcf-45d4-869f-0ee52c75b573']
default='7fc9d712-165e-4ae8-9bf1-639fc99f92de'

[org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9]
bold-is-bright=false
foreground-color='rgb(0,255,0)'
default-size-columns=80
cursor-background-color='rgb(165,116,34)'
palette=['rgb(0,0,0)', 'rgb(170,0,0)', 'rgb(0,170,0)', 'rgb(170,85,0)', 'rgb(0,0,170)', 'rgb(170,0,170)', 'rgb(0,170,170)', 'rgb(170,170,170)', 'rgb(85,85,85)', 'rgb(255,85,85)', 'rgb(85,255,85)', 'rgb(255,255,85)', 'rgb(85,85,255)', 'rgb(255,85,255)', 'rgb(85,255,255)', 'rgb(255,255,255)']
cursor-colors-set=true
bold-color-same-as-fg=true
use-system-font=false
background-color='rgb(68,69,67)'
highlight-colors-set=true
font='Monospace Bold 12'
use-theme-colors=true
highlight-background-color='rgb(184,116,20)'
visible-name='By Griggorii_2'

[org/gnome/terminal/legacy/profiles:/:1879a64f-247b-4bfe-8529-fc6425b08b8a]
bold-color='rgb(72,0,79)'
bold-color-same-as-fg=false
highlight-foreground-color='rgb(46,0,156)'
cursor-foreground-color='rgb(254,210,76)'
use-transparent-background=false
background-color='rgb(57,54,52)'
cursor-colors-set=true
visible-name='By Griggorii'
use-theme-colors=false
font='Monospace Bold 12'
use-system-font=false
cursor-background-color='rgb(0,86,138)'
palette=['rgb(0,0,0)', 'rgb(170,0,0)', 'rgb(6,151,6)', 'rgb(170,85,0)', 'rgb(0,0,170)', 'rgb(214,109,6)', 'rgb(6,121,180)', 'rgb(170,170,170)', 'rgb(85,85,85)', 'rgb(255,85,85)', 'rgb(85,255,85)', 'rgb(255,255,85)', 'rgb(85,85,255)', 'rgb(255,85,255)', 'rgb(6,121,180)', 'rgb(255,255,255)']
highlight-background-color='rgb(53,127,20)'
foreground-color='rgb(132,200,7)'
bold-is-bright=false
highlight-colors-set=true
use-theme-transparency=false

[org/gnome/terminal/legacy/profiles:/:7fc9d712-165e-4ae8-9bf1-639fc99f92de]
bold-color='rgb(72,0,79)'
bold-color-same-as-fg=false
highlight-foreground-color='rgb(46,0,156)'
cursor-foreground-color='rgb(254,210,76)'
use-transparent-background=false
background-color='rgb(57,54,52)'
cursor-colors-set=true
visible-name='By Griggorii_3'
use-theme-colors=false
font='Monospace Bold 12'
use-system-font=false
cursor-background-color='rgb(0,86,138)'
palette=['rgb(0,0,0)', 'rgb(170,0,0)', 'rgb(0,170,0)', 'rgb(170,85,0)', 'rgb(0,0,170)', 'rgb(170,0,170)', 'rgb(0,170,170)', 'rgb(170,170,170)', 'rgb(85,85,85)', 'rgb(255,85,85)', 'rgb(85,255,85)', 'rgb(255,255,85)', 'rgb(85,85,255)', 'rgb(255,85,255)', 'rgb(85,255,255)', 'rgb(255,255,255)']
highlight-background-color='rgb(80,255,0)'
foreground-color='rgb(19,123,126)'
bold-is-bright=false
highlight-colors-set=true
use-theme-transparency=false

[org/gnome/terminal/legacy/profiles:/:a9ad44fb-657c-493b-80af-3ec223cf944b]
background-color='rgb(238,238,236)'
foreground-color='rgb(46,52,54)'
use-theme-colors=true
use-system-font=false
visible-name='gnome'

[org/gnome/terminal/legacy/profiles:/:fb2e59da-4dcf-45d4-869f-0ee52c75b573]
bold-color='rgb(72,0,79)'
bold-color-same-as-fg=false
highlight-foreground-color='rgb(46,0,156)'
cursor-foreground-color='rgb(254,210,76)'
use-transparent-background=false
background-color='rgb(46,52,54)'
cursor-colors-set=true
visible-name='By Griggorii_5'
use-theme-colors=false
font='Monospace Bold 12'
use-system-font=false
cursor-background-color='rgb(0,86,138)'
background-transparency-percent=49
palette=['rgb(46,52,54)', 'rgb(204,0,0)', 'rgb(83,154,12)', 'rgb(196,160,0)', 'rgb(0,15,122)', 'rgb(117,80,123)', 'rgb(6,152,154)', 'rgb(211,215,207)', 'rgb(85,87,83)', 'rgb(239,41,41)', 'rgb(226,52,52)', 'rgb(252,233,79)', 'rgb(114,159,207)', 'rgb(173,127,168)', 'rgb(52,226,226)', 'rgb(238,238,236)']
highlight-background-color='rgb(80,255,0)'
foreground-color='rgb(211,215,207)'
bold-is-bright=false
highlight-colors-set=true
use-theme-transparency=false

[org/gnome/terminal/legacy/profiles:/:f4631098-7198-4ab9-9ab6-7375d697048f]
bold-color='rgb(72,0,79)'
bold-color-same-as-fg=false
highlight-foreground-color='rgb(46,0,156)'
cursor-foreground-color='rgb(254,210,76)'
use-transparent-background=false
background-color='rgb(255,255,221)'
cursor-colors-set=true
visible-name='By Griggorii_4'
use-theme-colors=false
font='Monospace Bold 12'
use-system-font=false
cursor-background-color='rgb(0,86,138)'
palette=['rgb(0,0,0)', 'rgb(170,0,0)', 'rgb(6,151,6)', 'rgb(170,85,0)', 'rgb(0,0,170)', 'rgb(214,109,6)', 'rgb(6,121,180)', 'rgb(170,170,170)', 'rgb(85,85,85)', 'rgb(255,85,85)', 'rgb(85,255,85)', 'rgb(255,255,85)', 'rgb(85,85,255)', 'rgb(255,85,255)', 'rgb(6,121,180)', 'rgb(255,255,255)']
highlight-background-color='rgb(53,127,20)'
foreground-color='rgb(0,0,0)'
bold-is-bright=false
highlight-colors-set=true
use-theme-transparency=false

[org/gnome/gnome-system-monitor]
disks-interval=5000
show-all-fs=false
network-in-bits=false
update-interval=3000
show-whose-processes='user'
window-state=(818, 497, 34, 28)
cpu-stacked-area-chart=false
current-tab='resources'
maximized=false
graph-update-interval=1000
show-dependencies=false

[org/gnome/gnome-system-monitor/disktreenew]
col-0-visible=true
col-6-visible=true
col-1-width=244
col-2-width=94
columns-order=[0, 1, 2, 3, 4, 5, 6]
col-2-visible=true
col-0-width=127
col-6-width=0
col-1-visible=true
sort-col=2
sort-order=0

[org/gnome/gnome-system-monitor/memmapstree]
sort-order=0
sort-col=0

[org/gnome/gnome-system-monitor/proctree]
sort-order=0
sort-col=15
col-0-width=322
col-2-width=37
col-0-visible=true
col-2-visible=false
columns-order=[0, 1, 2, 3, 4, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26]

[org/gnome/gnote]
search-window-splitter-pos=150
main-window-maximized=false
search-window-height=400
search-window-width=723
start-note='note://gnote/b0f59207-cdb1-407c-a97b-3648db7a9335'

[org/gnome/gitg/preferences/interface]
orientation='vertical'
enable-monitoring=true

[org/gnome/gitg/preferences/commit/message]
enable-spell-checking=true
spell-checking-language=''

[org/gnome/gitg/preferences/history]
reference-sort-order='last-activity'
default-selection='current-branch'

[org/gnome/gitg/preferences/main]
clone-directory=''

[org/gnome/gitg/state/commit]
paned-sidebar-position=561
sign-off=true

[org/gnome/gitg/state/history]
paned-sidebar-position=200
paned-panels-position=399

[org/gnome/gitg/state/window]
size=(1150, 633)
state=128

[org/gnome/evolution/calendar]
primary-tasks='system-task-list'
task-vpane-position=329
work-day-tuesday=true
recur-events-italic=false
primary-calendar='system-calendar'
memo-vpane-position=329
use-24hour-format=true
allow-direct-summary-edit=false
week-start-day-name='monday'
work-day-monday=true
work-day-saturday=false
work-day-sunday=false
date-navigator-pane-position=159
confirm-purge=true
prefer-new-item=''
work-day-wednesday=true
time-divisions=30
work-day-thursday=true
work-day-friday=true
hpane-position=301
primary-memos='system-memo-list'
tag-vpane-position=0.016853932584269704

[org/gnome/evolution/addressbook]
vpane-position=354

[org/gnome/evolution]
default-task-list='system-task-list'
version='3.32.1'
default-calendar='system-calendar'

[org/gnome/evolution/bogofilter]
command=''
utf8-for-spam-filter=true

[org/gnome/evolution/shell/window]
width=1024
y=0
maximized=true
height=577
x=0

[org/gnome/evolution/shell]
attachment-view=0
menubar-visible=true
folder-bar-width=231
sidebar-visible=true
statusbar-visible=true
default-component-id='calendar'
buttons-visible=true
toolbar-visible=true

[org/gnome/evolution/mail]
forward-style-name='attached'
show-headers=[('From', true), ('Reply-To', true), ('To', true), ('Cc', true), ('Bcc', true), ('Subject', true), ('Date', true), ('Newsgroups', true), ('Face', true), ('x-evolution-mailer', false)]
browser-close-on-reply-policy='ask'
junk-check-custom-header=true
headers=['<?xml version="1.0"?>\n<header name="From" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Reply-To" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="To" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Cc" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Bcc" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Subject" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Date" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Newsgroups" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="Face" enabled=""/>\n', '<?xml version="1.0"?>\n<header name="x-evolution-mailer"/>\n']
junk-check-incoming=true
reply-style-name='quoted'
junk-empty-on-exit-days=0
paned-size=1073033
junk-lookup-addressbook=false
to-do-bar-width=1150000
image-loading-policy='never'
search-gravatar-for-photo=false
trash-empty-on-exit-days=0

[org/gnome/control-center]
last-panel='info-overview'

[org/gnome/boxes]
window-maximized=false
window-size=[894, 548]
window-position=[34, 28]
first-run=false
view='icon-view'

[org/gnome/gnome-screenshot]
include-pointer=false
include-border=true
delay=1
last-save-directory=''
border-effect='none'

[org/gnome/libgnomekbd/preview]
width=1049
y=96
height=459
x=170

[org/gnome/libgnomekbd/desktop]
load-extra-items=true

[org/gnome/libgnomekbd/keyboard]
layouts=['us', 'ru']
options=['grp\tgrp:alt_shift_toggle']

[org/gnome/cheese]
camera='HD WebCam: HD WebCam'
selected-effect='Без эффектов'
video-x-resolution=640
burst-delay=1000
video-y-resolution=480
photo-x-resolution=640
photo-y-resolution=480

[org/gnome/nautilus/compression]
default-compression-format='zip'

[org/gnome/nautilus/icon-view]
default-zoom-level='small'
thumbnail-size=64

[org/gnome/nautilus/desktop]
volumes-visible=false
trash-icon-name='Trash'
home-icon-visible=false
network-icon-visible=false
trash-icon-visible=false

[org/gnome/nautilus/window-state]
sidebar-width=218
start-with-sidebar=true
initial-size=(854, 502)
geometry='811x460+310+161'
maximized=false

[org/gnome/nautilus/preferences]
search-filter-time-type='last_modified'
show-image-thumbnails='local-only'
recursive-search='never'
default-sort-in-reverse-order=true
list-view-on-search=false
confirm-trash=true
search-view='icon-view'
thumbnail-limit=uint64 100
click-policy='single'
show-create-link=true
show-directory-item-counts='always'
executable-text-activation='display'
show-delete-permanently=false
use-experimental-views=false
fts-enabled=true
default-folder-viewer='icon-view'

[org/gnome/nautilus/list-view]
default-zoom-level='standard'
use-tree-view=false
default-visible-columns=['name', 'size', 'date_modified']
default-column-order=['name', 'size', 'type', 'owner', 'group', 'permissions', 'where', 'date_modified', 'date_modified_with_time', 'date_accessed', 'recency', 'detailed_type', 'starred']

[org/gnome/calculator]
source-currency=''
source-units='degree'
button-mode='basic'
word-size=64
show-zeroes=false
base=10
angle-units='degrees'
accuracy=9
show-thousands=false
window-position=(34, 28)
refresh-interval=604800
target-units='radian'
number-format='automatic'
target-currency=''

[org/gnome/devhelp/state/main/contents]
group-books-by-language=false

[org/gnome/gthumb/data-migration]
catalogs-2-10=true

[org/gnome/gthumb/crop]
grid-type='thirds'
aspect-ratio-invert=false
aspect-ratio-width=1
bind-factor=8
aspect-ratio='none'
aspect-ratio-height=1
bind-dimensions=false

[org/gnome/gthumb/photo-importer]
delete-from-device=false

[org/gnome/gthumb/general]
active-extensions=['23hq', 'bookmarks', 'burn_disc', 'catalogs', 'change_date', 'comments', 'contact_sheet', 'convert_format', 'desktop_background', 'edit_metadata', 'exiv2_tools', 'facebook', 'file_manager', 'find_duplicates', 'flicker', 'gstreamer_tools', 'gstreamer_utils', 'image_print', 'image_rotation', 'importer', 'jpeg_utils', 'list_tools', 'oauth', 'photo_importer', 'photobucket', 'picasaweb', 'raw_files', 'red_eye_removal', 'rename_series', 'resize_images', 'search', 'selections', 'slideshow', 'webalbums']
store-metadata-in-files=true

[org/gnome/gthumb/browser]
thumbnail-list-size=0
sort-type='file::mtime'
statusbar-visible=true
sidebar-sections=['GthFileProperties:expanded', 'GthFileComment:expanded', 'GthFileDetails:expanded', 'GthImageHistogram:expanded']
thumbnail-list-visible=true
startup-location=''
maximized=false
properties-visible=false
fullscreen-sidebar='hidden'
sort-inverse=false
viewer-sidebar='hidden'
use-startup-location=false
sidebar-visible=true
startup-current-file=''
fullscreen-thumbnails-visible=false
go-to-last-location=true

[org/gnome/gthumb/resize]
high-quality=true
unit='percentage'
width=100.0
aspect-ratio-height=100
aspect-ratio-width=239
aspect-ratio-invert=true
height=74.479164123535156
aspect-ratio='239x100'

[org/gnome/gthumb/pixbuf-savers/webp]
method=4
lossless=false
quality=75

[org/gnome/gthumb/pixbuf-savers/png]
compression-level=6

[org/gnome/gthumb/pixbuf-savers/tiff]
compression='deflate'
horizontal-resolution=72
vertical-resolution=72
default-ext='tiff'

[org/gnome/gthumb/pixbuf-savers/jpeg]
optimize=true
progressive=false
quality=85
smoothing=0
default-ext='jpeg'

[org/gnome/gthumb/pixbuf-savers/tga]
rle-compression=true

[org/gnome/gthumb/image-viewer]
histogram-scale='linear'

[org/gnome/gthumb/image-print]
header-font-name='Sans Bold 12'
unit='pixels'
font-name='Sans 12'
n-columns=1
footer=''
footer-font-name='Sans 8'
header=''
n-rows=1

[org/gnome/logs]
ignore-warning=true

[org/gnome/system/location]
enabled=false

[org/gnome/eog/view]
background-color='rgb(0,0,0)'
use-background-color=true

[org/gnome/eog/plugins]
active-plugins=['fullscreen']

[org/gnome/deja-dup/openstack]
container='GriggoriiX64'

[org/gnome/deja-dup/file]
path='file:///'
migrated=true

[org/gnome/deja-dup]
backend=''
prompt-check=''

[org/gnome/deja-dup/rackspace]
container='GriggoriiX64'

[org/gnome/deja-dup/gcs]
folder='GriggoriiX64'

[org/gnome/deja-dup/goa]
type=''

[org/gnome/deja-dup/gdrive]
folder='/deja-dup/GriggoriiX64'

[org/gnome/deja-dup/s3]
folder='GriggoriiX64'

[org/gnome/builder]
follow-night-light=false
window-position=(0, 0)
window-maximized=true
night-mode=true
window-size=(1366, 726)

[org/gnome/builder/editor/language/python]
tab-width=4
insert-spaces-instead-of-tabs=true
insert-matching-brace=true
overwrite-braces=true

[org/gnome/builder/editor/language/cpp]
tab-width=4
auto-indent=true
insert-spaces-instead-of-tabs=true
insert-trailing-newline=true
insert-matching-brace=true
overwrite-braces=true

[org/gnome/builder/editor/language/desktop]
right-margin-position=80
tab-width=8

[org/gnome/builder/editor/language/automake]
insert-spaces-instead-of-tabs=false
tab-width=8

[org/gnome/builder/editor/language/c]
spaces-style=['before-left-paren']
auto-indent=true
insert-spaces-instead-of-tabs=true
insert-trailing-newline=true
insert-matching-brace=true
overwrite-braces=true
tab-width=2

[org/gnome/builder/editor/language/python3]
tab-width=4
insert-spaces-instead-of-tabs=true
insert-matching-brace=true
overwrite-braces=true

[org/gnome/builder/editor/language/c-sharp]
spaces-style=['before-left-paren']
insert-spaces-instead-of-tabs=false
insert-matching-brace=true
overwrite-braces=true
tab-width=8

[org/gnome/builder/editor/language/html]
tab-width=2
insert-spaces-instead-of-tabs=true
insert-matching-brace=true
overwrite-braces=true

[org/gnome/builder/editor/language/markdown]
trim-trailing-whitespace=false
insert-spaces-instead-of-tabs=true
tab-width=4

[org/gnome/builder/editor/language/css]
tab-width=2
insert-spaces-instead-of-tabs=true
insert-matching-brace=true
overwrite-braces=true

[org/gnome/builder/editor/language/rust]
tab-width=4
insert-spaces-instead-of-tabs=true
insert-matching-brace=true
overwrite-braces=true

[org/gnome/builder/editor/language/makefile]
insert-spaces-instead-of-tabs=false
tab-width=8

[org/gnome/builder/editor/language/ruby]
tab-width=2
insert-spaces-instead-of-tabs=true
insert-matching-brace=true
overwrite-braces=true

[org/gnome/builder/editor/language/js]
tab-width=2
insert-spaces-instead-of-tabs=true
insert-matching-brace=true
overwrite-braces=true

[org/gnome/builder/editor/language/xml]
tab-width=2
auto-indent=true
insert-spaces-instead-of-tabs=true
insert-matching-brace=true
overwrite-braces=true

[org/gnome/builder/editor/language/vala]
tab-width=4
insert-spaces-instead-of-tabs=true
insert-matching-brace=true
overwrite-braces=true

[org/gnome/builder/editor/language/chdr]
spaces-style=['before-left-paren']
auto-indent=true
insert-spaces-instead-of-tabs=true
insert-trailing-newline=true
insert-matching-brace=true
overwrite-braces=true
tab-width=2

[org/gnome/builder/editor]
show-grid-lines=false
minimum-word-size=2
style-scheme-name='cobalt'
overscroll=10
auto-save-timeout=60
draw-spaces=['space', 'tab', 'newline', 'nbsp', 'leading', 'trailing']
keybindings='default'

[org/gnome/builder/project-tree]
show-ignored-files=false
show-icons=true

[org/gnome/builder/projects/GNOME-Boxes]
config-id='org.gnome.Boxes.json'

[org/gnome/builder/workbench]
left-visible=true
bottom-position=200
bottom-visible=true
right-position=250
left-position=250
right-visible=true

[org/gnome/builder/build]
parallel=-1
allow-network-when-metered=true

[org/gnome/file-roller/ui]
sidebar-width=200
window-width=837
view-sidebar=true
window-height=472

[org/gnome/file-roller/file-selector]
sidebar-size=168
window-size=(840, 721)
show-hidden=false

[org/gnome/file-roller/dialogs/add]
current-folder=''
exclude-folders=''
no-symlinks=true
update=false
selected-files=['']
exclude-files=''
include-files='*'

[org/gnome/file-roller/dialogs/extract]
skip-newer=false
recreate-folders=true

[org/gnome/file-roller/dialogs/new]
default-extension='.tar.xz'
volume-size=0
encrypt-header=false

[org/gnome/file-roller/listing]
sort-method='name'
sort-type='ascending'
list-mode='as-folder'
name-column-width=285
show-path=false

[org/gnome/baobab/ui]
window-size=(850, 481)
active-chart='rings'
window-state=87168

[org/gnome/calendar]
window-size=(1366, 722)
weather-settings=(true, false, '', @mv nothing)
window-position=(0, 0)
active-view='month'
window-maximized=true

[org/gnome/evince/default]
window-ratio=(0.99123013339605515, 0.8562945368171021)

[org/gnome/power-manager]
info-stats-type='discharge-accuracy'
info-page-number=0
info-history-time=604800
info-history-type='charge'
info-last-device='/org/freedesktop/UPower/devices/line_power_ACAD'

[org/gnome/simple-scan]
document-type='photo'

[org/compiz]
existing-profiles=['Default', 'unity', 'unity-lowgfx']
current-profile='unity'

[org/compiz/integrated]
run-command-5=['disabled']
run-command-11=['disabled']
run-command-4=['disabled']
run-command-10=['disabled']
command-window-screenshot='gnome-screenshot --window'
run-command-3=['disabled']
display-all-workspaces=false
run-command-2=['disabled']
run-command-1=['disabled']
run-command-7=['disabled']
run-command-8=['disabled']
run-command-6=['disabled']
run-command-12=['disabled']
show-hud=['<Alt>']
run-command-9=['disabled']

[org/compiz/profiles/unity-lowgfx/plugins/thumbnail]
font-background-color='#0000007f'
thumb-color='#0000007f'

[org/compiz/profiles/unity-lowgfx/plugins/decor]
inactive-shadow-color='#000000ff'
active-shadow-color='#00000080'

[org/compiz/profiles/unity-lowgfx/plugins/opengl]
texture-filter=0

[org/compiz/profiles/unity-lowgfx/plugins/ezoom]
zoom-box-fill-color='#2f2f2f4f'
spec-target-focus=false
zoom-box-outline-color='#2f2f4f9f'
speed=100.0

[org/compiz/profiles/unity-lowgfx/plugins/core]
hsize=4
outputs=['1366x768+0+0']
vsize=4
active-plugins=['core', 'composite', 'opengl', 'place', 'regex', 'resize', 'session', 'snap', 'vpswitch', 'wall', 'workarounds', 'compiztoolbox', 'copytex', 'fade', 'grid', 'imgpng', 'mousepoll', 'move', 'scale', 'unitymtgrabhandles', 'expo', 'ezoom', 'unityshell']

[org/compiz/profiles/unity-lowgfx/plugins/wall]
arrow-base-color='#e6e6e6d9'
slide-duration=0.0
arrow-shadow-color='#dcdcdcd9'
thumb-highlight-gradient-shadow-color='#dfdfdfff'

[org/compiz/profiles/unity-lowgfx/plugins/scale]
skip-animation=true

[org/compiz/profiles/unity-lowgfx/plugins/staticswitcher]
background-color='#333333d9'

[org/compiz/profiles/unity-lowgfx/plugins/animationplus]
bonanza-color='#ff3305ff'

[org/compiz/profiles/unity-lowgfx/plugins/expo]
ground-color2='#b3b3b300'
expo-animation=3
ground-color1='#b3b3b3cc'
x-offset=50

[org/compiz/profiles/unity-lowgfx/plugins/cubeaddon]
ground-color2='#b3b3b300'
ground-color1='#b3b3b3cc'

[org/compiz/profiles/unity-lowgfx/plugins/animation]
unminimize-effects=['animation:Glide 2']
open-matches=['((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver)', '((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=.exe$))', '(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd)']
close-matches=['((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver) & !(name=gnome-screenshot)', '((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=.exe$))', '(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd)']

[org/compiz/profiles/unity-lowgfx/plugins/switcher]
background-color='#333333d9'

[org/compiz/profiles/unity-lowgfx/plugins/firepaint]
fire-color='#ff3305ff'

[org/compiz/profiles/unity-lowgfx/plugins/showmouse]
color='#ffdf3fff'

[org/compiz/profiles/unity-lowgfx/plugins/animationaddon]
fire-color='#ff3305ff'
beam-color='#7f7f7fff'

[org/compiz/profiles/unity-lowgfx/plugins/fade]
fade-mode=1
fade-time=1

[org/compiz/profiles/unity-lowgfx/plugins/move]
mode=2
increase-border-contrast=true
lazy-positioning=true

[org/compiz/profiles/unity-lowgfx/plugins/resizeinfo]
gradient-2='#f3f3f3cc'
outline-color='#e6e6e6ff'
gradient-1='#cccce6cc'
gradient-3='#d9d9d9cc'

[org/compiz/profiles/unity-lowgfx/plugins/composite]
refresh-rate=76

[org/compiz/profiles/unity-lowgfx/plugins/freewins]
line-color='#1800ffff'
cross-line-color='#1800ffff'
circle-color='#54befb80'
snap-threshold=50

[org/compiz/profiles/unity-lowgfx/plugins/gnomecompat]
run-key='Disabled'
main-menu-key='Disabled'

[org/compiz/profiles/unity-lowgfx/plugins/screenshot]
selection-fill-color='#2f2f4f4f'
selection-outline-color='#2f2f4f9f'

[org/compiz/profiles/unity-lowgfx/plugins/shift]
ground-color2='#b3b3b300'
ground-color1='#b3b3b3cc'

[org/compiz/profiles/unity-lowgfx/plugins/resize]
mode=2
increase-border-contrast=true

[org/compiz/profiles/unity-lowgfx/plugins/grid]
animation-duration=0
top-right-corner-action=10
draw-stretched-window=false

[org/compiz/profiles/unity-lowgfx/plugins/showdesktop]
skip-animation=true

[org/compiz/profiles/unity-lowgfx/plugins/unityshell]
icon-size=34
menus-fadeout=0
dash-blur-experimental=0
autohide-animation=1
shadow-x-offset=1
reveal-trigger=0
menus-discovery-fadein=0
menus-discovery-fadeout=0
inactive-shadow-radius=2
menus-fadein=0
override-decoration-theme=true
launcher-hide-mode=0
shadow-y-offset=1
inactive-shadow-color='#000000a5'
edge-responsiveness=4.3504586219787598
active-shadow-radius=3

[org/compiz/profiles/unity-lowgfx]
plugins-with-set-keys=['addhelper', 'unityshell', 'place', 'resize', 'water', 'animation', 'opengl', 'blur', 'session', 'unitymtgrabhandles', 'scaleaddon', 'commands', 'colorfilter', 'mousepoll', 'opacify', 'showrepaint', 'wall', 'fade', 'titleinfo', 'thumbnail', 'staticswitcher', 'shift', 'extrawm', 'wallpaper', 'freewins', 'wizard', 'maximumize', 'kdecompat', 'grid', 'mag', 'wobbly', 'resizeinfo', 'td', 'workspacenames', 'animationsim', 'decor', 'neg', 'crashhandler', 'snap', 'clone', 'ezoom', 'trailfocus', 'animationjc', 'winrules', 'annotate', 'ring', 'switcher', 'fadedesktop', 'firepaint', 'animationplus', 'shelf', 'splash', 'workarounds', 'matecompat', 'obs', 'imgjpeg', 'mblur', 'showmouse', 'scale', 'notification', 'bench', 'composite', 'animationaddon', 'cube', 'put', 'vpswitch', 'screenshot', 'move', 'cubeaddon', 'showdesktop', 'rotate', 'expo', 'scalefilter', 'widget', 'core', 'imgsvg']

[org/compiz/profiles/Default/plugins/decor]
inactive-shadow-color='#000000ff'
active-shadow-color='#00000080'

[org/compiz/profiles/Default/plugins/opengl]
texture-filter=0

[org/compiz/profiles/Default/plugins/wobbly]
focus-effect=1
map-effect=1

[org/compiz/profiles/Default/plugins/ezoom]
zoom-box-fill-color='#2f2f2f4f'
zoom-box-outline-color='#2f2f4f9f'

[org/compiz/profiles/Default/plugins/core]
active-plugins=['core', 'composite', 'opengl', 'compiztoolbox', 'decor', 'gnomecompat', 'imgpng', 'mousepoll', 'move', 'place', 'regex', 'resize', 'session', 'vpswitch', 'wobbly', 'animation', 'animationaddon', 'cube']

[org/compiz/profiles/Default/plugins/staticswitcher]
background-color='#333333d9'

[org/compiz/profiles/Default/plugins/animationplus]
bonanza-color='#ff3305ff'

[org/compiz/profiles/Default/plugins/expo]
ground-color2='#b3b3b300'
ground-color1='#b3b3b3cc'

[org/compiz/profiles/Default/plugins/cubeaddon]
ground-color2='#b3b3b300'
ground-color1='#b3b3b3cc'

[org/compiz/profiles/Default/plugins/animation]
unminimize-effects=['animation:Glide 2']
open-matches=['((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver)', '((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=.exe$))', '(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd)']
close-matches=['((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver) & !(name=gnome-screenshot)', '((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=.exe$))', '(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd)']

[org/compiz/profiles/Default/plugins/wall]
arrow-base-color='#e6e6e6d9'
arrow-shadow-color='#dcdcdcd9'
thumb-highlight-gradient-shadow-color='#dfdfdfff'

[org/compiz/profiles/Default/plugins/firepaint]
fire-color='#ff3305ff'

[org/compiz/profiles/Default/plugins/workarounds]
qt-fix=true
fglrx-xgl-fix=true
force-swap-buffers=true

[org/compiz/profiles/Default/plugins/animationaddon]
fire-color='#ff3305ff'
beam-color='#7f7f7fff'

[org/compiz/profiles/Default/plugins/switcher]
background-color='#333333d9'

[org/compiz/profiles/Default/plugins/resizeinfo]
gradient-2='#f3f3f3cc'
outline-color='#e6e6e6ff'
gradient-1='#cccce6cc'
gradient-3='#d9d9d9cc'

[org/compiz/profiles/Default/plugins/thumbnail]
font-background-color='#0000007f'
thumb-color='#0000007f'

[org/compiz/profiles/Default/plugins/freewins]
line-color='#1800ffff'
cross-line-color='#1800ffff'
circle-color='#54befb80'
snap-threshold=50

[org/compiz/profiles/Default/plugins/screenshot]
selection-fill-color='#2f2f4f4f'
selection-outline-color='#2f2f4f9f'

[org/compiz/profiles/Default/plugins/shift]
ground-color2='#b3b3b300'
ground-color1='#b3b3b3cc'

[org/compiz/profiles/Default/plugins/showmouse]
color='#ffdf3fff'

[org/compiz/profiles/Default/plugins/unityshell]
inactive-shadow-color='#000000a5'

[org/compiz/profiles/Default]
plugins-with-set-keys=['core', 'mousepoll', 'wall', 'move', 'switcher', 'session', 'decor', 'scale', 'opengl', 'composite', 'fade', 'place', 'ezoom', 'grid', 'snap', 'animation', 'resize', 'vpswitch', 'expo', 'workarounds', 'wizard', 'colorfilter', 'rotate', 'cube', 'unityshell', 'animationaddon', 'animationplus', 'bench', 'thumbnail', 'td', 'wobbly', 'notification']

[org/compiz/profiles/unity/plugins/thumbnail]
font-background-color='#0000007f'
thumb-color='#0000007f'

[org/compiz/profiles/unity/plugins/decor]
inactive-shadow-color='#000000ff'
active-shadow-color='#00000080'

[org/compiz/profiles/unity/plugins/opengl]
texture-filter=2

[org/compiz/profiles/unity/plugins/notification]
max-log-level=3

[org/compiz/profiles/unity/plugins/ezoom]
zoom-box-fill-color='#2f2f2f4f'
zoom-box-outline-color='#2f2f4f9f'

[org/compiz/profiles/unity/plugins/core]
hsize=4
outputs=['640x480+0+0']
vsize=4
active-plugins=['core', 'composite', 'opengl', 'place', 'regex', 'resize', 'session', 'shift', 'vpswitch', 'water', 'animation', 'blur', 'compiztoolbox', 'grid', 'imgpng', 'mousepoll', 'move', 'notification', 'wobbly', 'workarounds', 'fade', 'cube', 'gears', 'rotate', 'scale', 'td', 'cubeaddon', 'expo', 'ezoom', 'switcher', 'unityshell', 'ring']

[org/compiz/profiles/unity/plugins/staticswitcher]
background-color='#333333d9'

[org/compiz/profiles/unity/plugins/animationplus]
bonanza-color='#ff3305ff'

[org/compiz/profiles/unity/plugins/expo]
x-offset=50
ground-color2='#b3b3b300'
selected-color='#ab1751ff'
ground-color1='#b3b3b3cc'
distance=0.004999999888241291
expo-edge='TopLeft|BottomRight'
vp-saturation=40.0

[org/compiz/profiles/unity/plugins/cubeaddon]
ground-color2='#b3b3b300'
ground-color1='#b3b3b3cc'

[org/compiz/profiles/unity/plugins/animation]
unminimize-effects=['animation:Glide 2']
close-random-effects=@as []
close-matches=['((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver) & !(name=gnome-screenshot)', '((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=.exe$))', '(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd)']
open-matches=['((type=Normal | Unknown) | name=sun-awt-X11-XFramePeer | name=sun-awt-X11-XDialogPeer) & !(role=toolTipTip | role=qtooltip_label) & !(type=Normal & override_redirect=1) & !(name=gnome-screensaver)', '((type=Menu | PopupMenu | DropdownMenu | Combo | Dialog | ModalDialog | Normal) & !(class=.exe$))', '(type=Tooltip | Notification | Utility) & !(name=compiz) & !(title=notify-osd)']

[org/compiz/profiles/unity/plugins/blur]
gaussian-radius=15
pulse=true

[org/compiz/profiles/unity/plugins/firepaint]
fire-color='#ff3305ff'

[org/compiz/profiles/unity/plugins/wall]
arrow-base-color='#e6e6e6d9'
arrow-shadow-color='#dcdcdcd9'
thumb-highlight-gradient-shadow-color='#dfdfdfff'

[org/compiz/profiles/unity/plugins/animationaddon]
fire-color='#ff3305ff'
beam-color='#7f7f7fff'

[org/compiz/profiles/unity/plugins/scale]
initiate-all-edge=''
initiate-edge='TopRight'
overlay-icon=1
spacing=0

[org/compiz/profiles/unity/plugins/switcher]
background-color='#333333d9'

[org/compiz/profiles/unity/plugins/resizeinfo]
gradient-2='#f3f3f3cc'
outline-color='#e6e6e6ff'
gradient-1='#cccce6cc'
gradient-3='#d9d9d9cc'

[org/compiz/profiles/unity/plugins/composite]
refresh-rate=76

[org/compiz/profiles/unity/plugins/freewins]
line-color='#1800ffff'
cross-line-color='#1800ffff'
circle-color='#54befb80'
snap-threshold=50

[org/compiz/profiles/unity/plugins/gnomecompat]
run-key='Disabled'
main-menu-key='Disabled'

[org/compiz/profiles/unity/plugins/screenshot]
selection-fill-color='#2f2f4f4f'
selection-outline-color='#2f2f4f9f'

[org/compiz/profiles/unity/plugins/shift]
ground-color2='#b3b3b300'
initiate-key='<Control>Tab'
ground-color1='#b3b3b3cc'
prev-key='Disabled'

[org/compiz/profiles/unity/plugins/showmouse]
color='#ffdf3fff'

[org/compiz/profiles/unity/plugins/grid]
top-right-corner-action=10
fill-color='#0056ff4f'
outline-color='#3f0076ff'

[org/compiz/profiles/unity/plugins/unityshell]
menus-discovery-duration=2
icon-size=34
launcher-switcher-prev='Disabled'
launcher-hide-mode=0
num-launchers=0
panel-opacity-maximized-toggle=true
panel-opacity=0.0
background-color='#2e3436ff'
reveal-trigger=0
inactive-shadow-color='#000000a5'
edge-responsiveness=4.3504586219787598
alt-tab-bias-viewport=false
launcher-opacity=0.66600000858306885
launch-animation=1

[org/compiz/profiles/unity/plugins/water]
title-wave=true

[org/compiz/profiles/unity]
plugins-with-set-keys=['animationjc', 'blur', 'ezoom', 'td', 'switcher', 'animation', 'addhelper', 'animationplus', 'widget', 'screenshot', 'resize', 'showrepaint', 'vpswitch', 'splash', 'wizard', 'snap', 'ring', 'maximumize', 'animationsim', 'kdecompat', 'rotate', 'put', 'grid', 'titleinfo', 'resizeinfo', 'place', 'showdesktop', 'mag', 'expo', 'thumbnail', 'session', 'water', 'workspacenames', 'core', 'notification', 'unityshell', 'workarounds', 'cubeaddon', 'composite', 'firepaint', 'opacify', 'obs', 'fade', 'extrawm', 'mousepoll', 'cube', 'wobbly', 'matecompat', 'clone', 'bench', 'crashhandler', 'colorfilter', 'gnomecompat', 'imgjpeg', 'trailfocus', 'unitymtgrabhandles', 'shelf', 'scaleaddon', 'animationaddon', 'decor', 'neg', 'freewins', 'winrules', 'shift', 'fadedesktop', 'staticswitcher', 'mblur', 'move', 'wallpaper', 'annotate', 'scalefilter', 'showmouse', 'scale', 'commands', 'wall', 'opengl', 'imgsvg']

[org/xfce/mousepad/preferences/view]
show-whitespace=false
smart-home-end='disabled'
color-scheme='classic'
show-right-margin=false
show-line-marks=false
show-line-endings=false
indent-on-tab=true
auto-indent=false
insert-spaces=false
tab-width=8
highlight-current-line=false
show-line-numbers=false
word-wrap=true
use-default-monospace-font=false
indent-width=-1
font-name='Noto Sans 12'
right-margin-position=80
match-braces=false

[org/xfce/mousepad/preferences/window]
menubar-visible=true

[org/xfce/mousepad/state/search]
replace-all=true
direction=2

[org/xfce/mousepad/state/window]
fullscreen=false
width=845
maximized=false
height=485

[org/onboard]
layout='/usr/share/onboard/layouts/Full Keyboard.onboard'
system-theme-associations={'HighContrast': 'HighContrast', 'HighContrastInverse': 'HighContrastInverse', 'LowContrast': 'LowContrast', 'ContrastHighInverse': 'HighContrastInverse', 'Default': '', 'Pop-dark-slim': '/usr/share/onboard/themes/Ambiance.theme', 'Pop-dark': '/usr/share/onboard/themes/Droid.theme'}
use-system-defaults=false
theme='/usr/share/onboard/themes/Droid.theme'
system-theme-tracking-enabled=false
show-tooltips=true
start-minimized=false
schema-version='2.3'
status-icon-provider='AppIndicator'
xembed-onboard=true
current-settings-page=0
show-status-icon=true

[org/onboard/keyboard]
touch-feedback-enabled=true
show-click-buttons=false
audio-feedback-enabled=false

[org/onboard/icon-palette]
in-use=false

[org/onboard/icon-palette/landscape]
width=53
y=685
height=45
x=1060

[org/onboard/auto-show]
enabled=false

[org/onboard/theme-settings]
key-shadow-strength=70.0
roundrect-radius=17.0
key-stroke-gradient=25.0
key-label-font='Normal bold'
background-gradient=81.0
color-scheme='/usr/share/onboard/themes/Granite.colors'
key-size=99.0
key-shadow-size=33.0
key-gradient-direction=5.0
key-fill-gradient=4.0
key-stroke-width=63.0
key-style='gradient'

[org/onboard/window]
docking-shrink-workarea=false
enable-inactive-transparency=true

[org/onboard/window/landscape]
width=1366
x=0
y=410
dock-height=308
height=324

[io/github/gnome-mpv/window-state]
show-playlist=false
width=794
playlist-width=250
volume=0.9375
height=395
show-controls=true

[io/github/gnome-mpv]
settings-migrated=true

[io/github/celluloid-player/celluloid]
use-skip-buttons-for-playlist=true
always-use-floating-controls=false
settings-migrated=true

[io/github/celluloid-player/celluloid/window-state]
show-playlist=false
width=1024
playlist-width=250
volume=1.0
height=605
show-controls=true

[apps/mugshot]
fax=''
email='Griggorii@gmail.com'
initials='X64'

[apps/indicator-session]
suppress-logout-menuitem=false
suppress-logout-restart-shutdown=false
suppress-shutdown-menuitem=false
suppress-restart-menuitem=false
show-real-name-on-panel=true

[apps/light-locker]
idle-hint=false
late-locking=false
lock-after-screensaver=uint32 5
lock-on-suspend=false
lock-on-lid=false

[apps/gecko-mediaplayer/preferences]
disable-midi=false

[apps/seahorse/windows/key-manager]
width=600
height=476

[apps/seahorse/listing]
keyrings-selected=['pkcs11:model=p11-kit-trust;manufacturer=PKCS%2311%20Kit;serial=1;token=System%20Trust']
item-filter='personal'

[apps/update-manager]
launch-time=int64 1612852785
window-width=645
show-details=true
launch-count=10
first-run=false
window-height=452

[com/gexperts/Tilix]
background-image-mode='stretch'
control-scroll-zoom=true
enable-wide-handle=false
warn-vte-config-issue=false
sidebar-on-right=true
background-image='/usr/share/backgrounds/matt-mcnulty-nyc-2nd-ave.jpg'
quake-specific-monitor=0
prompt-on-close=true
focus-follow-mouse=true
prompt-on-delete-profile=true
theme-variant='system'
window-style='normal'

[com/gexperts/Tilix/profiles]
list=['2b7c4080-0ddd-46c5-8f23-563fd3ba789d', '0a1407fe-7c1d-4fe6-98e6-f9863431f084', 'c2f53d1c-a3d6-4098-8c59-cd4bbbb6ace3', 'bf9a5e07-866e-4922-9a06-e72991ae65a8', 'c7f52fa9-1a85-4a45-b07e-0e765fb6c358', 'd984ae7f-3048-478f-afdf-b13768f02875', 'c2f53d1c-a3d6-4098-8c59-cd4bbbb6ace4', '0a1407fe-7c1d-4fe6-98e6-f9863431f085']
default='bf9a5e07-866e-4922-9a06-e72991ae65a8'

[com/gexperts/Tilix/profiles/2b7c4080-0ddd-46c5-8f23-563fd3ba789d]
cursor-foreground-color='#757550507B7B'
badge-color-set=false
highlight-foreground-color='#7373D2D21616'
dim-transparency-percent=0
cursor-colors-set=true
visible-name='По умолчанию'
background-color='#1E1E1E'
use-theme-colors=true
font='Monospace Bold 12'
use-system-font=false
cursor-background-color='#C1C17D7D1111'
palette=['#2E3436', '#CC0000', '#4E9A06', '#C4A000', '#3465A4', '#75507B', '#06979A', '#D3D7CF', '#555753', '#EF2929', '#8AE234', '#FCE94F', '#729FCF', '#AD7FA8', '#34E2E2', '#EEEEEC']
background-transparency-percent=76
highlight-background-color='#CCCC00000000'
foreground-color='#A7A7A7'
highlight-colors-set=true
bold-color-set=false

[com/gexperts/Tilix/profiles/c7f52fa9-1a85-4a45-b07e-0e765fb6c358]
foreground-color='#09094A4A3939'
highlight-foreground-color='#000046466C6C'
badge-font='Monospace 12'
notify-silence-enabled=false
palette=['#09094A4A3939', '#CC0000', '#009600', '#D06B00', '#0000CC', '#CC00CC', '#0087CC', '#CCCCCC', '#808080', '#CC0000', '#009600', '#D06B00', '#0000CC', '#F5F579790000', '#0087CC', '#FFFFFF']
encoding='UTF-8'
cursor-blink-mode='system'
login-shell=false
default-size-rows=24
use-theme-colors=false
text-blink-mode='always'
cursor-colors-set=false
cursor-background-color='#8C3FBF'
select-by-word-chars='-,./?%&#:_'
terminal-title=': '
automatic-switch=@as []
notify-silence-threshold=0
draw-margin=80
badge-color='#AC7EA8'
bold-color='#0000A5A5FFFF'
cursor-foreground-color='#FFFFFF'
use-system-font=false
custom-command=''
scrollback-unlimited=false
font='Monospace Bold 12'
cjk-utf8-ambiguous-width='narrow'
badge-color-set=false
cursor-shape='block'
triggers=@as []
use-custom-command=false
exit-action='close'
badge-use-system-font=true
scroll-on-output=false
bold-is-bright=true
highlight-colors-set=false
delete-binding='delete-sequence'
backspace-binding='ascii-delete'
shortcut='disabled'
background-transparency-percent=100
bold-color-set=false
terminal-bell='sound'
cell-height-scale=1.0
custom-hyperlinks=@as []
background-color='#020236363D3D'
highlight-background-color='#CCCC00000000'
allow-bold=true
show-scrollbar=true
default-size-columns=80
cell-width-scale=1.0
visible-name='By Griggorii 4'
dim-transparency-percent=0
badge-text=''
badge-position='northeast'
scroll-on-keystroke=true
rewrap-on-resize=true
scrollback-lines=8192

[com/gexperts/Tilix/profiles/0a1407fe-7c1d-4fe6-98e6-f9863431f085]
bold-color='#0000A5A5FFFF'
badge-color-set=false
highlight-foreground-color='#000046466C6C'
cursor-foreground-color='#FFFFFF'
background-color='#393634'
badge-color='#AC7EA8'
cursor-colors-set=true
dim-transparency-percent=0
use-theme-colors=false
font='Monospace Bold 12'
palette=['#2E3436', '#CC0403', '#19CB00', '#CECB00', '#000027275B5B', '#CB1ED1', '#0DCDCD', '#E5E5E5', '#4D4D4D', '#CC0000', '#23FD00', '#FFFD00', '#F57900', '#FD28FF', '#14FFFF', '#FFFFFF']
visible-name='By Griggorii 7'
use-system-font=false
cursor-background-color='#8C3FBF'
background-transparency-percent=0
highlight-background-color='#CCCC00000000'
foreground-color='#C1C17D7D1111'
bold-is-bright=false
highlight-colors-set=false
bold-color-set=false

[com/gexperts/Tilix/profiles/0a1407fe-7c1d-4fe6-98e6-f9863431f084]
bold-color='#0000A5A5FFFF'
badge-color-set=false
highlight-foreground-color='#000046466C6C'
cursor-foreground-color='#FFFFFF'
background-color='#33302F'
badge-color='#AC7EA8'
cursor-colors-set=false
dim-transparency-percent=0
use-theme-colors=false
font='Monospace Bold 12'
palette=['#040450503C3C', '#CC0000', '#009600', '#D06B00', '#0000CC', '#0578B4', '#D66D06', '#CCCCCC', '#808080', '#CC0000', '#009600', '#D06B00', '#0000CC', '#F57900', '#0087CC', '#FFFFFF']
visible-name='By Griggorii'
use-system-font=false
cursor-background-color='#8C3FBF'
background-transparency-percent=0
highlight-background-color='#CCCC00000000'
foreground-color='#3A3A88883939'
bold-is-bright=false
highlight-colors-set=false
bold-color-set=false

[com/gexperts/Tilix/profiles/7348b39f-b0f1-4a07-8cf3-ecf7fc4398d4]
foreground-color='#C1C17D7D1111'
highlight-foreground-color='#000046466C6C'
badge-font='Monospace 12'
notify-silence-enabled=false
palette=['#2E3436', '#CC0403', '#19CB00', '#CECB00', '#000027275B5B', '#CB1ED1', '#0DCDCD', '#E5E5E5', '#4D4D4D', '#CC0000', '#23FD00', '#FFFD00', '#F57900', '#FD28FF', '#14FFFF', '#FFFFFF']
encoding='UTF-8'
cursor-blink-mode='system'
login-shell=false
default-size-rows=24
use-theme-colors=false
text-blink-mode='always'
cursor-colors-set=true
cursor-background-color='#8C3FBF'
select-by-word-chars='-,./?%&#:_'
terminal-title=': '
automatic-switch=@as []
notify-silence-threshold=0
draw-margin=80
badge-color='#AC7EA8'
bold-color='#0000A5A5FFFF'
cursor-foreground-color='#FFFFFF'
use-system-font=false
custom-command=''
scrollback-unlimited=false
font='Monospace Bold 12'
cjk-utf8-ambiguous-width='narrow'
badge-color-set=false
cursor-shape='block'
triggers=@as []
use-custom-command=false
exit-action='close'
badge-use-system-font=true
scroll-on-output=false
bold-is-bright=true
highlight-colors-set=false
delete-binding='delete-sequence'
backspace-binding='ascii-delete'
shortcut='disabled'
background-transparency-percent=58
bold-color-set=false
terminal-bell='sound'
cell-height-scale=1.0
custom-hyperlinks=@as []
background-color='#393634'
highlight-background-color='#CCCC00000000'
allow-bold=true
show-scrollbar=true
default-size-columns=80
cell-width-scale=1.0
visible-name='By Griggorii 3'
dim-transparency-percent=0
badge-text=''
badge-position='northeast'
scroll-on-keystroke=true
rewrap-on-resize=true
scrollback-lines=8192

[com/gexperts/Tilix/profiles/bf9a5e07-866e-4922-9a06-e72991ae65a8]
foreground-color='#040450503C3C'
highlight-foreground-color='#000046466C6C'
badge-font='Monospace 12'
notify-silence-enabled=false
palette=['#040450503C3C', '#CC0000', '#009600', '#D06B00', '#0000CC', '#CC00CC', '#0087CC', '#CCCCCC', '#808080', '#CC0000', '#009600', '#D06B00', '#0000CC', '#F5F579790000', '#0087CC', '#FFFFFF']
encoding='UTF-8'
cursor-blink-mode='system'
login-shell=false
default-size-rows=24
use-theme-colors=false
text-blink-mode='always'
cursor-colors-set=false
cursor-background-color='#8C3FBF'
select-by-word-chars='-,./?%&#:_'
terminal-title=': '
automatic-switch=@as []
notify-silence-threshold=0
draw-margin=80
badge-color='#AC7EA8'
bold-color='#0000A5A5FFFF'
cursor-foreground-color='#FFFFFF'
use-system-font=false
custom-command=''
scrollback-unlimited=false
font='Monospace Bold 12'
cjk-utf8-ambiguous-width='narrow'
badge-color-set=false
cursor-shape='block'
triggers=@as []
use-custom-command=false
exit-action='close'
badge-use-system-font=true
scroll-on-output=false
bold-is-bright=true
highlight-colors-set=false
delete-binding='delete-sequence'
backspace-binding='ascii-delete'
shortcut='disabled'
background-transparency-percent=100
bold-color-set=false
terminal-bell='sound'
cell-height-scale=1.0
custom-hyperlinks=@as []
background-color='#FFFFFFFFFFFF'
highlight-background-color='#CCCC00000000'
allow-bold=true
show-scrollbar=true
default-size-columns=80
cell-width-scale=1.0
visible-name='By Griggorii 3'
dim-transparency-percent=0
badge-text=''
badge-position='northeast'
scroll-on-keystroke=true
rewrap-on-resize=true
scrollback-lines=8192

[com/gexperts/Tilix/profiles/c2f53d1c-a3d6-4098-8c59-cd4bbbb6ace4]
foreground-color='#C1C17D7D1111'
highlight-foreground-color='#000046466C6C'
badge-font='Monospace 12'
notify-silence-enabled=false
palette=['#2E3436', '#CC0403', '#19CB00', '#CECB00', '#000027275B5B', '#CB1ED1', '#0DCDCD', '#E5E5E5', '#4D4D4D', '#CC0000', '#23FD00', '#FFFD00', '#F57900', '#FD28FF', '#14FFFF', '#FFFFFF']
encoding='UTF-8'
cursor-blink-mode='system'
login-shell=false
default-size-rows=24
use-theme-colors=false
text-blink-mode='always'
cursor-colors-set=true
cursor-background-color='#8C3FBF'
select-by-word-chars='-,./?%&#:_'
terminal-title=': '
automatic-switch=@as []
notify-silence-threshold=0
draw-margin=80
badge-color='#AC7EA8'
bold-color='#0000A5A5FFFF'
cursor-foreground-color='#FFFFFF'
use-system-font=false
custom-command=''
scrollback-unlimited=false
font='Monospace Bold 12'
cjk-utf8-ambiguous-width='narrow'
badge-color-set=false
cursor-shape='block'
triggers=@as []
use-custom-command=false
exit-action='close'
badge-use-system-font=true
scroll-on-output=false
bold-is-bright=true
highlight-colors-set=false
delete-binding='delete-sequence'
backspace-binding='ascii-delete'
shortcut='disabled'
background-transparency-percent=58
bold-color-set=false
terminal-bell='sound'
cell-height-scale=1.0
custom-hyperlinks=@as []
background-color='#393634'
highlight-background-color='#CCCC00000000'
allow-bold=true
show-scrollbar=true
default-size-columns=80
cell-width-scale=1.0
visible-name='By Griggorii 6'
dim-transparency-percent=0
badge-text=''
badge-position='northeast'
scroll-on-keystroke=true
rewrap-on-resize=true
scrollback-lines=8192

[com/gexperts/Tilix/profiles/c2f53d1c-a3d6-4098-8c59-cd4bbbb6ace3]
foreground-color='#C1C17D7D1111'
highlight-foreground-color='#000046466C6C'
badge-font='Monospace 12'
notify-silence-enabled=false
palette=['#2E3436', '#CC0403', '#19CB00', '#CECB00', '#000027275B5B', '#CB1ED1', '#0DCDCD', '#E5E5E5', '#4D4D4D', '#CC0000', '#23FD00', '#FFFD00', '#F57900', '#FD28FF', '#14FFFF', '#FFFFFF']
encoding='UTF-8'
cursor-blink-mode='system'
login-shell=false
default-size-rows=24
use-theme-colors=false
text-blink-mode='always'
cursor-colors-set=true
cursor-background-color='#8C3FBF'
select-by-word-chars='-,./?%&#:_'
terminal-title=': '
automatic-switch=@as []
notify-silence-threshold=0
draw-margin=80
badge-color='#AC7EA8'
bold-color='#0000A5A5FFFF'
cursor-foreground-color='#FFFFFF'
use-system-font=false
custom-command=''
scrollback-unlimited=false
font='Monospace Bold 12'
cjk-utf8-ambiguous-width='narrow'
badge-color-set=false
cursor-shape='block'
triggers=@as []
use-custom-command=false
exit-action='close'
badge-use-system-font=true
scroll-on-output=false
bold-is-bright=false
highlight-colors-set=false
delete-binding='delete-sequence'
backspace-binding='ascii-delete'
shortcut='disabled'
background-transparency-percent=58
bold-color-set=false
terminal-bell='sound'
cell-height-scale=1.0
custom-hyperlinks=@as []
background-color='#393634'
highlight-background-color='#CCCC00000000'
allow-bold=true
show-scrollbar=true
default-size-columns=80
cell-width-scale=1.0
visible-name='By Griggorii 2'
dim-transparency-percent=0
badge-text=''
badge-position='northeast'
scroll-on-keystroke=true
rewrap-on-resize=true
scrollback-lines=8192

[com/gexperts/Tilix/profiles/9af45e22-72fc-4f6f-a128-8c69e3da4d88]
visible-name='By Griggorii 3'

[com/gexperts/Tilix/profiles/d984ae7f-3048-478f-afdf-b13768f02875]
foreground-color='#040450503C3C'
highlight-foreground-color='#000046466C6C'
badge-font='Monospace 12'
notify-silence-enabled=false
palette=['#040450503C3C', '#CC0000', '#009600', '#D06B00', '#0000CC', '#CC00CC', '#0087CC', '#CCCCCC', '#808080', '#CC0000', '#009600', '#D06B00', '#0000CC', '#F5F579790000', '#0087CC', '#FFFFFF']
encoding='UTF-8'
cursor-blink-mode='system'
login-shell=false
default-size-rows=24
use-theme-colors=false
text-blink-mode='always'
cursor-colors-set=false
cursor-background-color='#8C3FBF'
select-by-word-chars='-,./?%&#:_'
terminal-title=': '
automatic-switch=@as []
notify-silence-threshold=0
draw-margin=80
badge-color='#AC7EA8'
bold-color='#0000A5A5FFFF'
cursor-foreground-color='#FFFFFF'
use-system-font=false
custom-command=''
scrollback-unlimited=false
font='Monospace Bold 12'
cjk-utf8-ambiguous-width='narrow'
badge-color-set=false
cursor-shape='block'
triggers=@as []
use-custom-command=false
exit-action='close'
badge-use-system-font=true
scroll-on-output=false
bold-is-bright=true
highlight-colors-set=false
delete-binding='delete-sequence'
backspace-binding='ascii-delete'
shortcut='disabled'
background-transparency-percent=100
bold-color-set=false
terminal-bell='sound'
cell-height-scale=1.0
custom-hyperlinks=@as []
background-color='#DFDBC3'
highlight-background-color='#CCCC00000000'
allow-bold=true
show-scrollbar=true
default-size-columns=80
cell-width-scale=1.0
visible-name='By Griggorii 5'
dim-transparency-percent=0
badge-text=''
badge-position='northeast'
scroll-on-keystroke=true
rewrap-on-resize=true
scrollback-lines=8192

[com/github/wwmm/pulseeffects]
window-width=1156
use-default-source=true
custom-source='alsa_input.pci-0000_00_1b.0.analog-stereo'
use-dark-theme=false
last-used-preset='Akai HD-230'
use-default-sink=true
window-height=618

[com/github/wwmm/pulseeffects/spectrum]
n-points=81
scale=1.0
gradient-color=[0.0, 0.0, 0.0, 1.0]
sampling-freq=10
use-custom-color=true
height=112
color=[0.15698888888888884, 0.66333333333333333, 0.33171338028169001, 1.0]
fill=true

[com/github/wwmm/pulseeffects/sourceoutputs/compressor]
post-messages=false
installed=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/multibandgate]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/multibandcompressor]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/limiter]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/filter]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/webrtc]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/deesser]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/maximizer]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/gate]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/equalizer]
post-messages=false
installed=false
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/equalizer/rightchannel]
band5-mode='RLC (BT)'
band20-mode='RLC (BT)'
band24-frequency=5674.1599999999999
band13-q=4.3600000000000003
band21-type='Bell'
band6-type='Bell'
band25-mode='RLC (BT)'
band26-type='Bell'
band22-slope='x1'
band26-slope='x1'
band16-mode='RLC (BT)'
band2-slope='x1'
band6-q=4.3600000000000003
band6-slope='x1'
band16-frequency=899.28999999999996
band4-mode='RLC (BT)'
band5-type='Bell'
band20-type='Bell'
band26-q=4.3600000000000003
band15-frequency=714.34000000000003
band24-mode='RLC (BT)'
band25-type='Bell'
band2-q=4.3600000000000003
band15-mode='RLC (BT)'
band6-frequency=89.930000000000007
band21-slope='x1'
band16-type='Bell'
band9-mode='RLC (BT)'
band14-frequency=567.41999999999996
band16-q=4.3600000000000003
band3-mode='RLC (BT)'
band4-type='Bell'
band5-frequency=71.430000000000007
band22-q=4.3600000000000003
band15-slope='x1'
band13-frequency=450.72000000000003
band19-slope='x1'
band9-q=4.3600000000000003
band24-type='Bell'
band9-type='Bell'
band14-mode='RLC (BT)'
band4-frequency=56.740000000000002
band15-type='Bell'
band29-frequency=17943.279999999999
band8-mode='RLC (BT)'
band19-mode='RLC (BT)'
band7-frequency=113.20999999999999
band2-mode='RLC (BT)'
band29-q=4.3600000000000003
band3-type='Bell'
band12-q=4.3600000000000003
band28-frequency=14252.860000000001
band28-slope='x1'
band4-slope='x1'
band5-q=4.3600000000000003
band10-slope='x1'
band8-slope='x1'
band14-slope='x1'
band8-type='Bell'
band13-mode='RLC (BT)'
band18-slope='x1'
band14-type='Bell'
band27-frequency=11321.450000000001
band19-q=4.3600000000000003
band18-mode='RLC (BT)'
band1-mode='RLC (BT)'
band19-type='Bell'
band2-type='Bell'
band25-q=4.3600000000000003
band23-slope='x1'
band1-q=4.3600000000000003
band27-slope='x1'
band19-frequency=1794.3299999999999
band3-slope='x1'
band12-mode='RLC (BT)'
band13-type='Bell'
band0-frequency=22.59
band15-q=4.3600000000000003
band17-mode='RLC (BT)'
band18-frequency=1425.29
band18-type='Bell'
band0-mode='RLC (BT)'
band1-type='Bell'
band21-q=4.3600000000000003
band8-q=4.3600000000000003
band9-frequency=179.43000000000001
band17-frequency=1132.1500000000001
band11-mode='RLC (BT)'
band12-type='Bell'
band8-frequency=142.53
band11-q=4.3600000000000003
band28-q=4.3600000000000003
band23-frequency=4507.1499999999996
band17-type='Bell'
band0-type='Bell'
band12-slope='x1'
band16-slope='x1'
band4-q=4.3600000000000003
band22-frequency=3580.1599999999999
band10-mode='RLC (BT)'
band11-type='Bell'
band18-q=4.3600000000000003
band29-mode='RLC (BT)'
band21-frequency=2843.8200000000002
band24-q=4.3600000000000003
band25-slope='x1'
band29-slope='x1'
band1-slope='x1'
band0-q=4.3600000000000003
band5-slope='x1'
band11-slope='x1'
band9-slope='x1'
band20-frequency=2258.9299999999998
band23-mode='RLC (BT)'
band10-type='Bell'
band14-q=4.3600000000000003
band28-mode='RLC (BT)'
band29-type='Bell'
band20-q=4.3600000000000003
band7-q=4.3600000000000003
band12-frequency=358.01999999999998
band20-slope='x1'
band24-slope='x1'
band0-slope='x1'
band3-frequency=45.07
band7-mode='RLC (BT)'
band22-mode='RLC (BT)'
band23-type='Bell'
band11-frequency=284.38
band10-q=4.3600000000000003
band27-q=4.3600000000000003
band27-mode='RLC (BT)'
band28-type='Bell'
band2-frequency=35.799999999999997
band3-q=4.3600000000000003
band10-frequency=225.88999999999999
band1-frequency=28.440000000000001
band6-mode='RLC (BT)'
band21-mode='RLC (BT)'
band26-frequency=8992.9400000000005
band17-q=4.3600000000000003
band22-type='Bell'
band7-type='Bell'
band26-mode='RLC (BT)'
band23-q=4.3600000000000003
band27-type='Bell'
band7-slope='x1'
band25-frequency=7143.3500000000004
band13-slope='x1'
band17-slope='x1'

[com/github/wwmm/pulseeffects/sourceoutputs/reverb]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/pitch]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sourceoutputs/stereotools]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sinkinputs/pitch]
semitones=0
state=false
cents=0.0
faster=false
installed=true
post-messages=false

[com/github/wwmm/pulseeffects/sinkinputs/limiter]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sinkinputs/stereotools]
phasel=false
phaser=false
softclip=true
state=false
mode='LR > LR (Stereo Default)'
installed=true
input-gain=0.0
balance-in=7.5286998857393428e-16
mutel=false
muter=false
output-gain=0.0
post-messages=false

[com/github/wwmm/pulseeffects/sinkinputs/crystalizer]
post-messages=true
aggressive=false
installed=true
state=true

[com/github/wwmm/pulseeffects/sinkinputs/filter]
resonance=0.70699999999999996
state=false
inertia=74.0
mode='6dB/oct Bandreject'
installed=true
frequency=305.81799999999998
post-messages=false

[com/github/wwmm/pulseeffects/sinkinputs]
plugins=['limiter', 'autogain', 'gate', 'multiband_gate', 'compressor', 'multiband_compressor', 'convolver', 'bass_enhancer', 'exciter', 'crystalizer', 'stereo_tools', 'reverb', 'equalizer', 'deesser', 'crossfeed', 'loudness', 'maximizer', 'filter', 'delay', 'pitch']

[com/github/wwmm/pulseeffects/sinkinputs/maximizer]
release=3.1600000000000001
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sinkinputs/deesser]
detection='RMS'
mode='Wide'
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sinkinputs/crossfeed]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sinkinputs/multibandcompressor]
bypass1=false
solo1=false
state=false
output-gain=0.0
installed=true
input-gain=0.0
post-messages=false

[com/github/wwmm/pulseeffects/sinkinputs/loudness]
link=-12.01
state=true
loudness=-1.9800000000000015
installed=true
post-messages=true
output=-3.7000000000000064

[com/github/wwmm/pulseeffects/sinkinputs/compressor]
ratio=2.0
threshold=-18.0
release=250.0
post-messages=false
installed=false
state=false

[com/github/wwmm/pulseeffects/sinkinputs/exciter]
harmonics=9.9999999999999947
post-messages=false
installed=true
scope=6937.0
state=false

[com/github/wwmm/pulseeffects/sinkinputs/multibandgate]
post-messages=false
installed=true
state=false

[com/github/wwmm/pulseeffects/sinkinputs/delay]
post-messages=false
installed=false
state=false

[com/github/wwmm/pulseeffects/sinkinputs/reverb]
bass-cut=300.0
predelay=10.0
diffusion=1.0
state=false
amount=-8.0
dry=6.0
post-messages=false
hf-damp=9795.5799999999999
decay-time=1.45397
treble-cut=5000.0
room-size='Tunnel-like'
installed=true

[com/github/wwmm/pulseeffects/sinkinputs/bassenhancer]
blend=0.0
state=false
floor=20.0
floor-active=true
installed=true
harmonics=8.5
post-messages=false

[com/github/wwmm/pulseeffects/sinkinputs/convolver]
ir-width=100
post-messages=true
installed=true
state=false

[com/github/wwmm/pulseeffects/sinkinputs/equalizer/leftchannel]
band6-gain=0.0

[com/github/wwmm/pulseeffects/sinkinputs/equalizer]
post-messages=true
installed=false
state=true

[com/github/wwmm/pulseeffects/sinkinputs/equalizer/rightchannel]
band5-mode='RLC (BT)'
band20-mode='RLC (BT)'
band24-frequency=5674.1599999999999
band13-q=4.3600000000000003
band21-type='Bell'
band6-type='Bell'
band25-mode='RLC (BT)'
band26-type='Bell'
band22-slope='x1'
band26-slope='x1'
band16-mode='RLC (BT)'
band2-slope='x1'
band6-q=4.3600000000000003
band6-slope='x1'
band16-frequency=899.28999999999996
band4-mode='RLC (BT)'
band5-type='Bell'
band20-type='Bell'
band26-q=4.3600000000000003
band15-frequency=714.34000000000003
band24-mode='RLC (BT)'
band25-type='Bell'
band2-q=4.3600000000000003
band15-mode='RLC (BT)'
band6-frequency=89.930000000000007
band21-slope='x1'
band16-type='Bell'
band9-mode='RLC (BT)'
band14-frequency=567.41999999999996
band16-q=4.3600000000000003
band3-mode='RLC (BT)'
band4-type='Bell'
band5-frequency=71.430000000000007
band22-q=4.3600000000000003
band15-slope='x1'
band13-frequency=450.72000000000003
band19-slope='x1'
band9-q=4.3600000000000003
band24-type='Bell'
band9-type='Bell'
band14-mode='RLC (BT)'
band4-frequency=56.740000000000002
band15-type='Bell'
band29-frequency=17943.279999999999
band8-mode='RLC (BT)'
band19-mode='RLC (BT)'
band7-frequency=113.20999999999999
band2-mode='RLC (BT)'
band29-q=4.3600000000000003
band3-type='Bell'
band12-q=4.3600000000000003
band28-frequency=14252.860000000001
band28-slope='x1'
band4-slope='x1'
band5-q=4.3600000000000003
band10-slope='x1'
band8-slope='x1'
band14-slope='x1'
band8-type='Bell'
band13-mode='RLC (BT)'
band18-slope='x1'
band14-type='Bell'
band27-frequency=11321.450000000001
band19-q=4.3600000000000003
band18-mode='RLC (BT)'
band1-mode='RLC (BT)'
band19-type='Bell'
band2-type='Bell'
band25-q=4.3600000000000003
band23-slope='x1'
band1-q=4.3600000000000003
band27-slope='x1'
band19-frequency=1794.3299999999999
band3-slope='x1'
band12-mode='RLC (BT)'
band13-type='Bell'
band0-frequency=22.59
band15-q=4.3600000000000003
band17-mode='RLC (BT)'
band18-frequency=1425.29
band18-type='Bell'
band0-mode='RLC (BT)'
band1-type='Bell'
band21-q=4.3600000000000003
band8-q=4.3600000000000003
band9-frequency=179.43000000000001
band17-frequency=1132.1500000000001
band11-mode='RLC (BT)'
band12-type='Bell'
band8-frequency=142.53
band11-q=4.3600000000000003
band28-q=4.3600000000000003
band23-frequency=4507.1499999999996
band17-type='Bell'
band0-type='Bell'
band12-slope='x1'
band16-slope='x1'
band4-q=4.3600000000000003
band22-frequency=3580.1599999999999
band10-mode='RLC (BT)'
band11-type='Bell'
band18-q=4.3600000000000003
band29-mode='RLC (BT)'
band21-frequency=2843.8200000000002
band24-q=4.3600000000000003
band25-slope='x1'
band29-slope='x1'
band1-slope='x1'
band0-q=4.3600000000000003
band5-slope='x1'
band11-slope='x1'
band9-slope='x1'
band20-frequency=2258.9299999999998
band23-mode='RLC (BT)'
band10-type='Bell'
band14-q=4.3600000000000003
band28-mode='RLC (BT)'
band29-type='Bell'
band20-q=4.3600000000000003
band7-q=4.3600000000000003
band12-frequency=358.01999999999998
band20-slope='x1'
band24-slope='x1'
band0-slope='x1'
band3-frequency=45.07
band6-gain=0.0
band22-mode='RLC (BT)'
band23-type='Bell'
band11-frequency=284.38
band7-mode='RLC (BT)'
band10-q=4.3600000000000003
band27-q=4.3600000000000003
band27-mode='RLC (BT)'
band28-type='Bell'
band2-frequency=35.799999999999997
band3-q=4.3600000000000003
band10-frequency=225.88999999999999
band1-frequency=28.440000000000001
band6-mode='RLC (BT)'
band21-mode='RLC (BT)'
band26-frequency=8992.9400000000005
band17-q=4.3600000000000003
band22-type='Bell'
band7-type='Bell'
band26-mode='RLC (BT)'
band23-q=4.3600000000000003
band27-type='Bell'
band7-slope='x1'
band25-frequency=7143.3500000000004
band13-slope='x1'
band17-slope='x1'

[com/github/wwmm/pulseeffects/sinkinputs/autogain]
use-geometric-mean=true
state=true
reset=true
installed=true
post-messages=true
input-gain=0.0
output-gain=0.0
detect-silence=true
target=-19.0

[com/github/wwmm/pulseeffects/sinkinputs/gate]
release=250.0
range=-24.0
knee=9.0
installed=true
post-messages=false
ratio=1.0
makeup=0.0
attack=20.0
stereo-link='Maximum'
threshold=-41.0
state=false

[com/github/maoschanz/drawing]
last-right-rgba=['1.0', '1.0', '0.0', '0.5']
last-active-tool='line'
last-left-rgba=['0.6431372549019608', '0.0', '0.0', '1.0']
last-size=5
maximized=false

[com/canonical/indicator/appmenu/hud]
store-usage-data=false

[com/canonical/indicator/messages]
applications=['org.gnome.Calendar.desktop', 'thunderbird.desktop']

[com/canonical/indicator/keyboard]
migrated=true

[com/canonical/indicator/datetime]
show-locations=true
locations=['UTC UTC']
show-day=true
show-seconds=true
show-date=true
show-year=true
show-auto-detected-location=true
show-week-numbers=true

[com/canonical/indicator/power]
icon-policy='charge'
show-time=true
show-percentage=true

[com/canonical/indicator/sound]
interested-media-players=['org.gnome.Totem.desktop', 'vlc.desktop', 'rhythmbox.desktop', 'io.github.GnomeMpv.desktop']
preferred-media-players=['io.github.gnomempv.desktop']

[com/canonical/unity/webapps]
integration-allowed=false
preauthorized-domains=@as []

[com/canonical/unity/launcher]
favorites=['application://ubiquity.desktop', 'application://org.gnome.Nautilus.desktop', 'application://firefox.desktop', 'application://org.gnome.Software.desktop', 'application://unity-control-center.desktop', 'unity://running-apps', 'application://obs.desktop', 'application://com.gexperts.Tilix.desktop', 'application://libreoffice-startcenter.desktop', 'application://gnome-system-monitor.desktop', 'application://nemo.desktop', 'unity://expo-icon', 'unity://devices']
launcher-position='Left'

[com/canonical/unity/runner]
history=['budgie-panel']

[com/canonical/unity/interface]
text-scale-factor=1.0

[com/canonical/unity/settings-daemon/peripherals/keyboard]
numlock-state='off'

[com/canonical/unity/settings-daemon/plugins/media-keys]
on-screen-keyboard='<Primary>k'

[com/canonical/unity]
always-show-menus=true
lowgfx=false
minimize-count=2

[com/canonical/unity/lenses]
remote-content-search='none'
disabled-scopes=['web-chromiumbookmarks.scope', 'photos-facebook.scope', 'photos-picasa.scope', 'photos-flickr.scope', 'web-firefoxbookmarks.scope', 'code-devhelp.scope', 'music-rhythmbox.scope', 'photos-shotwell.scope', 'notes-tomboy.scope', 'music-banshee.scope', 'reference-zotero.scope', 'help-yelp.scope']

[com/system76/hidpi]
mode='hidpi'
enable=true

[com/solus-project/budgie-raven]
allow-volume-overdrive=true
enable-week-numbers=true
show-power-strip=true

[com/solus-project/budgie-wm]
caffeine-mode=false
focus-mode=false
force-unredirect=true
attach-modal-dialogs=true
button-layout='appmenu:minimize,maximize,close'
center-windows=false
button-style='traditional'
edge-tiling=true

[com/solus-project/budgie-panel]
builtin-theme=true
dark-theme=false
notification-position='BUDGIE_NOTIFICATION_POSITION_TOP_RIGHT'
panels=['a35a8564-dabb-11e9-b23b-0b98712e6d7b']
migration-level=1

[com/solus-project/budgie-panel/instance/icon-tasklist/{2c9cc9b8-763a-11e9-b441-9fea6856116e}]
pinned-launchers=['firefox.desktop', 'org.gnome.Software.desktop', 'libreoffice-startcenter.desktop', 'alacarte-made-34.desktop', 'alacarte-made-35.desktop', 'org.gnome.Maps.desktop', 'update-manager.desktop', 'slingscold.desktop', 'blueman-manager.desktop']
lock-icons=false
show-all-windows-on-click=false
restrict-to-workspace=false
only-pinned=false

[com/solus-project/budgie-panel/instance/icon-tasklist/{e796985c-26c1-11e9-b617-525400320717}]
pinned-launchers=['firefox.desktop', 'libreoffice-startcenter.desktop', 'alacarte-made-35.desktop', 'qtconfig-qt4.desktop', 'alacarte-made-34.desktop', 'org.gnome.Maps.desktop', 'org.gnome.Weather.Application.desktop', 'xfce4-screenshooter.desktop', 'org.gnome.Software.desktop', 'xfce4-sensors.desktop', 'blueman-manager.desktop']
restrict-to-workspace=false

[com/solus-project/budgie-panel/instance/icon-tasklist/{a87d0e22-b5a5-11e8-a0ad-9dd098ee626e}]
pinned-launchers=['libreoffice-startcenter.desktop', 'xfce4-screenshooter.desktop', 'obs.desktop', 'firefox.desktop', 'chromium-browser.desktop', 'unity-tweak-tool.desktop', 'org.gnome.Software.desktop', 'nautilus.desktop']

[com/solus-project/budgie-panel/instance/icon-tasklist/{e5640cf4-dabc-11e9-b23b-0b98712e6d7b}]
pinned-launchers=['chromium-browser.desktop', 'firefox.desktop', 'update-manager.desktop', 'slingscold.desktop', 'libreoffice-startcenter.desktop', 'org.gnome.Software.desktop', 'org.gnome.Maps.desktop', 'org.gnome.Screenshot.desktop', 'blueman-manager.desktop']
lock-icons=false
restrict-to-workspace=false
only-pinned=false

[com/solus-project/budgie-panel/instance/icon-tasklist/{ba5efbce-4394-11e8-a325-934928330824}]
pinned-launchers=['chromium-browser.desktop', 'nautilus.desktop', 'libreoffice-startcenter.desktop', 'org.gnome.Software.desktop', 'org.gnome.Epiphany.desktop', 'firefox.desktop', 'obs.desktop', 'kazam.desktop', 'gnome-system-monitor.desktop']

[com/solus-project/budgie-panel/instance/icon-tasklist/{432adf7a-6197-11e8-96a0-e7f827d77ada}]
pinned-launchers=['chromium-browser.desktop', 'nautilus.desktop', 'libreoffice-startcenter.desktop', 'com.github.wwmm.pulseeffects.desktop', 'org.gnome.Software.desktop', 'update-manager.desktop', 'firefox.desktop', 'com.gexperts.Tilix.desktop', 'xfce4-screenshooter.desktop', 'alacarte-made-34.desktop', 'hime-setup.desktop', 'lxde-x-terminal-emulator.desktop', 'unity-tweak-tool.desktop', 'org.gnome.Builder.desktop']

[com/solus-project/budgie-panel/instance/icon-tasklist/{f8896310-1ece-11e9-90d7-525400320717}]
pinned-launchers=['firefox.desktop', 'org.gnome.Software.desktop', 'libreoffice-startcenter.desktop', 'nemo.desktop', 'org.gnome.Maps.desktop', 'org.gnome.Weather.Application.desktop', 'htop.desktop', 'blueman-manager.desktop', 'ccsm.desktop']

[com/solus-project/budgie-panel/instance/spacer/{43b339a0-b436-11e8-9fed-3fa40103cb8b}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{d644f644-1ecd-11e9-90d7-525400320717}]
size=1

[com/solus-project/budgie-panel/instance/spacer/{1b2d812e-b0db-11e8-88f2-f788eed09528}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{a2ae9924-b5a6-11e8-9c0b-4fd83cf1c1b5}]
size=9

[com/solus-project/budgie-panel/instance/spacer/{f560374a-763a-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{bc239a67-4393-11e8-a325-934928330824}]
size=3

[com/solus-project/budgie-panel/instance/spacer/{a35a8573-dabb-11e9-b23b-0b98712e6d7b}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{e1611d4a-b5a6-11e8-9c0b-4fd83cf1c1b5}]
size=3

[com/solus-project/budgie-panel/instance/spacer/{07a8c642-dabd-11e9-b23b-0b98712e6d7b}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{a35a856d-dabb-11e9-b23b-0b98712e6d7b}]
size=2

[com/solus-project/budgie-panel/instance/spacer/{bc0418cc-b5a6-11e8-9c0b-4fd83cf1c1b5}]
size=1

[com/solus-project/budgie-panel/instance/spacer/{4b3105d2-763b-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{73375ee0-b436-11e8-9fed-3fa40103cb8b}]
size=2

[com/solus-project/budgie-panel/instance/spacer/{bde3b882-763a-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{2d65d7d8-b0db-11e8-88f2-f788eed09528}]
size=3

[com/solus-project/budgie-panel/instance/spacer/{5ecee8ca-763b-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{be3aa00c-1ece-11e9-90d7-525400320717}]
size=1

[com/solus-project/budgie-panel/instance/spacer/{9dee6d56-763a-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{a35a8566-dabb-11e9-b23b-0b98712e6d7b}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{aa58c280-1ece-11e9-90d7-525400320717}]
size=2

[com/solus-project/budgie-panel/instance/spacer/{14dd5db4-26c2-11e9-b617-525400320717}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{5783414e-b00a-11e8-a863-172bad3a3449}]
size=3

[com/solus-project/budgie-panel/instance/spacer/{0bab372a-26c2-11e9-b617-525400320717}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{a9f75270-763a-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{948590d2-1ece-11e9-90d7-525400320717}]
size=4

[com/solus-project/budgie-panel/instance/spacer/{cde19cc2-763a-11e9-b441-9fea6856116e}]
size=0

[com/solus-project/budgie-panel/instance/spacer/{f420de1c-1ecd-11e9-90d7-525400320717}]
size=2

[com/solus-project/budgie-panel/instance/places-indicator/{bc239a63-4393-11e8-a325-934928330824}]
expand-places=false

[com/solus-project/budgie-panel/instance/places-indicator/{807b023e-b5a6-11e8-9c0b-4fd83cf1c1b5}]
expand-places=false

[com/solus-project/budgie-panel/instance/places-indicator/{c10c7b24-6197-11e8-96a0-e7f827d77ada}]
expand-places=false

[com/solus-project/budgie-panel/instance/places-indicator/{6e7f88ce-26c2-11e9-b617-525400320717}]
expand-places=false

[com/solus-project/budgie-panel/instance/places-indicator/{18f75e1c-1ed0-11e9-90d7-525400320717}]
expand-places=false

[com/solus-project/budgie-panel/instance/places-indicator/{5cad6aae-763a-11e9-b441-9fea6856116e}]
expand-places=false

[com/solus-project/budgie-panel/instance/budgie-menu/{ba7190b0-b435-11e8-9fed-3fa40103cb8b}]
menu-categories-hover=true

[com/solus-project/budgie-panel/instance/budgie-menu/{9c8d1602-b5a5-11e8-a0ad-9dd098ee626e}]
menu-categories-hover=true

[com/solus-project/budgie-panel/instance/budgie-menu/{bcb411e4-b0da-11e8-88f2-f788eed09528}]
menu-categories-hover=true

[com/solus-project/budgie-panel/instance/budgie-menu/{a59f49ed-4393-11e8-a325-934928330824}]
menu-categories-hover=true

[com/solus-project/budgie-panel/instance/budgie-menu/{3dde8fe4-6197-11e8-96a0-e7f827d77ada}]
menu-categories-hover=true

[com/solus-project/budgie-panel/instance/budgie-menu/{24152416-763a-11e9-b441-9fea6856116e}]
menu-categories-hover=true
menu-headers=true

[com/solus-project/budgie-panel/instance/budgie-menu/{a35a8565-dabb-11e9-b23b-0b98712e6d7b}]
menu-categories-hover=true
menu-headers=true

[com/solus-project/budgie-panel/instance/budgie-menu/{dbe864fe-26c1-11e9-b617-525400320717}]
menu-categories-hover=true
menu-headers=true

[com/solus-project/budgie-panel/panels/{a35a8564-dabb-11e9-b23b-0b98712e6d7b}]
autohide='none'
size=39
location='bottom'
transparency='dynamic'
applets=['2d6cfe84-dabd-11e9-b23b-0b98712e6d7b', 'a35a8567-dabb-11e9-b23b-0b98712e6d7b', 'a35a8571-dabb-11e9-b23b-0b98712e6d7b', 'e5640cf4-dabc-11e9-b23b-0b98712e6d7b', 'b194ed7a-dabd-11e9-b23b-0b98712e6d7b', 'a35a856a-dabb-11e9-b23b-0b98712e6d7b', 'a35a8575-dabb-11e9-b23b-0b98712e6d7b', 'a35a856f-dabb-11e9-b23b-0b98712e6d7b', 'a35a8566-dabb-11e9-b23b-0b98712e6d7b', 'a35a8570-dabb-11e9-b23b-0b98712e6d7b', 'b0170cb8-e5ca-11e9-8f26-f742aca3153e', '7a2aca6c-dabd-11e9-b23b-0b98712e6d7b', 'a35a8565-dabb-11e9-b23b-0b98712e6d7b', 'a35a8574-dabb-11e9-b23b-0b98712e6d7b', 'a35a856e-dabb-11e9-b23b-0b98712e6d7b', 'a35a856d-dabb-11e9-b23b-0b98712e6d7b', '5b21b33e-dabc-11e9-b23b-0b98712e6d7b', 'a35a8573-dabb-11e9-b23b-0b98712e6d7b', 'a35a8569-dabb-11e9-b23b-0b98712e6d7b', '7e0e882c-dabc-11e9-b23b-0b98712e6d7b', '07a8c642-dabd-11e9-b23b-0b98712e6d7b', 'a35a8568-dabb-11e9-b23b-0b98712e6d7b', '726d84fe-dabd-11e9-b23b-0b98712e6d7b', 'a35a8572-dabb-11e9-b23b-0b98712e6d7b']
dock-mode=false
theme-regions=true

[com/solus-project/budgie-panel/panels/{a1e8225e-95c8-11ea-9f05-25964637bc33}]
transparency='dynamic'
size=39
location='top'

[com/solus-project/budgie-panel/panels/{01fa7f64-0944-11ea-9873-cd0a3e495e06}]
transparency='dynamic'
size=39
location='top'
applets=['01fa7f74-0944-11ea-9873-cd0a3e495e06', '01fa7f6e-0944-11ea-9873-cd0a3e495e06', '01fa7f73-0944-11ea-9873-cd0a3e495e06', '01fa7f6d-0944-11ea-9873-cd0a3e495e06', '01fa7f69-0944-11ea-9873-cd0a3e495e06', '01fa7f72-0944-11ea-9873-cd0a3e495e06', '01fa7f6c-0944-11ea-9873-cd0a3e495e06', '01fa7f68-0944-11ea-9873-cd0a3e495e06', '01fa7f6b-0944-11ea-9873-cd0a3e495e06', '01fa7f67-0944-11ea-9873-cd0a3e495e06', '01fa7f71-0944-11ea-9873-cd0a3e495e06', '01fa7f70-0944-11ea-9873-cd0a3e495e06', '01fa7f6a-0944-11ea-9873-cd0a3e495e06', '01fa7f75-0944-11ea-9873-cd0a3e495e06', '01fa7f66-0944-11ea-9873-cd0a3e495e06', '01fa7f6f-0944-11ea-9873-cd0a3e495e06', '01fa7f65-0944-11ea-9873-cd0a3e495e06']

[com/solus-project/budgie-panel/panels/{20123e40-6297-11ea-8e68-b7139faad7dd}]
transparency='dynamic'
size=39
location='top'

[com/solus-project/budgie-panel/panels/{b24ee342-09de-11ea-af56-cdd5f8c5d00f}]
transparency='dynamic'
size=39
location='top'
applets=['b24ee34a-09de-11ea-af56-cdd5f8c5d00f', 'b24ee34f-09de-11ea-af56-cdd5f8c5d00f', 'b24ee345-09de-11ea-af56-cdd5f8c5d00f', 'b24ee34e-09de-11ea-af56-cdd5f8c5d00f', 'b24ee353-09de-11ea-af56-cdd5f8c5d00f', 'b24ee34d-09de-11ea-af56-cdd5f8c5d00f', 'b24ee344-09de-11ea-af56-cdd5f8c5d00f', 'b24ee349-09de-11ea-af56-cdd5f8c5d00f', 'b24ee352-09de-11ea-af56-cdd5f8c5d00f', 'b24ee34c-09de-11ea-af56-cdd5f8c5d00f', 'b24ee343-09de-11ea-af56-cdd5f8c5d00f', 'b24ee348-09de-11ea-af56-cdd5f8c5d00f', 'b24ee34b-09de-11ea-af56-cdd5f8c5d00f', 'b24ee347-09de-11ea-af56-cdd5f8c5d00f', 'b24ee351-09de-11ea-af56-cdd5f8c5d00f', 'b24ee350-09de-11ea-af56-cdd5f8c5d00f', 'b24ee346-09de-11ea-af56-cdd5f8c5d00f']

[com/solus-project/budgie-panel/panels/{19f0451a-763a-11e9-b441-9fea6856116e}]
transparency='dynamic'
size=39
location='bottom'
applets=['9402ec40-763a-11e9-b441-9fea6856116e', 'b6c2b22e-763a-11e9-b441-9fea6856116e', '8438b5ec-763a-11e9-b441-9fea6856116e', 'c4d4fa98-763a-11e9-b441-9fea6856116e', 'cde19cc2-763a-11e9-b441-9fea6856116e', '53a32066-763a-11e9-b441-9fea6856116e', 'bde3b882-763a-11e9-b441-9fea6856116e', '39d27456-763b-11e9-b441-9fea6856116e', 'ecd7122e-763a-11e9-b441-9fea6856116e', '2c9cc9b8-763a-11e9-b441-9fea6856116e', '5ecee8ca-763b-11e9-b441-9fea6856116e', '70648dba-763b-11e9-b441-9fea6856116e', '56b4f896-763b-11e9-b441-9fea6856116e', '416748fa-763a-11e9-b441-9fea6856116e', '8a7e16f4-763a-11e9-b441-9fea6856116e', '7556bc5e-763a-11e9-b441-9fea6856116e', '66e227a2-763b-11e9-b441-9fea6856116e', '5cad6aae-763a-11e9-b441-9fea6856116e', 'a5823f20-763a-11e9-b441-9fea6856116e', 'f560374a-763a-11e9-b441-9fea6856116e', '24152416-763a-11e9-b441-9fea6856116e', '4b3105d2-763b-11e9-b441-9fea6856116e', '495b9bce-763a-11e9-b441-9fea6856116e', '9dee6d56-763a-11e9-b441-9fea6856116e', 'a9f75270-763a-11e9-b441-9fea6856116e']

[com/solus-project/budgie-panel/panels/{802416c8-b5a5-11e8-a0ad-9dd098ee626e}]
autohide='none'
size=47
location='bottom'
transparency='dynamic'
applets=['7626d7b8-b5a6-11e8-9c0b-4fd83cf1c1b5', 'bc0418cc-b5a6-11e8-9c0b-4fd83cf1c1b5', '9ccf9724-b5a6-11e8-9c0b-4fd83cf1c1b5', 'a2ae9924-b5a6-11e8-9c0b-4fd83cf1c1b5', '91e22ba6-b5a6-11e8-9c0b-4fd83cf1c1b5', 'c9253374-b5a6-11e8-9c0b-4fd83cf1c1b5', '807b023e-b5a6-11e8-9c0b-4fd83cf1c1b5', 'c198a21c-b5a6-11e8-9c0b-4fd83cf1c1b5', 'd334e756-b5a6-11e8-9c0b-4fd83cf1c1b5', 'a87d0e22-b5a5-11e8-a0ad-9dd098ee626e', 'e1611d4a-b5a6-11e8-9c0b-4fd83cf1c1b5', '9c8d1602-b5a5-11e8-a0ad-9dd098ee626e', '7b974c64-b5a6-11e8-9c0b-4fd83cf1c1b5', '963b45d4-b5a6-11e8-9c0b-4fd83cf1c1b5', 'aafc1390-b5a6-11e8-9c0b-4fd83cf1c1b5', 'b570b6b4-b5a6-11e8-9c0b-4fd83cf1c1b5', 'd8a57c96-b5a6-11e8-9c0b-4fd83cf1c1b5']

[com/solus-project/budgie-panel/panels/{d764ec9a-26c1-11e9-b617-525400320717}]
transparency='dynamic'
size=39
location='bottom'
applets=['f2a2d458-38ec-11e9-8c24-b3953043e2f5', '1183ec96-26c2-11e9-b617-525400320717', 'dbe864fe-26c1-11e9-b617-525400320717', 'f765c3ca-26c1-11e9-b617-525400320717', '67bba338-26c2-11e9-b617-525400320717', '4e10f24e-26c2-11e9-b617-525400320717', '39dc111e-26c2-11e9-b617-525400320717', '407b4134-26c2-11e9-b617-525400320717', '2667f1de-26c2-11e9-b617-525400320717', '14dd5db4-26c2-11e9-b617-525400320717', '0460566c-26c2-11e9-b617-525400320717', '1ee926b2-26c2-11e9-b617-525400320717', 'fd3aad7e-26c1-11e9-b617-525400320717', 'e796985c-26c1-11e9-b617-525400320717', '6e7f88ce-26c2-11e9-b617-525400320717', '44bab28e-26c2-11e9-b617-525400320717', 'f441f7d6-26c1-11e9-b617-525400320717', '0bab372a-26c2-11e9-b617-525400320717', '740a8e42-26c2-11e9-b617-525400320717', '55def71e-26c2-11e9-b617-525400320717', '2bce2634-26c2-11e9-b617-525400320717']

[com/solus-project/budgie-panel/applets/{407b4134-26c2-11e9-b617-525400320717}]
position=3
alignment='end'
name='Night Light'

[com/solus-project/budgie-panel/applets/{8bff9f06-463a-11e8-8265-7d5ff59b157b}]
position=0
alignment='center'

[com/solus-project/budgie-panel/applets/{1ed682ea-b436-11e8-9fed-3fa40103cb8b}]
position=10
alignment='end'
name='User Indicator'

[com/solus-project/budgie-panel/applets/{2704888a-b0db-11e8-88f2-f788eed09528}]
position=5
alignment='end'
name='Notifications'

[com/solus-project/budgie-panel/applets/{01fa7f67-0944-11ea-9873-cd0a3e495e06}]
position=2
alignment='start'
name='ShowTime'

[com/solus-project/budgie-panel/applets/{5ec7ca0e-26c2-11e9-b617-525400320717}]
position=3
alignment='start'
name='WeatherShow'

[com/solus-project/budgie-panel/applets/{8ac8f43e-72f4-11e8-94cb-67756189a5cb}]
position=4
alignment='end'
name='Night Light'

[com/solus-project/budgie-panel/applets/{076d787e-b0db-11e8-88f2-f788eed09528}]
position=11
alignment='end'
name='Raven Trigger'

[com/solus-project/budgie-panel/applets/{dc7590dc-1ecd-11e9-90d7-525400320717}]
position=15
alignment='end'
name='Separator'

[com/solus-project/budgie-panel/applets/{ba372c09-4393-11e8-a325-934928330824}]
position=0

[com/solus-project/budgie-panel/applets/{f560374a-763a-11e9-b441-9fea6856116e}]
position=6
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{44bab28e-26c2-11e9-b617-525400320717}]
position=2
alignment='end'
name='Budgie Brightness Control'

[com/solus-project/budgie-panel/applets/{01fa7f6b-0944-11ea-9873-cd0a3e495e06}]
position=2
alignment='end'
name='Caffeine'

[com/solus-project/budgie-panel/applets/{1b2d812e-b0db-11e8-88f2-f788eed09528}]
position=8
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{7e0e882c-dabc-11e9-b23b-0b98712e6d7b}]
position=0
alignment='center'
name='System Monitor'

[com/solus-project/budgie-panel/applets/{3e8ee5be-b436-11e8-9fed-3fa40103cb8b}]
position=5
alignment='end'
name='Notifications'

[com/solus-project/budgie-panel/applets/{01fa7f70-0944-11ea-9873-cd0a3e495e06}]
position=7
alignment='end'
name='Notifications'

[com/solus-project/budgie-panel/applets/{a35a856e-dabb-11e9-b23b-0b98712e6d7b}]
position=7
alignment='end'
name='Night Light'

[com/solus-project/budgie-panel/applets/{24152416-763a-11e9-b441-9fea6856116e}]
position=0
alignment='start'
name='Budgie Menu'

[com/solus-project/budgie-panel/applets/{bc239a61-4393-11e8-a325-934928330824}]
position=2

[com/solus-project/budgie-panel/applets/{f765c3ca-26c1-11e9-b617-525400320717}]
position=12
alignment='end'
name='Clock'

[com/solus-project/budgie-panel/applets/{39dc111e-26c2-11e9-b617-525400320717}]
position=4
alignment='end'
name='RotationLock'

[com/solus-project/budgie-panel/applets/{01fa7f73-0944-11ea-9873-cd0a3e495e06}]
position=10
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{b24ee344-09de-11ea-af56-cdd5f8c5d00f}]
position=1
alignment='start'
name='Spacer'

[com/solus-project/budgie-panel/applets/{4eded2f0-09dd-11ea-af56-cdd5f8c5d00f}]
position=0
alignment='center'
name='System Monitor'

[com/solus-project/budgie-panel/applets/{416748fa-763a-11e9-b441-9fea6856116e}]
position=2
alignment='start'
name='ShowTime'

[com/solus-project/budgie-panel/applets/{7626d7b8-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=0
alignment='center'
name='System Monitor'

[com/solus-project/budgie-panel/applets/{1183ec96-26c2-11e9-b617-525400320717}]
position=9
alignment='end'
name='Separator'

[com/solus-project/budgie-panel/applets/{0bab372a-26c2-11e9-b617-525400320717}]
position=10
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{a87d0e22-b5a5-11e8-a0ad-9dd098ee626e}]
position=1
alignment='start'
name='Icon Task List'

[com/solus-project/budgie-panel/applets/{ba372c0b-4393-11e8-a325-934928330824}]
position=0
alignment='end'

[com/solus-project/budgie-panel/applets/{b24ee34b-09de-11ea-af56-cdd5f8c5d00f}]
position=4
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{01fa7f65-0944-11ea-9873-cd0a3e495e06}]
position=0
alignment='start'
name='Budgie Menu'

[com/solus-project/budgie-panel/applets/{a35a8568-dabb-11e9-b23b-0b98712e6d7b}]
position=14
alignment='end'
name='Clock'

[com/solus-project/budgie-panel/applets/{57d3b878-b0db-11e8-88f2-f788eed09528}]
position=1
alignment='end'
name='AppIndicator Applet'

[com/solus-project/budgie-panel/applets/{a5823f20-763a-11e9-b441-9fea6856116e}]
position=13
alignment='end'
name='Separator'

[com/solus-project/budgie-panel/applets/{56b4f896-763b-11e9-b441-9fea6856116e}]
position=3
alignment='end'
name='Budgie Brightness Control'

[com/solus-project/budgie-panel/applets/{b24ee34e-09de-11ea-af56-cdd5f8c5d00f}]
position=7
alignment='end'
name='Notifications'

[com/solus-project/budgie-panel/applets/{ecd7122e-763a-11e9-b441-9fea6856116e}]
position=7
alignment='end'
name='Night Light'

[com/solus-project/budgie-panel/applets/{18f75e1c-1ed0-11e9-90d7-525400320717}]
position=2
alignment='center'
name='Places'

[com/solus-project/budgie-panel/applets/{ba372c08-4393-11e8-a325-934928330824}]
position=3

[com/solus-project/budgie-panel/applets/{07a8c642-dabd-11e9-b23b-0b98712e6d7b}]
position=4
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{b24ee353-09de-11ea-af56-cdd5f8c5d00f}]
position=12
alignment='end'
name='Raven Trigger'

[com/solus-project/budgie-panel/applets/{ba7190b0-b435-11e8-9fed-3fa40103cb8b}]
position=0
alignment='start'
name='Budgie Menu'

[com/solus-project/budgie-panel/applets/{f8896310-1ece-11e9-90d7-525400320717}]
position=1
alignment='start'
name='Icon Task List'

[com/solus-project/budgie-panel/applets/{875f3904-9686-11ea-80a5-a97a61034774}]
position=1
alignment='end'
name='BrightnessController'

[com/solus-project/budgie-panel/applets/{20a53048-b0db-11e8-88f2-f788eed09528}]
position=7
alignment='end'
name='Keyboard Layout'

[com/solus-project/budgie-panel/applets/{a62353d6-b044-11e8-8456-bf8a87eecc81}]
position=1
alignment='end'
name='Budgie Brightness Control'

[com/solus-project/budgie-panel/applets/{73375ee0-b436-11e8-9fed-3fa40103cb8b}]
position=3
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{5e8f4fea-2225-11e9-bdb0-525400320717}]
position=0
alignment='end'
name='QuickNote'

[com/solus-project/budgie-panel/applets/{49d0cd42-b0db-11e8-88f2-f788eed09528}]
position=0
alignment='end'
name='System Tray'

[com/solus-project/budgie-panel/applets/{34892d16-b00a-11e8-a863-172bad3a3449}]
position=9
alignment='end'
name='User Indicator'

[com/solus-project/budgie-panel/applets/{01fa7f6f-0944-11ea-9873-cd0a3e495e06}]
position=6
alignment='end'
name='Places'

[com/solus-project/budgie-panel/applets/{a35a8571-dabb-11e9-b23b-0b98712e6d7b}]
position=2
alignment='end'
name='Status Indicator'

[com/solus-project/budgie-panel/applets/{f90ab580-b0da-11e8-88f2-f788eed09528}]
position=2
alignment='center'
name='Places'

[com/solus-project/budgie-panel/applets/{ed3ee492-b0da-11e8-88f2-f788eed09528}]
position=0
alignment='center'
name='System Monitor'

[com/solus-project/budgie-panel/applets/{01fa7f74-0944-11ea-9873-cd0a3e495e06}]
position=11
alignment='end'
name='User Indicator'

[com/solus-project/budgie-panel/applets/{b24ee345-09de-11ea-af56-cdd5f8c5d00f}]
position=2
alignment='start'
name='ShowTime'

[com/solus-project/budgie-panel/applets/{5e59db2e-4636-11e8-837c-c944fbda294c}]
position=14
alignment='end'

[com/solus-project/budgie-panel/applets/{408e9e5c-b00a-11e8-a863-172bad3a3449}]
position=7
alignment='end'
name='Separator'

[com/solus-project/budgie-panel/applets/{6e7f88ce-26c2-11e9-b617-525400320717}]
position=1
alignment='center'
name='Places'

[com/solus-project/budgie-panel/applets/{bc239a65-4393-11e8-a325-934928330824}]
position=7
alignment='end'

[com/solus-project/budgie-panel/applets/{b24ee348-09de-11ea-af56-cdd5f8c5d00f}]
position=1
alignment='end'
name='System Tray'

[com/solus-project/budgie-panel/applets/{bc239a68-4393-11e8-a325-934928330824}]
position=12
alignment='end'

[com/solus-project/budgie-panel/applets/{0569d75a-1ece-11e9-90d7-525400320717}]
position=12
alignment='end'
name='Keyboard Layout'

[com/solus-project/budgie-panel/applets/{fa8f8f80-77a8-11e9-b2d4-2d94a7138723}]
position=12
alignment='end'
name='Raven Trigger'

[com/solus-project/budgie-panel/applets/{740a8e42-26c2-11e9-b617-525400320717}]
position=2
alignment='center'
name='Workspace Switcher'

[com/solus-project/budgie-panel/applets/{a35a8566-dabb-11e9-b23b-0b98712e6d7b}]
position=1
alignment='start'
name='Spacer'

[com/solus-project/budgie-panel/applets/{dbe864fe-26c1-11e9-b617-525400320717}]
position=0
alignment='start'
name='Budgie Menu'

[com/solus-project/budgie-panel/applets/{630a883a-b436-11e8-9fed-3fa40103cb8b}]
position=4
alignment='end'
name='Status Indicator'

[com/solus-project/budgie-panel/applets/{fae5916c-4394-11e8-a325-934928330824}]
position=9
alignment='end'

[com/solus-project/budgie-panel/applets/{b24ee351-09de-11ea-af56-cdd5f8c5d00f}]
position=10
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{01fa7f69-0944-11ea-9873-cd0a3e495e06}]
position=0
alignment='end'
name='AppIndicator Applet'

[com/solus-project/budgie-panel/applets/{10292290-1ece-11e9-90d7-525400320717}]
position=11
alignment='end'
name='DropBy'

[com/solus-project/budgie-panel/applets/{01fa7f6a-0944-11ea-9873-cd0a3e495e06}]
position=1
alignment='end'
name='System Tray'

[com/solus-project/budgie-panel/applets/{2c9cc9b8-763a-11e9-b441-9fea6856116e}]
position=1
alignment='start'
name='Icon Task List'

[com/solus-project/budgie-panel/applets/{a35a856d-dabb-11e9-b23b-0b98712e6d7b}]
position=6
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{a2839b06-463a-11e8-8265-7d5ff59b157b}]
position=2
alignment='end'

[com/solus-project/budgie-panel/applets/{715e0d72-1ecf-11e9-90d7-525400320717}]
position=3
alignment='start'
name='WeatherShow'

[com/solus-project/budgie-panel/applets/{7b974c64-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=1
alignment='center'
name='Workspace Switcher'

[com/solus-project/budgie-panel/applets/{0109a34c-9a89-11ea-bc5d-ab03568c6035}]
position=1
alignment='end'
name='BrightnessController'

[com/solus-project/budgie-panel/applets/{bc239a60-4393-11e8-a325-934928330824}]
position=6
alignment='end'

[com/solus-project/budgie-panel/applets/{39d27456-763b-11e9-b441-9fea6856116e}]
position=5
alignment='end'
name='RotationLock'

[com/solus-project/budgie-panel/applets/{ba372c0d-4393-11e8-a325-934928330824}]
position=5
alignment='end'

[com/solus-project/budgie-panel/applets/{f2a2d458-38ec-11e9-8c24-b3953043e2f5}]
position=3
alignment='start'
name='WeatherShow'

[com/solus-project/budgie-panel/applets/{495b9bce-763a-11e9-b441-9fea6856116e}]
position=3
alignment='start'
name='WeatherShow'

[com/solus-project/budgie-panel/applets/{01fa7f72-0944-11ea-9873-cd0a3e495e06}]
position=9
alignment='end'
name='Separator'

[com/solus-project/budgie-panel/applets/{49cd0e88-b436-11e8-9fed-3fa40103cb8b}]
position=1
alignment='end'
name='AppIndicator Applet'

[com/solus-project/budgie-panel/applets/{a35a8575-dabb-11e9-b23b-0b98712e6d7b}]
position=15
alignment='end'
name='Raven Trigger'

[com/solus-project/budgie-panel/applets/{14dd5db4-26c2-11e9-b617-525400320717}]
position=8
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{8438b5ec-763a-11e9-b441-9fea6856116e}]
position=17
alignment='end'
name='Raven Trigger'

[com/solus-project/budgie-panel/applets/{52f78b94-b00a-11e8-a863-172bad3a3449}]
position=4
alignment='end'
name='Notifications'

[com/solus-project/budgie-panel/applets/{55def71e-26c2-11e9-b617-525400320717}]
position=2
alignment='start'
name='ShowTime'

[com/solus-project/budgie-panel/applets/{e796985c-26c1-11e9-b617-525400320717}]
position=1
alignment='start'
name='Icon Task List'

[com/solus-project/budgie-panel/applets/{b24ee343-09de-11ea-af56-cdd5f8c5d00f}]
position=0
alignment='start'
name='Budgie Menu'

[com/solus-project/budgie-panel/applets/{963b45d4-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=10
alignment='end'
name='Clock'

[com/solus-project/budgie-panel/applets/{e1611d4a-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=1
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{bcb411e4-b0da-11e8-88f2-f788eed09528}]
position=0
alignment='start'
name='Budgie Menu'

[com/solus-project/budgie-panel/applets/{bc239a63-4393-11e8-a325-934928330824}]
position=2
alignment='center'

[com/solus-project/budgie-panel/applets/{14c4af2e-b0db-11e8-88f2-f788eed09528}]
position=9
alignment='end'
name='User Indicator'

[com/solus-project/budgie-panel/applets/{9ccf9724-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=9
alignment='end'
name='User Indicator'

[com/solus-project/budgie-panel/applets/{a35a8567-dabb-11e9-b23b-0b98712e6d7b}]
position=2
alignment='start'
name='ShowTime'

[com/solus-project/budgie-panel/applets/{bde3b882-763a-11e9-b441-9fea6856116e}]
position=10
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{f441f7d6-26c1-11e9-b617-525400320717}]
position=13
alignment='end'
name='Raven Trigger'

[com/solus-project/budgie-panel/applets/{c4d4fa98-763a-11e9-b441-9fea6856116e}]
position=9
alignment='end'
name='Keyboard Layout'

[com/solus-project/budgie-panel/applets/{b24ee34d-09de-11ea-af56-cdd5f8c5d00f}]
position=6
alignment='end'
name='Places'

[com/solus-project/budgie-panel/applets/{a9f75270-763a-11e9-b441-9fea6856116e}]
position=12
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{ca1703f8-1ecd-11e9-90d7-525400320717}]
position=18
alignment='end'
name='Clock'

[com/solus-project/budgie-panel/applets/{c37e772c-dabd-11e9-b23b-0b98712e6d7b}]
position=4
alignment='start'
name='WeatherShow'

[com/solus-project/budgie-panel/applets/{b0170cb8-e5ca-11e9-8f26-f742aca3153e}]
position=4
alignment='start'
name='WeatherShow'

[com/solus-project/budgie-panel/applets/{b24ee352-09de-11ea-af56-cdd5f8c5d00f}]
position=11
alignment='end'
name='User Indicator'

[com/solus-project/budgie-panel/applets/{c10c7b24-6197-11e8-96a0-e7f827d77ada}]
position=2
alignment='center'
name='Places'

[com/solus-project/budgie-panel/applets/{afe400e6-751b-11e8-b992-00163e000000}]
position=3
alignment='start'
name='Window Previews'

[com/solus-project/budgie-panel/applets/{7a2aca6c-dabd-11e9-b23b-0b98712e6d7b}]
position=3
alignment='end'
name='Budgie Brightness Control'

[com/solus-project/budgie-panel/applets/{a35a8570-dabb-11e9-b23b-0b98712e6d7b}]
position=10
alignment='end'
name='Notifications'

[com/solus-project/budgie-panel/applets/{d334e756-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=4
alignment='end'
name='Status Indicator'

[com/solus-project/budgie-panel/applets/{9172da1c-95dd-11ea-9a54-33399d140dd8}]
position=3
alignment='center'
name='BrightnessController'

[com/solus-project/budgie-panel/applets/{01fa7f6e-0944-11ea-9873-cd0a3e495e06}]
position=5
alignment='end'
name='Night Light'

[com/solus-project/budgie-panel/applets/{5cad6aae-763a-11e9-b441-9fea6856116e}]
position=1
alignment='center'
name='Places'

[com/solus-project/budgie-panel/applets/{467df35c-1ece-11e9-90d7-525400320717}]
position=1
alignment='end'
name='System Tray'

[com/solus-project/budgie-panel/applets/{a35a8573-dabb-11e9-b23b-0b98712e6d7b}]
position=11
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{2b66ff60-b00a-11e8-a863-172bad3a3449}]
position=10
alignment='end'
name='Clock'

[com/solus-project/budgie-panel/applets/{bc239a64-4393-11e8-a325-934928330824}]
position=8
alignment='end'

[com/solus-project/budgie-panel/applets/{c76a62b2-95c8-11ea-9f05-25964637bc33}]
position=3
alignment='center'
name='BrightnessController'

[com/solus-project/budgie-panel/applets/{41a1f786-b0db-11e8-88f2-f788eed09528}]
position=2
alignment='end'
name='Budgie Brightness Control'

[com/solus-project/budgie-panel/applets/{807b023e-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=2
alignment='center'
name='Places'

[com/solus-project/budgie-panel/applets/{70648dba-763b-11e9-b441-9fea6856116e}]
position=0
alignment='end'
name='System Tray'

[com/solus-project/budgie-panel/applets/{67bba338-26c2-11e9-b617-525400320717}]
position=0
alignment='center'
name='System Monitor'

[com/solus-project/budgie-panel/applets/{4e10f24e-26c2-11e9-b617-525400320717}]
position=0
alignment='end'
name='System Tray'

[com/solus-project/budgie-panel/applets/{aa58c280-1ece-11e9-90d7-525400320717}]
position=7
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{3dde8fe4-6197-11e8-96a0-e7f827d77ada}]
position=0
alignment='start'
name='Budgie Menu'

[com/solus-project/budgie-panel/applets/{28a30152-b00a-11e8-a863-172bad3a3449}]
position=11
alignment='end'
name='Raven Trigger'

[com/solus-project/budgie-panel/applets/{b24ee347-09de-11ea-af56-cdd5f8c5d00f}]
position=0
alignment='end'
name='AppIndicator Applet'

[com/solus-project/budgie-panel/applets/{1f3713a0-1ece-11e9-90d7-525400320717}]
position=10
alignment='end'
name='Status Indicator'

[com/solus-project/budgie-panel/applets/{e5640cf4-dabc-11e9-b23b-0b98712e6d7b}]
position=3
alignment='start'
name='Icon Task List'

[com/solus-project/budgie-panel/applets/{7440123a-dd31-11e9-bf9f-809b2033dc94}]
position=4
alignment='start'
name='WeatherShow'

[com/solus-project/budgie-panel/applets/{a35a8565-dabb-11e9-b23b-0b98712e6d7b}]
position=0
alignment='start'
name='Budgie Menu'

[com/solus-project/budgie-panel/applets/{9dee6d56-763a-11e9-b441-9fea6856116e}]
position=14
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{aafc1390-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=7
alignment='end'
name='Keyboard Layout'

[com/solus-project/budgie-panel/applets/{a59f49ed-4393-11e8-a325-934928330824}]
position=0

[com/solus-project/budgie-panel/applets/{c59bc052-1ecd-11e9-90d7-525400320717}]
position=19
alignment='end'
name='Raven Trigger'

[com/solus-project/budgie-panel/applets/{be3aa00c-1ece-11e9-90d7-525400320717}]
position=4
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{c9253374-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=0
alignment='end'
name='System Tray'

[com/solus-project/budgie-panel/applets/{b24ee350-09de-11ea-af56-cdd5f8c5d00f}]
position=9
alignment='end'
name='Separator'

[com/solus-project/budgie-panel/applets/{01fa7f68-0944-11ea-9873-cd0a3e495e06}]
position=0
alignment='center'
name='Clock'

[com/solus-project/budgie-panel/applets/{a2ae9924-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=8
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{726d84fe-dabd-11e9-b23b-0b98712e6d7b}]
position=5
alignment='end'
name='RotationLock'

[com/solus-project/budgie-panel/applets/{9c8d1602-b5a5-11e8-a0ad-9dd098ee626e}]
position=0
alignment='start'
name='Budgie Menu'

[com/solus-project/budgie-panel/applets/{f953977e-1ecf-11e9-90d7-525400320717}]
position=0
alignment='center'
name='System Monitor'

[com/solus-project/budgie-panel/applets/{bc239a67-4393-11e8-a325-934928330824}]
position=11
alignment='end'

[com/solus-project/budgie-panel/applets/{d644f644-1ecd-11e9-90d7-525400320717}]
position=16
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{d8a57c96-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=2
alignment='end'
name='Budgie Brightness Control'

[com/solus-project/budgie-panel/applets/{01fa7f6c-0944-11ea-9873-cd0a3e495e06}]
position=3
alignment='end'
name='QuickNote'

[com/solus-project/budgie-panel/applets/{ba372c0c-4393-11e8-a325-934928330824}]
position=3
alignment='end'

[com/solus-project/budgie-panel/applets/{0e4a6c68-45df-11e8-916c-a92ff7772c4d}]
position=1
alignment='center'

[com/solus-project/budgie-panel/applets/{a35a856f-dabb-11e9-b23b-0b98712e6d7b}]
position=1
alignment='center'
name='Places'

[com/solus-project/budgie-panel/applets/{01fa7f71-0944-11ea-9873-cd0a3e495e06}]
position=8
alignment='end'
name='Status Indicator'

[com/solus-project/budgie-panel/applets/{b6c2b22e-763a-11e9-b441-9fea6856116e}]
position=11
alignment='end'
name='Notifications'

[com/solus-project/budgie-panel/applets/{4b3105d2-763b-11e9-b441-9fea6856116e}]
position=4
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{a35a8574-dabb-11e9-b23b-0b98712e6d7b}]
position=13
alignment='end'
name='User Indicator'

[com/solus-project/budgie-panel/applets/{8a7e16f4-763a-11e9-b441-9fea6856116e}]
position=16
alignment='end'
name='Clock'

[com/solus-project/budgie-panel/applets/{5b21b33e-dabc-11e9-b23b-0b98712e6d7b}]
position=9
alignment='end'
name='Keyboard Layout'

[com/solus-project/budgie-panel/applets/{2667f1de-26c2-11e9-b617-525400320717}]
position=6
alignment='end'
name='Keyboard Layout'

[com/solus-project/budgie-panel/applets/{66e227a2-763b-11e9-b441-9fea6856116e}]
position=1
alignment='end'
name='Status Indicator'

[com/solus-project/budgie-panel/applets/{132d22d2-77a9-11e9-b2d4-2d94a7138723}]
position=11
alignment='end'
name='Clock'

[com/solus-project/budgie-panel/applets/{87b34f98-1ece-11e9-90d7-525400320717}]
position=6
alignment='end'
name='Budgie Brightness Control'

[com/solus-project/budgie-panel/applets/{b194ed7a-dabd-11e9-b23b-0b98712e6d7b}]
position=8
alignment='end'
name='DropBy'

[com/solus-project/budgie-panel/applets/{2bce2634-26c2-11e9-b617-525400320717}]
position=5
alignment='end'
name='DropBy'

[com/solus-project/budgie-panel/applets/{bc0418cc-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=6
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{cde19cc2-763a-11e9-b441-9fea6856116e}]
position=8
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{5cf90046-b00a-11e8-a863-172bad3a3449}]
position=2
alignment='end'
name='AppIndicator Applet'

[com/solus-project/budgie-panel/applets/{c198a21c-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=3
alignment='end'
name='AppIndicator Applet'

[com/solus-project/budgie-panel/applets/{91e22ba6-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=11
alignment='end'
name='Raven Trigger'

[com/solus-project/budgie-panel/applets/{432adf7a-6197-11e8-96a0-e7f827d77ada}]
position=1
alignment='start'
name='Icon Task List'

[com/solus-project/budgie-panel/applets/{0af5a6e2-b0db-11e8-88f2-f788eed09528}]
position=10
alignment='end'
name='Clock'

[com/solus-project/budgie-panel/applets/{0460566c-26c2-11e9-b617-525400320717}]
position=11
alignment='end'
name='User Indicator'

[com/solus-project/budgie-panel/applets/{79d3268c-1ece-11e9-90d7-525400320717}]
position=8
alignment='end'
name='Caffeine'

[com/solus-project/budgie-panel/applets/{b24ee34c-09de-11ea-af56-cdd5f8c5d00f}]
position=5
alignment='end'
name='Night Light'

[com/solus-project/budgie-panel/applets/{2d65d7d8-b0db-11e8-88f2-f788eed09528}]
position=6
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{948590d2-1ece-11e9-90d7-525400320717}]
position=9
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{01fa7f66-0944-11ea-9873-cd0a3e495e06}]
position=1
alignment='start'
name='Spacer'

[com/solus-project/budgie-panel/applets/{a35a8569-dabb-11e9-b23b-0b98712e6d7b}]
position=0
alignment='end'
name='AppIndicator Applet'

[com/solus-project/budgie-panel/applets/{cfb5deb0-1ecd-11e9-90d7-525400320717}]
position=17
alignment='end'
name='User Indicator'

[com/solus-project/budgie-panel/applets/{53a32066-763a-11e9-b441-9fea6856116e}]
position=0
alignment='center'
name='System Monitor'

[com/solus-project/budgie-panel/applets/{680bc8d0-b436-11e8-9fed-3fa40103cb8b}]
position=2
alignment='end'
name='Budgie Brightness Control'

[com/solus-project/budgie-panel/applets/{a35a856a-dabb-11e9-b23b-0b98712e6d7b}]
position=1
alignment='end'
name='System Tray'

[com/solus-project/budgie-panel/applets/{9402ec40-763a-11e9-b441-9fea6856116e}]
position=15
alignment='end'
name='User Indicator'

[com/solus-project/budgie-panel/applets/{1ee926b2-26c2-11e9-b617-525400320717}]
position=7
alignment='end'
name='Notifications'

[com/solus-project/budgie-panel/applets/{b24ee34f-09de-11ea-af56-cdd5f8c5d00f}]
position=8
alignment='end'
name='Status Indicator'

[com/solus-project/budgie-panel/applets/{97d30ef8-463a-11e8-8265-7d5ff59b157b}]
position=1
alignment='end'

[com/solus-project/budgie-panel/applets/{7556bc5e-763a-11e9-b441-9fea6856116e}]
position=2
alignment='center'
name='Workspace Switcher'

[com/solus-project/budgie-panel/applets/{2d6cfe84-dabd-11e9-b23b-0b98712e6d7b}]
position=2
alignment='center'
name='Workspace Switcher'

[com/solus-project/budgie-panel/applets/{01fa7f6d-0944-11ea-9873-cd0a3e495e06}]
position=4
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{5ecee8ca-763b-11e9-b441-9fea6856116e}]
position=2
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{fd3aad7e-26c1-11e9-b617-525400320717}]
position=1
alignment='end'
name='Status Indicator'

[com/solus-project/budgie-panel/applets/{8ca79004-1ece-11e9-90d7-525400320717}]
position=5
alignment='end'
name='Night Light'

[com/solus-project/budgie-panel/applets/{a35a8572-dabb-11e9-b23b-0b98712e6d7b}]
position=12
alignment='end'
name='Separator'

[com/solus-project/budgie-panel/applets/{aaa12222-6197-11e8-96a0-e7f827d77ada}]
position=2
alignment='start'
name='ShowTime'

[com/solus-project/budgie-panel/applets/{ba372c0a-4393-11e8-a325-934928330824}]
position=13
alignment='end'

[com/solus-project/budgie-panel/applets/{b570b6b4-b5a6-11e8-9c0b-4fd83cf1c1b5}]
position=5
alignment='end'
name='Notifications'

[com/solus-project/budgie-panel/applets/{01fa7f75-0944-11ea-9873-cd0a3e495e06}]
position=12
alignment='end'
name='Raven Trigger'

[com/solus-project/budgie-panel/applets/{b24ee346-09de-11ea-af56-cdd5f8c5d00f}]
position=0
alignment='center'
name='Clock'

[com/solus-project/budgie-panel/applets/{f8b0b3b0-b435-11e8-9fed-3fa40103cb8b}]
position=1
alignment='center'
name='Workspace Switcher'

[com/solus-project/budgie-panel/applets/{08f3cabe-1ed0-11e9-90d7-525400320717}]
position=1
alignment='center'
name='Workspace Switcher'

[com/solus-project/budgie-panel/applets/{f4373a6a-b0da-11e8-88f2-f788eed09528}]
position=1
alignment='center'
name='Workspace Switcher'

[com/solus-project/budgie-panel/applets/{bc239a62-4393-11e8-a325-934928330824}]
position=4
alignment='end'

[com/solus-project/budgie-panel/applets/{bc239a66-4393-11e8-a325-934928330824}]
position=10
alignment='end'

[com/solus-project/budgie-panel/applets/{b24ee349-09de-11ea-af56-cdd5f8c5d00f}]
position=2
alignment='end'
name='Caffeine'

[com/solus-project/budgie-panel/applets/{fd210fbc-b435-11e8-9fed-3fa40103cb8b}]
position=2
alignment='center'
name='Places'

[com/solus-project/budgie-panel/applets/{5783414e-b00a-11e8-a863-172bad3a3449}]
position=5
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{43b339a0-b436-11e8-9fed-3fa40103cb8b}]
position=6
alignment='end'
name='Spacer'

[com/solus-project/budgie-panel/applets/{b24ee34a-09de-11ea-af56-cdd5f8c5d00f}]
position=3
alignment='end'
name='QuickNote'

[com/solus-project/budgie-panel/applets/{f420de1c-1ecd-11e9-90d7-525400320717}]
position=14
alignment='end'
name='Spacer'

[com/ubuntu/update-notifier]
release-check-time=uint32 1569671096
show-apport-crashes=false

[com/ubuntu/content/hub/source]
contacts=@as []
pictures=['']
videos=['']

[com/ubuntu/sound]
allow-amplified-volume=true

[com/ubuntu/user-interface/desktop]
text-scaling-factor=1.0
scaling-factor=uint32 0
cursor-size=24

[com/ubuntu/user-interface]
scale-factor={'LVDS-1': 8}

[ca/desrt/dconf-editor]
window-width=851
saved-pathbar-path='/org/gnome/desktop/lockdown/'
window-is-fullscreen=false
show-warning=false
window-height=471
saved-view='/org/gnome/desktop/lockdown/'
window-is-maximized=false

[system/proxy]
use-same-proxy=false

[system/locale]
region='ru_RU.UTF-8'
EOF
dconf load / < dconf-settings.ini
EOF
rm dconf-settings.ini
EOF
dconf reset -f /org/blueman/plugins/recentconns
EOF
cat << EOF > pulseaudio.desktop
[Desktop Entry]
Type=Application
Exec=pulseaudio
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[ru]=pulseaudio
Name=pulseaudio
Comment[ru]=pulseaudio
Comment=pulseaudio
EOF
chmod -R a+rwx pulseaudio.desktop
EOF
mv pulseaudio.desktop ~/.config/autostart/
EOF
rm pulseaudio.desktop
EOF
rm -rf ~/.cache/*
EOF
killall budgie-panel
EOF
budgie-panel
EOF
killall showtime_desktop
EOF
showtime_desktop
EOF
cat << EOF > nemo-desktop.desktop
[Desktop Entry]
Type=Application
Exec=nemo-desktop
Name=nemo-desktop
EOF
chmod -R a+rwx nemo-desktop.desktop
EOF
mv nemo-desktop.desktop ~/.config/autostart/
EOF
rm nemo-desktop.desktop
EOF
cd ~/.config/autostart/
EOF
rm nemo-desktop.desktop
EOF
cd -
EOF
cat << EOF > Griggorii.json
{
    "background-color": "#393634",
    "badge-color": "#AC7EA8",
    "bold-color": "#FFFFFF",
    "comment": "",
    "cursor-background-color": "#8C3FBF",
    "cursor-foreground-color": "#FFFFFF",
    "foreground-color": "#0001FF",
    "highlight-background-color": "#000000",
    "highlight-foreground-color": "#FFFFFF",
    "name": "Griggorii",
    "palette": [
        "#2E3436",
        "#CC0403",
        "#19CB00",
        "#CECB00",
        "#001CD1",
        "#CB1ED1",
        "#0DCDCD",
        "#E5E5E5",
        "#4D4D4D",
        "#CC0000",
        "#23FD00",
        "#FFFD00",
        "#F57900",
        "#FD28FF",
        "#14FFFF",
        "#FFFFFF"
    ],
    "use-badge-color": false,
    "use-bold-color": false,
    "use-cursor-color": true,
    "use-highlight-color": false,
    "use-theme-colors": false
}
EOF
mv Griggorii.json ~/.config/tilix/schemes/
EOF
rm Griggorii.json
EOF
cat << EOF > Griggorii_2.json
{
    "background-color": "#33302F",
    "badge-color": "#AC7EA8",
    "bold-color": "#00A5FF",
    "comment": "",
    "cursor-background-color": "#8C3FBF",
    "cursor-foreground-color": "#FFFFFF",
    "foreground-color": "#04503C",
    "highlight-background-color": "#CC0000",
    "highlight-foreground-color": "#00466C",
    "name": "Griggorii_2",
    "palette": [
        "#04503C",
        "#CC0000",
        "#009600",
        "#D06B00",
        "#0000CC",
        "#0578B4",
        "#D66D06",
        "#CCCCCC",
        "#808080",
        "#CC0000",
        "#009600",
        "#D06B00",
        "#0000CC",
        "#F57900",
        "#0087CC",
        "#FFFFFF"
    ],
    "use-badge-color": false,
    "use-bold-color": false,
    "use-cursor-color": false,
    "use-highlight-color": false,
    "use-theme-colors": false
}
EOF
mv Griggorii_2.json ~/.config/tilix/schemes/
EOF
rm Griggorii_2.json
EOF
cat << EOF > Griggorii_3.json
{
    "background-color": "#33302F",
    "badge-color": "#AC7EA8",
    "bold-color": "#00A5FF",
    "comment": "",
    "cursor-background-color": "#8C3FBF",
    "cursor-foreground-color": "#FFFFFF",
    "foreground-color": "#0E4E3D",
    "highlight-background-color": "#CC0000",
    "highlight-foreground-color": "#00466C",
    "name": "Griggorii_3",
    "palette": [
        "#095541",
        "#CC0000",
        "#009600",
        "#D06B00",
        "#0E4E3D",
        "#CE5C00",
        "#0087CC",
        "#CCCCCC",
        "#808080",
        "#CC0000",
        "#009600",
        "#D06B00",
        "#053E80",
        "#F57900",
        "#0087CC",
        "#FFFFFF"
    ],
    "use-badge-color": false,
    "use-bold-color": false,
    "use-cursor-color": false,
    "use-highlight-color": false,
    "use-theme-colors": false
}
EOF
mv Griggorii_3.json ~/.config/tilix/schemes/
EOF
rm Griggorii_3.json
EOF
cat << EOF > nemo-desktop.desktop
[Desktop Entry]
Type=Application
Name=Nemo
Comment=Start Nemo desktop at log in
Exec=nemo-desktop
AutostartCondition=GSettings org.nemo.desktop show-desktop-icons
X-GNOME-AutoRestart=true
X-GNOME-Autostart-Delay=4
NoDisplay=false
EOF
chmod -R a+rx nemo-desktop.desktop
EOF
sudo mv nemo-desktop.desktop /etc/xdg/autostart/
EOF
rm nemo-desktop.desktop
EOF
sudo rm -rf /usr/share/gnome-shell/extensions/desktop-icons@csoriano
EOF
sudo rm /usr/share/onboard/themes/Droid.theme
EOF
cat << EOF > Droid.theme
<?xml version="1.0" ?>
<theme format="1.3" name="Droid">
  <color_scheme>Granite</color_scheme>
  <background_gradient>81.0</background_gradient>
  <key_style>gradient</key_style>
  <roundrect_radius>17.0</roundrect_radius>
  <key_size>99.0</key_size>
  <key_stroke_width>63.0</key_stroke_width>
  <key_fill_gradient>4.0</key_fill_gradient>
  <key_stroke_gradient>25.0</key_stroke_gradient>
  <key_gradient_direction>5.0</key_gradient_direction>
  <key_label_font>Normal bold</key_label_font>
  <key_label_overrides/>
  <key_shadow_strength>70.0</key_shadow_strength>
  <key_shadow_size>33.0</key_shadow_size>
</theme>
EOF
sudo mv ./Droid.theme /usr/share/onboard/themes/
EOF
rm ./Droid.theme
EOF
sudo cp /usr/bin/nautilus-desktop /usr/bin/nautilus-desktop.backup
EOF
sudo rm /usr/bin/nautilus-desktop
EOF
sudo rm -rf /etc/xdg/autostart/nautilus-autostart.desktop /root/.config/autostart/nemo-desktop.desktop /root/.local/share/gvfs-metadata/*
EOF
sudo rm -rf ~/.local/share/gvfs-metadata/*
EOF
sudo rm -rf /root/.config/autostart/nemo*
EOF
sudo -u  '/usr/sbin/gdm3' '/usr/bin/dbus-launch' gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
EOF
sudo -u  gdm3 dbus-launch gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
EOF
sudo systemctl set-default graphical.target
EOF
sudo -u  gdm dbus-launch gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
EOF
sudo rm -rf /root/.local/share/gvfs-metadata*
EOF
sudo rm /etc/environment
EOF
cat << EOF > environment
export QT_QPA_PLATFORMTHEME=qt5ct
QT_X11_NO_MITSHM=1
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
EOF
sudo mv ./environment /etc/
EOF
rm ./environment 
EOF
killall nautilus-desktop*
EOF
nemo*
EOF
rm -rf ~/.config/autostart/nemo* ~/.config/autostart/nautilus*
EOF
x-www-browser www.github.com/Griggorii/Setting_dconf_linux_OS20.04_V43.0_By_Griggorii_Wayland_adaptation
EOF
killall plank
EOF
plank
EOF
