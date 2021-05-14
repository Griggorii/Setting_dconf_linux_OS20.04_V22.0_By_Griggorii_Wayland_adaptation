# Setting_dconf_linux_OS21.04_V46.0_By_Griggorii_Wayland_adaptation Nemo and Nautilus filemanger + sensor gdm3 touchpad
dconf , gnome , wayland , new os , package full os , V46.0 perfomance wayland , tango gedit , fast , global setting , epb , patent | ﻿Ъjour „¤Є Ђ  8|”е| `•X / nemo-icon-view-auto-layout true 8

re-update nautilus nemo dconf 07.05.2021 + EPB cpu all perfomance -> saved energy replace parametr "0" to "15" example sudo sh -c "/usr/bin/echo 15 /sys/devices/system/cpu/cpu*/power/energy_perf_bias" <- 15 -> planshet notebook battery power save | 08.04.2021 dconf 21.04 recomend V46.0 fix nautilus fractional scaling delete rm -rf icons nautilus root string fix | test Testing-setting-good-1-variant_and_2-variant?.zip perfomance location-mode='path-bar to location-mode='filename-entry'| 15.01.2021 fix [org/blueman/transfer] shared-path=''

#################################################################################################################

Download OS full theme collections fedora: https://youtu.be/BNrL1aVWM9Y | ubuntu/debian https://youtu.be/r0ki7MUEv7o


Fedora

$ sudo dnf install gnome-shell-extensions nemo

Ubuntu , debian

$ sudo apt update && sudo apt install nemo -y

_________________________________________________________________________________________________________________

Ubuntu debian

$ sudo rm -rf /usr/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com $HOME/.local/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com && sudo apt update && sudo apt --reinstall install gnome-shell-extensions -y && sudo chmod -R 755 /usr/share/themes/Orchis && sudo glib-compile-schemas /usr/share/glib-2.0/schemas

$ sudo apt update && sudo apt --reinstall install git gnome-shell-extension-autohidetopbar gnome-shell-extension-system-monitor gnome-shell-extension-appindicator gnome-shell-extension-desktop-icons gnome-shell-extension-tilix-dropdown unity-settings-daemon-schemas gnome-shell-common gnome-shell-extension-prefs nautilus-extension-gnome-terminal gnome-tweak-tool gnome-tweaks gnome-screensaver gnome-session-canberra gnome-shell-extension-impatience gnome-shell-extensions -y

_________________________________________________________________________________________________________________

$ chmod -R a+rwx Setting_dconf_linux_OS21.04_V46.0_By_Griggorii_Wayland_vertical_adaptation.sh

$ ./Setting_dconf_linux_OS21.04_V46.0_By_Griggorii_Wayland_vertical_adaptation.sh

ignore hide icons re session ! Exit session ! New session run : Ru игнорируя что иконки пока еще не появились выйти и заити и они появятся

________________________________________________________________________________________________________________________________________

DE Budgie fix recompilation icons nemo programm https://github.com/Griggorii/budgie-desktop/commit/2488278a8a76dcdf67c969795342a1042e2dea3e берем исходник правим точно так же пересобираем и получаем отставание панели на 4 секунды для запуска иконок от немо
_________________________________________________________________________________________________________________
_________________________________________________________________________________________________________________

# Nautilus default all ubuntu install new ubuntu debian automatization run terminal chmod -R a+rwx Dconf-Orchis-Shell-Theme-Icon-oomox.sh run terminal ./Dconf-Orchis-Shell-Theme-Icon-oomox.sh

install https://extensions.gnome.org/extension/1465/desktop-icons/

Fedora

$ sudo dnf update && sudo dnf reinstall nautilus  gnome-shell-extension-desktop-icons && sudo dnf install nautilus gnome-shell-extension-desktop-icons

$ sudo dnf update && sudo dnf install gnome-shell-extensions
_________________________________________________________________________________________________________________

Ubuntu debian

$ sudo rm -rf /usr/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com $HOME/.local/share/gnome-shell/extensions/user-theme@gnome-shell-extensions.gcampax.github.com && sudo apt update && sudo apt --reinstall install gnome-shell-extensions -y && sudo chmod -R 755 /usr/share/themes/Orchis && sudo glib-compile-schemas /usr/share/glib-2.0/schemas

$ sudo apt update && sudo apt --reinstall install git gnome-shell-extension-autohidetopbar gnome-shell-extension-system-monitor gnome-shell-extension-appindicator gnome-shell-extension-desktop-icons gnome-shell-extension-tilix-dropdown unity-settings-daemon-schemas gnome-shell-common gnome-shell-extension-prefs nautilus-extension-gnome-terminal gnome-tweak-tool gnome-tweaks gnome-screensaver gnome-session-canberra gnome-shell-extension-impatience gnome-shell-extensions nautilus -y

_________________________________________________________________________________________________________________


$ chmod -R a+rwx Replace_nemo-to-nautilus_dconf_linux_OS21.04_V46.0_By_Griggorii_Wayland_vertical_adaptation.sh

$ ./Replace_nemo-to-nautilus_dconf_linux_OS21.04_V46.0_By_Griggorii_Wayland_vertical_adaptation.sh

Exit session ! New session run

_______________________________________________________________________________________________________________________

cairo-dock_setting_compiz_sound_visual.zip install cairo-dock open ~/.config zip copy to ~/.config inpack delete zip source restart cairo

Example "Theme_name_modification_and_default" - "Orchis" "Orchis-dark" "Orchis-dark-compact"

$ gsettings set org.gnome.desktop.interface gtk-theme "Orchis-dark"

$ gsettings set org.gnome.desktop.wm.preferences theme "Orchis-dark"

$ gsettings set org.gnome.shell.extensions.user-theme name "Orchis"

New icons tela test

$ gnome-tweaks


Пишите что вы думаете почему такие технологии как dconf игнорируют корпорации и все остальные и не пишут свои желтые статьи итд. Думаю некоторые поняли что dconf это такая вещь о которой просто не будут говорить в силу того что из него можно вытащить хорошии флаги и увезти в dbus и другие технологии я получил этот конфиг сложнеишими методами установкой и смешиванием различных конфигурации и этому конфигу уже пять с небольшим лет сам метод возможно потом поможет сделать нормальную операционную систему. Понятно что инвестиции за настройку не дают по причине зависти ведь что бы настроить так как в этом конфиге надо перефармить очень много систем что не любят быстро-около-денег-зарабатывальщики. То же самое происходит с ядром которое было собрано на моей системе версии oem 5.6.0 как бы игнорируют что оно очень удачное и может поддерживать arm и arm64 , но тем не менее берут и приспосабливают к своему продукту который выпускают как свои полный проект возможно отрезав некоторые модули для легкости я конечно одобряю только когда указано откуда взято ядро , а не уведено тихим кликом , само ядро может делить в эмуляторе 4 ядра на 8 как показано тут https://youtu.be/Cq1bE6Gu1Hw?t=316. Впрочем что касается остальных de у них пока не у всех есть dconf в частности тот же kde и всякие icewm это страдальцы которые будут кричать что dconf это regedit и нам с вами не попути тем не менее наяривая очередную игрушку через wine не видя что dconf это не regedit ни коим образом это андроид. Новое ядро я не собираю по причине что мне не донатят что бы собрать мощную конфигурацию оборудования что бы перефармливать те же ядра и искать экзешен лучший вариант лучше всего и быстрее на 64 битном процессоре по скольку -j64 решит проблему времени и вернемся к ядру и заготовкам все себе забирают около кремлеботные так как я и писал они находятся около денег так мало того и не подпускают еще к заслуженным инвестициям или же донатам в целом это обще мировая конкуренция накладывает отпечаток что в мире большая конкуренцая играет не только как конкуренция , а еще и как ширма для тех кто ближе к деньгам эмулируя честную конкуренцию с помощью иллюзии. На сегодня я считаю это ядро пока самым удавшимся https://github.com/Griggorii/linux-image-5.9.3_amd64.deb_light_zstd_ultra_fast_kernel_wayland_fast если не нужен anbox , его фишка в том что оно на более новых gcc не собирается и некоторые модули мне пришлось подключать в конфигурационных фаилах самому , возможно на нем в режиме root будет поддерживаться nvidia 440.100 пакеты которых можно взять тут https://github.com/Griggorii/linux-image-oem-5.6.0-1020-kernel-ubuntu-x86_64-deb-package про это 5.6.0 могу предьявить доказательства что что то не ладно с яндекс сайтом по скольку ядро обращалось на провайдера драйвера nvidia 440.100 именно в яндекс ядро сохранено в виде дампа где нужна лишь до сборка весь сжатый сбилденный мною пак весит 5 Гигабайт и в распаковке окого 20 Гигабайт так как я понял что это огромная работа я сделал дамп полностью все и могу продать за 10 миллионов рублей по скольку в истории такое ядро 1 на миллион раз даже в заговор вошел яндекс остается его отключить от яндекса и направить на драивер версии выше и на лету получить это же ядро или уменьшить его в весе отключив кучу модулей и собрав за 15 секунд

Ctrl+PrintScreen     ubuntu 20.04 my modification os xdg-portal

Super+Space | previous language input source  : предыдущий источник ввода языка

Shift + Alt Left | next language input source : следующий источник ввода языка

F1 | Help : вызов справки помощь

Ctrl + N : Ctrl+Alt+Home | Run home folder : Вызов домашней директории

Super + ↑ Window shell application | Super + ↓ Window shell application original size | adhesion to edges ← →

CTRL + ALT + S open random program repeat CTRL + ALT + S random windowed interface resolution

View all setting terminal command:

$ gnome-control-center keyboard

Запуск альтернативным способом офиса

$ /usr/bin/soffice



________________________________________________________________________________________________________________________________________________


Install all deb theme + icons https://github.com/Griggorii/ubuntu-21.04-hirsute-desktop-amd64-griggorii-zsync.iso

Run ~/.local/share/gnome-shell delete all folder exten not delete application_state gnome-overrides-migrated

Dconf setting recomendation extentions good test not problem install 

https://extensions.gnome.org/extension/3740/compiz-alike-magic-lamp-effect/

https://extensions.gnome.org/extension/97/coverflow-alt-tab/

https://extensions.gnome.org/extension/545/hide-top-bar/

https://extensions.gnome.org/extension/1270/auto-ovpn/

Mehanizm manipulation setting on/off extention

__________________________________________________________________________________________________________________________________________________

2020 Найден список пакетов которые тормозят запуск оболочки и его проводников и модулей какой из них точно не понятно , но вот ниже список по которому сначала лучше переустановить и затем сделать удаление возможно и на всех дибиано убунтовых.

sudo apt purge at cowbuilder cowdancer dctrl-tools debootstrap devscripts dh-translations docbook docbook-to-man dput eatmydata fonts-cantarell gir1.2-colord-1.0 gir1.2-rest-0.7 git-buildpackage gnome-pkg-tools gobject-introspection gtk-doc-tools intltool jq libarray-intspan-perl libatk-bridge2.0-dev libatk1.0-dev libatk1.0-doc libatspi2.0-dev libbrotli-dev libcairo-script-interpreter2 libcairo2-dev libcairo2-doc libcolord-dev libcommon-sense-perl libconst-fast-perl libcontextual-return-perl libcups2-dev libcupsfilters-dev libcupsimage2-dev libdatrie-dev libdistro-info-perl libeatmydata1 libepoxy-dev libfile-chdir-perl libfontconfig-dev libfontconfig1-dev libfreetype-dev libfreetype6-dev libfribidi-dev libgdk-pixbuf-2.0-dev libgdk-pixbuf-xlib-2.0-dev libgdk-pixbuf2.0-dev libgetopt-long-descriptive-perl libgirepository1.0-dev libgit-wrapper-perl libgitlab-api-v4-perl libglib2.0-doc libgraphite2-dev libharfbuzz-dev libharfbuzz-gobject0 libhash-fieldhash-perl libhttp-tiny-multipart-perl libio-prompter-perl libio-pty-perl libipc-run-perl libjbig-dev libjpeg-dev libjpeg-turbo8-dev libjpeg8-dev libjq1 libjson-glib-dev libjson-perl libjson-xs-perl liblist-someutils-perl liblist-someutils-xs-perl liblog-any-adapter-screen-perl liblog-any-perl libmoox-struct-perl libnumber-range-perl libobject-id-perl libonig5 libpango1.0-dev libpango1.0-doc libparams-validate-perl libpath-iterator-rule-perl libpixman-1-dev libpod-constants-perl libpod-parser-perl libpsl-dev libre-engine-re2-perl libre2-9 libregexp-pattern-license-perl libregexp-pattern-perl librest-dev libsort-key-perl libsort-versions-perl libsoup2.4-dev libsqlite3-dev libstring-copyright-perl libstring-escape-perl libstring-shellquote-perl libsys-cpuaffinity-perl libterm-readkey-perl libthai-dev libtiff-dev libtiffxx5 libtypes-serialiser-perl libwant-perl libxcb-render0-dev libxcb-shm0-dev libxcomposite-dev libxdamage-dev libxdelta2 libxft-dev libxkbfile-dev libxml2-dev libxtst-dev licensecheck pango1.0-tools pbuilder pbzip2 pixz pristine-tar python3-bs4 python3-gpg python3-html5lib python3-lxml python3-magic python3-markdown python3-scour python3-soupsieve python3-unidiff python3-webencodings scour wayland-protocols wdiff x11proto-record-dev xdelta xdelta3 xvfb

2021 эти пакеты исключены из списка выше dctrl-tools gir1.2-rest-0.7 libjq1 jq libonig5 xvfb

