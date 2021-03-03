# Setting_dconf_linux_OS20.04_V40.0_By_Griggorii_Wayland_adaptation Nemo filemanger + sensor gdm3 touchpad
dconf , gnome , wayland , new os , package full os , V40.0 perfomance wayland , tango gedit , fast

re-update nemo dconf 28.02.2021 add V40.0 fractional scaling | test Testing-setting-good-1-variant_and_2-variant?.zip perfomance location-mode='path-bar to location-mode='filename-entry'| 15.01.2021 fix [org/blueman/transfer] shared-path=''

Nemo default all ubuntu install setting V37 not recomendation test and reset command $ dconf reset -f / | beta , stable V36 , V35 unity not blocked disabled-scopes

#################################################################################################################

Not sudo alternative root

Fedora

$ dnf install nemo gnome-shell-extension-desktop-icons

Ubuntu , debian

$ sudo apt update && sudo apt install nemo -y

$ sudo mkdir /etc/gnome

$ sudo cp -r defaults.list menus.blacklist /etc/gnome

$ mkdir ~/.local

$ mkdir ~/.local/share

$ mkdir ~/.local/share/applications

$ sudo rm ~/.local/share/applications/defaults.list && ln -s /etc/gnome/defaults.list ~/.local/share/applications/defaults.list

$ chmod -R a+rwx Setting_dconf_linux_OS20.04_V40.0_By_Griggorii_Wayland_adaptation.sh

$ sudo ./Setting_dconf_linux_OS20.04_V40.0_By_Griggorii_Wayland_adaptation.sh

Double repeat not sudo

$ ./Setting_dconf_linux_OS20.04_V40.0_By_Griggorii_Wayland_adaptation.sh

ignore hide icons re session ! Exit session ! New session run : Ru игнорируя что иконки пока еще не появились выйти и заити и они появятся

$ chmod -R a+rwx special_os_perfomance.shrm -rf 

full upgrade ubuntu check remove nautilus double icons -> /usr/share/gnome-shell/extensions/desktop-icons@csoriano

$ sudo rm -rf /usr/share/gnome-shell/extensions/desktop-icons@csoriano

Test setting -> Testing-setting-good-1-variant_and_2-variant?.zip

Budgie fix recompilation icons nemo programm https://github.com/Griggorii/budgie-desktop/commit/2488278a8a76dcdf67c969795342a1042e2dea3e берем исходник правим точно так же пересобираем и получаем отставание панели на 4 секунды для запуска иконок от немо
_________________________________________________________________________________________________________________
_________________________________________________________________________________________________________________

# Nautilus default all ubuntu install 

install https://extensions.gnome.org/extension/1465/desktop-icons/

Fedora

$ dnf install nemo

Ubuntu , debian

$ sudo apt update && sudo apt --reinstall install gnome-shell-extension-desktop-icons nautilus -y

$ sudo mkdir /etc/gnome

$ sudo cp -r defaults.list menus.blacklist /etc/gnome

$ mkdir ~/.local

$ mkdir ~/.local/share

$ mkdir ~/.local/share/applications

$ sudo rm ~/.local/share/applications/defaults.list && ln -s /etc/gnome/defaults.list ~/.local/share/applications/defaults.list

$ chmod -R a+rwx Replace_nemo-to-nautilus_dconf_linux_OS20.04_V40.0_By_Griggorii_Wayland_adaptation.sh

Not sudo run root system file replace 

$ sudo ./Replace_nemo-to-nautilus_dconf_linux_OS20.04_V40.0_By_Griggorii_Wayland_adaptation.sh

Double repeat not sudo

$ ./Replace_nemo-to-nautilus_dconf_linux_OS20.04_V40.0_By_Griggorii_Wayland_adaptation.sh

Exit session ! New session run

Test setting -> Testing-setting-good-1-variant_and_2-variant?.zip
_______________________________________________________________________________________________________________________


Пишите что вы думаете почему такие технологии как dconf игнорируют корпорации и все остальные и не пишут свои желтые статьи итд. Думаю некоторые поняли что dconf это такая вещь о которой просто не будут говорить в силу того что из него можно вытащить хорошии флаги и увезти в dbus и другие технологии я получил этот конфиг сложнеишими методами установкой и смешиванием различных конфигурации и этому конфигу уже пять с небольшим лет сам метод возможно потом поможет сделать нормальную операционную систему. Понятно что инвестиции за настройку не дают по причине зависти ведь что бы настроить такак как в этом конфиге надо перефармить очень много систем что не любят быстро-около-денег-зарабатывальщики. То же самое происходит с ядром которое было собрано на моей системе версии oem 5.6 как бы игнорируют что оно очень удачное и может поддерживать arm и arm64 , но тем не менее берут и приспосабливают к своему продукту который выпускают как свои полный проект возможно поотрезав некоторые модули для легкости я конечно одобряю только когда указано откуда взято ядро , а не уведено тихим кликом само ядро может делить в эмуляторе 4 ядра на 8 как показано тут https://youtu.be/Cq1bE6Gu1Hw?t=316. Впрочем что касается остальных de у них пока не у всех есть dconf в частности тот же kde и всякие icewm это страдальцы которые будут кричать что dconf это regedit и нам с вами не попути тем не менее наяривая очередную игрушку через wine не видя что dconf это не regedit ни коим образом это андроид. Новое ядро я не собираю по причине что мне не донатят что бы собрать мощную конфигурацию оборудования что бы перефармливать те же ядра и искать экзешен лучший вариант лучше всего и быстрее на 64 битном процессоре по скольку -j64 решит проблему времени и вернемся к ядру и заготовкам все себе забирают около кремлеботные так как я и писал они находятся около денег так мало того и не подпускают еще к заслуженным инвестициям или же донатам в целом это обще мировая конкуренция накладывает отпечаток что в мире большая конкуренцая играет не только как конкуренция , а еще и как ширма для тех кто ближе к деньгам эмулируя честную конкуренцию с помощью иллюзии. На сегодня я считаю это ядро пока самым удавшимся https://github.com/Griggorii/linux-image-5.9.3_amd64.deb_light_zstd_ultra_fast_kernel_wayland_fast если не нужен anbox , его фишка в том что оно на более новых gcc не собирается и некоторые модули мне пришлось подключать в конфигурационных фаилах самому , возможно на нем в режиме root будет поддерживаться nvidia 440.100 пакеты которых можно взять тут https://github.com/Griggorii/linux-image-oem-5.6.0-1020-kernel-ubuntu-x86_64-deb-package

