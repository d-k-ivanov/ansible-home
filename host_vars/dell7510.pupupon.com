---
laptop: "yes"
lid_action: "no"

system_packages:
  # Archves
  - "app-arch/bzip2"
  - "app-arch/gzip"
  - "app-arch/lz4"
  - "dev-libs/lzo"
  - "app-arch/p7zip"
  - "app-arch/unrar"
  - "app-arch/unzip"
  - "app-arch/xarchiver"
  - "app-arch/zip"
  # Boot
  - "sys-boot/grub:2"
  # Bus
  - "dev-libs/dbus-c++"
  - "sys-apps/dbus"
  # File system
  - "sys-fs/encfs"
  - "sys-fs/exfat-utils"
  - "sys-fs/fuse-exfat"
  - "sys-block/gparted"
  - "gnome-base/gvfs"
  #- "sys-fs/jfsutils"
  #- "sys-fs/lvm2"
  #- "sys-fs/mdadm"
  - "net-fs/nfs-utils"
  - "sys-fs/ntfs3g"
  - "sys-block/parted"
  - "sys-fs/reiserfsprogs"
  # Hardware
  - "sys-apps/hdparm"
  - "sys-apps/lshw"
  # Kernel configuration
  - "sys-kernel/genkernel-next"
  # Monitioring
  - "sys-apps/dstat"
  - "lxde-base/lxtask"
  # Network
  - "net-misc/bridge-utils"
  - "net-misc/dhcpcd"
  - "net-wireless/iw"
  - "gnome-extra/nm-applet"
  - "sys-apps/pv"
  - "net-wireless/wpa_supplicant"
  # Package management
  - "app-portage/eix"
  - "app-portage/euses"
  - "app-portage/gentoolkit"
  - "app-portage/layman"
  # Power management
  - "sys-power/acpi"
  - "sys-power/acpi_call"
  - "sys-power/acpid"
  - "sys-power/cpupower"
  - "sys-power/pm-utils"
  # Scheduler
  - "sys-process/cronie"
  # Security
  - "sys-auth/consolekit"
  - "net-firewall/iptables"
  - "app-admin/sudo"

user_packages:
  # Documents
  - "app-text/asciidoc"
  - "app-office/libreoffice"
  #- "app-text/texlive"
  #- "app-office/texmaker"
  # Downloads
  - "net-p2p/qbittorrent"
  # Editors
  - "app-editors/leafpad"
  - "app-editors/vim"
  # Files and folders navigation
  - "sys-apps/baobab"
  - "app-arch/cpio"
  - "net-misc/dropbox"
  - "net-misc/dropbox-cli"
  - "sys-apps/file"
  - "sys-apps/findutils"
  - "sys-apps/mlocate"
  - "sys-fs/ncdu"
  - "app-misc/ranger"
  - "net-misc/rsync"
  - "x11-misc/spacefm"
  - "app-text/tree"
  - "x11-misc/xdg-user-dirs"
  # Fonts
  - "media-fonts/artwiz-aleczapka-en" 
  - "media-fonts/artwiz-latin1"
  - "media-fonts/arphicfonts"
  - "media-fonts/font-bh-ttf"
  - "media-fonts/font-bitstream-speedo"
  - "media-fonts/ttf-bitstream-vera"
  - "media-fonts/cheapskatefonts"
  - "media-fonts/dejavu"
  - "media-fonts/droid"
  - "app-eselect/eselect-fontconfig"
  - "sys-apps/fbset"
  - "media-libs/fontconfig"
  - "media-gfx/fontforge"
  - "media-fonts/ja-ipafonts"
  - "media-fonts/inconsolata"
  - "media-fonts/ipamonafont"
  - "media-fonts/liberation-fonts"
  - "media-fonts/noto"
  - "media-fonts/noto-cjk"
  - "media-fonts/opendesktop-fonts"
  - "media-fonts/terminus-font"
  - "media-fonts/ubuntu-font-family"
  - "media-fonts/wqy-microhei"
  - "x11-apps/xlsfonts"
  # FTP 
  #- "net-ftp/filezilla"
  # Images
  - "x11-libs/gdk-pixbuf"
  - "media-gfx/imagemagick"
  # Imput methods
  - "app-i18n/anthy"
  # Messages
  #- "net-im/pidgin"
  #- "x11-plugins/pidgin-gnome-keyring"
  #- "x11-plugins/pidgin-skypeweb"
  #- "net-im/skype"
  #- "net-im/skypeforlinux"
  - "mail-client/thunderbird"
  # Print
  - "net-print/cups"
  - "net-print/cups-filters"
  - "net-print/cups-pdf"
  - "net-print/cups-pk-helper"
  - "net-print/cups-windows"
  - "app-text/ghostscript-gpl"
  - "net-print/gtklp"
  - "net-print/hplip"
  - "net-print/hplip-plugin"
  # Shell enchanced
  - "app-shells/bash-completion"
  # Terminal
  #- "app-misc/screen"
  - "app-misc/tmux"
  - "x11-terms/xterm"
  # Web
  - "www-client/firefox"
  - "www-client/links"

