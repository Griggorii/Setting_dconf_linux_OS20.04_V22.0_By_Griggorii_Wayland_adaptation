#!/bin/bash

####Griggorii@gmail.com mit license dconf-config

mkdir backup-theme-icon
EOF
cd backup-theme-icon
EOF
dconf dump /org/cinnamon/desktop/interface/ > backup-cinnamon-theme-icon-mouse-font.dconf
EOF
dconf dump /org/gnome/desktop/interface/ > backup-gnome-theme-icon-mouse-font.dconf
EOF
dconf dump /org/gnome/shell/extensions/user-theme/ > backup-gnome-shell-theme.dconf
EOF
dconf dump /org/cinnamon/desktop/background/ > backup-cinnamon-background-wallpaper.dconf
EOF
dconf dump /org/gnome/desktop/background/ > backup-gnome-wallpaper.dconf
EOF
dconf dump /org/gnome/desktop/screensaver/ > backup-gnome-screensaver-wallpaper.dconf
EOF
cd -
EOF
tar -czvf backup-theme-icon.tar.gz ./backup-theme-icon 
EOF
rm -rf ./backup-theme-icon
EOF
cat << EOF > backup-theme-icon-restore.sh
tar -xzvf ./backup-theme-icon.tar.gz && cd backup-theme-icon && dconf load /org/cinnamon/desktop/interface/ < backup-cinnamon-theme-icon-mouse-font.dconf && dconf load /org/gnome/desktop/interface/ < backup-gnome-theme-icon-mouse-font.dconf && dconf load /org/gnome/shell/extensions/user-theme/ < backup-gnome-shell-theme.dconf && dconf load /org/cinnamon/desktop/background/ < backup-cinnamon-background-wallpaper.dconf && dconf load /org/gnome/desktop/background/ < backup-gnome-wallpaper.dconf && dconf load /org/gnome/desktop/screensaver/ <  backup-gnome-screensaver-wallpaper.dconf && rm -rf backup-cinnamon-theme-icon-mouse-font.dconf backup-gnome-theme-icon-mouse-font.dconf backup-gnome-shell-theme.dconf backup-cinnamon-background-wallpaper.dconf backup-gnome-wallpaper.dconf backup-gnome-screensaver-wallpaper.dconf ./backup-cinnamon-theme-icon-mouse-font.dconf ./backup-gnome-theme-icon-mouse-font.dconf ./backup-gnome-shell-theme.dconf && cd - && rm -rf ./backup-theme-icon.tar.gz ./backup-theme-icon ./backup-cinnamon-background-wallpaper.dconf ./backup-gnome-wallpaper.dconf ./backup-gnome-screensaver-wallpaper.dconf backup-theme-icon-restore.sh
EOF
chmod -R a+rwx backup-theme-icon-restore.sh
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
sudo rm -rf /usr/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com
EOF
sudo rm -rf $HOME/.local/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com
EOF
sudo rm -rf ~/.local/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com
EOF
sudo mv ~/.local/share/gnome-shell/extensions ~/
EOF
sudo mv ~/.local/share/gnome-shell/extensions $HOME/
EOF
sudo mv $HOME/.local/share/gnome-shell/extensions ~/
EOF
sudo mv $HOME/.local/share/gnome-shell/extensions $HOME/
EOF
sudo apt update
EOF
sudo apt --reinstall install git -y
EOF
sudo apt --reinstall install gnome-shell-extension-autohidetopbar gnome-shell-extension-system-monitor gnome-shell-extension-appindicator gnome-shell-extension-desktop-icons gnome-shell-extension-tilix-dropdown unity-settings-daemon-schemas gnome-shell-common gnome-shell-extension-prefs nautilus-extension-gnome-terminal gnome-tweak-tool gnome-tweaks gnome-screensaver gnome-session-canberra gnome-shell-extension-impatience -y
EOF 
sudo apt --reinstall install gnome-shell-extensions -y
EOF 
git clone https://github.com/Griggorii/ubuntu-21.04-hirsute-desktop-amd64-griggorii-zsync.iso.git && cd ubuntu-21.04-hirsute-desktop-amd64-griggorii-zsync.iso
EOF
sudo dpkg -i *.deb
EOF
sudo chmod -R 755 /usr/share/themes/*
EOF
sudo glib-compile-schemas /usr/share/glib-2.0/schemas
EOF
sudo chmod -R a+rwx Replace_nemo-to-nautilus_dconf_linux_OS21.04_V46.0_By_Griggorii_Wayland_adaptation.sh
EOF
sudo chmod -R a+rwx ./Replace_nemo-to-nautilus_dconf_linux_OS21.04_V46.0_By_Griggorii_Wayland_adaptation.sh
EOF
chmod -R a+rwx Replace_nemo-to-nautilus_dconf_linux_OS21.04_V46.0_By_Griggorii_Wayland_adaptation.sh
EOF
chmod -R a+rwx ./Replace_nemo-to-nautilus_dconf_linux_OS21.04_V46.0_By_Griggorii_Wayland_adaptation.sh
EOF
./Replace_nemo-to-nautilus_dconf_linux_OS21.04_V46.0_By_Griggorii_Wayland_adaptation.sh
EOF
cat << EOF > dconf-Orchis-shell-icon-oomox.ini
[org/cinnamon/desktop/interface]
clock-show-date=true
clock-show-seconds=true
cursor-blink-time=1200
cursor-size=24
cursor-theme='breeze_cursors'
font-name='Ubuntu 11.5'
gtk-theme='Pop-dark-oomox-griggorii_theme_2020_V4'
icon-theme='oomox-griggorii'
keyboard-layout-prefer-variant-names=false
scaling-factor=uint32 0
text-scaling-factor=1.0
toolkit-accessibility=false

[org/gnome/desktop/interface]
buttons-have-icons=true
clock-format='24h'
clock-show-date=true
clock-show-seconds=true
clock-show-weekday=true
cursor-size=24
cursor-theme='breeze_cursors'
document-font-name='DejaVu Sans Mono Bold 11'
enable-animations=true
enable-hot-corners=true
font-name='Ubuntu 11'
gtk-im-module='gtk-im-context-simple'
gtk-theme='Pop-dark-oomox-griggorii_theme_2020_V4'
icon-theme='oomox-griggorii'
locate-pointer=true
menus-have-icons=true
monospace-font-name='Ubuntu Mono 11'
scaling-factor=uint32 1
show-battery-percentage=true
text-scaling-factor=1.0
toolbar-style='both-horiz'
toolkit-acc=false
toolkit-accessibility=false

[org/gnome/shell/extensions/user-theme]
name='Orchis'
EOF
dconf load / < dconf-Orchis-shell-icon-oomox.ini
EOF
rm dconf-Orchis-shell-icon-oomox.ini
EOF
rm ./dconf-Orchis-shell-icon-oomox.ini
EOF
rm 'dconf-Orchis-shell-icon-oomox.ini'
EOF
rm ./'dconf-Orchis-shell-icon-oomox.ini'
EOF
dconf reset -f /org/blueman/plugins/recentconns/
EOF
cd $HOME/Загрузки
EOF
cd $HOME/Downloads
EOF
cd $HOME/Download
EOF
cd ~/Загрузки
EOF
cd ~/"Загрузки"
EOF
cd ~/Downloads
EOF
cd ~/"Downloads"
EOF
cd ~/"Download"
EOF
cd ~/"Shkarkime"
EOF
cd ~/"Yükləmələr"
EOF
cd ~/"ውርዶች"
EOF
cd ~/"التحميلات"
EOF
cd ~/"Alitahmilat"
EOF
cd ~/"Ներբեռնումներ"
EOF
cd ~/"Aflaai"
EOF
cd ~/"Deskargak"
EOF
cd ~/"Спампаваць"
EOF
cd ~/"ডাউনলোড"
EOF
cd ~/"ဒေါင်းလုပ်များ"
EOF
cd ~/"Изтегляния"
EOF
cd ~/"Preuzimanja"
EOF
cd ~/"Dadlwythiadau"
EOF
cd ~/"Letöltések"
EOF
cd ~/"Tải xuống"
EOF
cd ~/"Hoʻoiho"
EOF
cd ~/"Descargas"
EOF
cd ~/"Λήψεις"
EOF
cd ~/"ჩამოტვირთვები"
EOF
cd ~/"ડાઉનલોડ્સ"
EOF
cd ~/"Okulandiwe"
EOF
cd ~/"הורדות"
EOF
cd ~/"Nbudata"
EOF
cd ~/"דאַונלאָודז"
EOF
cd ~/"Íoslódálacha"
EOF
cd ~/"Niðurhal"
EOF
cd ~/"Descargas"
EOF
cd ~/"Gbigba lati ayelujara"
EOF
cd ~/"Жүктеулер"
EOF
cd ~/"ಡೌನ್‌ಲೋಡ್‌ಗಳು"
EOF
cd ~/"Descàrregues"
EOF
cd ~/"Жүктөөлөр"
EOF
cd ~/"下載"
EOF
cd ~/"다운로드"
EOF
cd ~/"Téléchargements"
EOF
cd ~/"Dakêşandin"
EOF
cd ~/"ទាញយក"
EOF
cd ~/"Videos"
EOF
cd ~/"Lejupielādes"
EOF
cd ~/"Atsisiuntimai"
EOF
cd ~/"Преземања"
EOF
cd ~/"Fampidinana"
EOF
cd ~/"Muat turun"
EOF
cd ~/"ഡൗൺലോഡുകൾ"
EOF
cd ~/"Tniżżil"
EOF
cd ~/"Tikiake"
EOF
cd ~/"डाउनलोड"
EOF
cd ~/"Татаж авах"
EOF
cd ~/"डाउनलोडहरू"
EOF
cd ~/"Nedlastinger"
EOF
cd ~/"ଡାଉନଲୋଡ୍"
EOF
cd ~/"Descargas"
EOF
cd ~/"ਡਾਉਨਲੋਡਸ"
EOF
cd ~/"بارگیری"
EOF
cd ~/"Pobrane"
EOF
cd ~/"Transferências"
EOF
cd ~/"ډاونلوډونه"
EOF
cd ~/"Gukuramo"
EOF
cd ~/"Descărcări"
EOF
cd ~/"Lolomiina"
EOF
cd ~/"Mga Pag-download"
EOF
cd ~/"Tse jarolitsoeng"
EOF
cd ~/"බාගත කිරීම්"
EOF
cd ~/"ڊائونلوڊز"
EOF
cd ~/"K stiahnutiu"
EOF
cd ~/"Prenosi"
EOF
cd ~/"Soo dejiso"
EOF
cd ~/"Vipakuzi"
EOF
cd ~/"Unduhan"
EOF
cd ~/"Боргириҳо"
EOF
cd ~/"ดาวน์โหลด"
EOF
cd ~/"பதிவிறக்கங்கள்"
EOF
cd ~/"Йөкләүләр"
EOF
cd ~/"డౌన్‌లోడ్‌లు"
EOF
cd ~/"İndirilenler"
EOF
cd ~/"Süklemeler"
EOF
cd ~/"Yuklamalar"
EOF
cd ~/"چۈشۈرۈش"
EOF
cd ~/"Завантаження"
EOF
cd ~/"ڈاؤن لوڈ"
EOF
cd ~/"Mga Pag-download"
EOF
cd ~/"Lataukset"
EOF
cd ~/"Téléchargements"
EOF
cd ~/"Saukewa"
EOF
cd ~/"डाउनलोड"
EOF
cd ~/"Preuzimanja"
EOF
cd ~/"Zotsitsa"
EOF
cd ~/"Stahování"
EOF
cd ~/"Nedladdningar"
EOF
cd ~/"Zvirikutorwa"
EOF
cd ~/"Luchdaich a-nua"
EOF
cd ~/"Elŝutoj"
EOF
cd ~/"Allalaadimised"
EOF
cd ~/"Unduhan"
EOF
cd ~/"ダウンロード"
EOF
x-www-browser https://github.com/Griggorii/ubuntu-21.04-hirsute-desktop-amd64-griggorii-zsync.iso
EOF
cd -
EOF
cd -
EOF