Ctrl+PrintScreen     ubuntu 20.04 my modification os xdg-portal

Super+Space | previous language input source  : предыдущий источник ввода языка

Shift + Alt Left | next language input source : следующий источник ввода языка

F1 | Help : вызов справки помощь

Ctrl + N : Ctrl+Alt+Home | Run home folder : Вызов домашней директории

View all setting terminal command:

$ gnome-control-center keyboard

Запуск альтернативным способом офиса

$ /usr/bin/soffice



________________________________________________________________________________________________________________________________________________


https://github.com/Griggorii/Setting_dconf_linux_OS20.04_V26.0_By_Griggorii_Wayland_adaptation/releases/tag/gnome-shell-3.38

Onli shell version 3.38 danger risk check gnome-shell version 3.38

$ sudo XZ_OPT=-9 tar -Jcvf gnome-shell-3.38_backup.tar.xz /usr/share/gnome-shell && sudo tar xvpf gnome-shell-3.38.tar.xz -C / && sudo tar xvpf gnome-shell-3.38_backup.tar.xz -C /

Run ~/.local/share/gnome-shell delete all folder exten not delete application_state gnome-overrides-migrated

Dconf setting recomendation extentions good test not problem install 

https://extensions.gnome.org/extension/3740/compiz-alike-magic-lamp-effect/

https://extensions.gnome.org/extension/97/coverflow-alt-tab/

https://extensions.gnome.org/extension/545/hide-top-bar/

https://extensions.gnome.org/extension/1270/auto-ovpn/

Mehanizm manipulation setting on/off extention

sudo apt update gnome-tweak-tool gnome-tweaks -y

__________________________________________________________________________________________________________________________________________________

2020 Найден список пакетов которые тормозят запуск оболочки и его проводников и модулей какой из них точно не понятно , но вот ниже список по которому сначала лучше переустановить и затем сделать удаление возможно и на всех дибиано убунтовых.

sudo apt purge at cowbuilder cowdancer dctrl-tools debootstrap devscripts dh-translations docbook docbook-to-man dput eatmydata fonts-cantarell gir1.2-colord-1.0 gir1.2-rest-0.7 git-buildpackage gnome-pkg-tools gobject-introspection gtk-doc-tools intltool jq libarray-intspan-perl libatk-bridge2.0-dev libatk1.0-dev libatk1.0-doc libatspi2.0-dev libbrotli-dev libcairo-script-interpreter2 libcairo2-dev libcairo2-doc libcolord-dev libcommon-sense-perl libconst-fast-perl libcontextual-return-perl libcups2-dev libcupsfilters-dev libcupsimage2-dev libdatrie-dev libdistro-info-perl libeatmydata1 libepoxy-dev libfile-chdir-perl libfontconfig-dev libfontconfig1-dev libfreetype-dev libfreetype6-dev libfribidi-dev libgdk-pixbuf-2.0-dev libgdk-pixbuf-xlib-2.0-dev libgdk-pixbuf2.0-dev libgetopt-long-descriptive-perl libgirepository1.0-dev libgit-wrapper-perl libgitlab-api-v4-perl libglib2.0-doc libgraphite2-dev libharfbuzz-dev libharfbuzz-gobject0 libhash-fieldhash-perl libhttp-tiny-multipart-perl libio-prompter-perl libio-pty-perl libipc-run-perl libjbig-dev libjpeg-dev libjpeg-turbo8-dev libjpeg8-dev libjq1 libjson-glib-dev libjson-perl libjson-xs-perl liblist-someutils-perl liblist-someutils-xs-perl liblog-any-adapter-screen-perl liblog-any-perl libmoox-struct-perl libnumber-range-perl libobject-id-perl libonig5 libpango1.0-dev libpango1.0-doc libparams-validate-perl libpath-iterator-rule-perl libpixman-1-dev libpod-constants-perl libpod-parser-perl libpsl-dev libre-engine-re2-perl libre2-9 libregexp-pattern-license-perl libregexp-pattern-perl librest-dev libsort-key-perl libsort-versions-perl libsoup2.4-dev libsqlite3-dev libstring-copyright-perl libstring-escape-perl libstring-shellquote-perl libsys-cpuaffinity-perl libterm-readkey-perl libthai-dev libtiff-dev libtiffxx5 libtypes-serialiser-perl libwant-perl libxcb-render0-dev libxcb-shm0-dev libxcomposite-dev libxdamage-dev libxdelta2 libxft-dev libxkbfile-dev libxml2-dev libxtst-dev licensecheck pango1.0-tools pbuilder pbzip2 pixz pristine-tar python3-bs4 python3-gpg python3-html5lib python3-lxml python3-magic python3-markdown python3-scour python3-soupsieve python3-unidiff python3-webencodings scour wayland-protocols wdiff x11proto-record-dev xdelta xdelta3 xvfb