dev_packages:
  # Build
  - "sys-devel/binutils"
  # C ans C++
  - "sys-devel/gcc"
  - "dev-libs/glib"
  - "sys-libs/glibc"
  - "x11-libs/libxcb"
  - "x11-libs/xcb-util-xrm"
  # C#
  - "dev-lang/mono"
  # Code review
  - "dev-python/git-review"
  # Configuration
  - "sys-devel/autoconf"
  - "sys-devel/automake"
  # Debug
  - "sys-devel/gdb"
  - "dev-util/strace"
  # - "dev-util/valgrind" - ??? unsupported glibc
  # Diff
  - "app-misc/colordiff"
  - "dev-util/meld"
  # GO
  #- "dev-lang/go"
  # Haskell
  #- "dev-haskell/gio"
  # HTML
  #- "app-editors/bluefish"
  # IDE
  #- "dev-util/codeblocks"
  #- "dev-util/eric"
  #- "dev-util/ninja-ide"
  #- "dev-python/spyder"
  #- "dev-qt/qt-creator"
  # JAVA
  #- "dev-java/ant"
  #- "dev-java/oracle-jdk-bin"
  #- "virtual/jdk"
  # JavaScript
  #- "net-libs/nodejs"
  #- "www-client/phantomjs"
  # Library
  - "sys-devel/libtool"
  # Lua
  - "dev-lua/busted"
  - "dev-lua/ldoc"
  - "dev-lua/lgi"
  - "dev-lang/lua"
  - "dev-lua/luacov"
  # Parser ans processors
  - "sys-devel/bison"
  - "sys-devel/flex"
  - "app-misc/jq"
  - "sys-devel/m4"
  # Python
  #- "dev-python/ipython"
  #- "dev-python/xvfbwrapper"
  - "dev-python/pip"
  # R
  #- "dev-lang/R"
  # Ruby
  #- "dev-ruby/json"
  #- "dev-ruby/pkg-config"
  #- "dev-lang/ruby"
  # Utils
  - "dev-util/cmake"
  - "sys-devel/gettext"
  - "sys-devel/make"
  - "sys-devel/patch"
  # Version Control
  - "dev-vcs/git"
  - "dev-vcs/mercurial"
  - "dev-vcs/subversion"
  # XML
  - "app-text/xmlto"

xorg_environment:
  # 3D
  - "x11-libs/libGLw"
  - "media-libs/mesa"
  - "mesa-progs"
  # Base
  - "x11-base/xorg-server"
  - "x11-libs/libxkbcommon"
  # Diaplay manager
  - "x11-misc/slim"
  # Drivers
  - "x11-drivers/nvidia-drivers"
  - "x11-base/xorg-drivers"
  # Keyboard
  - "x11-apps/setxkbmap"
  # Misc
  - "x11-apps/xclock"
  - "x11-apps/xdpyinfo"
  # Protocol 
  - "x11-proto/xproto"
  # Text
  - "x11-libs/pango"
  # Vector graphcs
  - "x11-libs/cairo"
  # Virtual X
  - "x11-misc/xvfb-run"
  # WM
  - "x11-wm/twm"

admin_packages:
  # Configuration
  #- "app-admin/ansible"  
  - "gnome-base/dconf-editor"
  # Database
  #- "dev-db/mysql-workbench"
  #- "dev-db/pgadmin3"
  #- "dev-db/sqldeveloper"
  # Remote control
  #- "net-misc/teamviewer"
  # Scripts
  - "sys-apps/gawk"

sci_packages:
  # Calculators
  - "sci-calculators/speedcrunch"
  # Electronics
  #- "sci-electronics/geda"
  # Visualisation
  #- "sci-visualization/gnuplot"

virtual_packages:
  # Containers
  - "app-emulation/docker"
  - "app-emulation/lxc"
  - "sys-fs/lxcfs"
  # Hipervisor
  - "app-emulation/libvirt"
  - "dev-python/libvirt-python"
  - "app-emulation/qemu"
  - "app-emulation/virt-manager"
  # Virtual env
  - "sys-apps/fakeroot"
  - "sys-apps/usermode-utilities"
  # Windows
  - "app-emulation/wine"
  - "app-emulation/winetricks"
  # Workstation
  #- "app-emulation/virtualbox"
  #- "app-emulation/virtualbox-additions"
  #- "virtualbox-modules"
  #- "virtualbox-extpack-oracle"


# PIP dont forget to install pip

# In progress


# Done
# blender fbida feh geeqie gifsicle gimp gpicview jpegoptim inkscape pinta povray sdl-image sdl2-image mutt atop htop glances iotop netdata powertop stress sysstat alsa-utils alsamixergui cheese alsa-plugins alsa-mixer gpac obs-studio pavucontrol pulseaudio vlc avahi bind-tools ethtool iputils iptraf-ng netctl nethogs net-tools freerdp openssh remmina rdesktop sshpass tigervnc ssh-askpass-fullscreen scrot shutter gksu keyring hashcat keychain openssl seahorse fish mosh zsh ngrep nmap ntp ntpclient openvpn openconnect pptpclient tcpdump traceroute wireless-tools wireshark aspell aspell-en aspell-ru bc dia evince fbreader calculator simple-scan

# gucharmap groff irqbalance libnotify lm_sensors logrotate lsof man-pages polkit rpmdevtools sed supervisor sysfsutils texinfo usbview util-linux minicom terminator cadaver curl owncloud-client wget whois adwaita-icon-theme arandr xrandr dex gmrun recordmydesktop linux-headers xbindkeys x11-misc/xclip xscreensaver android-studio android-ndk android-tools android-sdk-update-manager android-util jd bcc xoscope fim google-chrome thermald networkmanager networkmanager-openvpn networkmanager-openconnect networkmanager-pptp networkmanager-vpnc samba

# gnome-control-center gnome-settings-daemon gnome-system-log gnome-system-monitor gnome-font-viewer

# # Not Done

# goldendict tor 

services:
  - "NetworkManager.service"
  - "wpa_supplicant.service"
  - "acpid.service"
  - "avahi-daemon.service"
  - "cronie.service"
  - "cups.service"
  - "cups-browsed"
  - "docker.service"
  - "dhcpcd.service"
  - "irqbalance.service"
  - "libvirtd.service"
  - "slim.service"
  - "lm_sensors.service"
  # - "samba.service"
  - "sshd.service"
  - "sysstat.service"
  - "systemd-timesyncd.service"
  # - "teamviewerd12.service" # Not So Simple
  - "thermald.service"
  
