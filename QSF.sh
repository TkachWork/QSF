#!/bin/bash
echo -e "\033[34m-----------------------------------"
echo -e '  ____   _____ ______              '
echo -e ' / __ \ / ____|  ____|             '
echo -e '| |  | | (___ | |__                '
echo -e '| |  | |\___ \|  __|               '
echo -e '| |__| |____) | |         TkachWork'
echo -e ' \___\_\_____/|_|         (preview)'
echo -e "-----------------------------------\033[0m"
echo -e "(1)System update"
echo -e "(2)Multimedia codecs"
echo -e "(3)NVIDIA drivers"
echo -e "(4)Terminal >>> Console"
echo -e "(5)RPM >>> Flatpak"
echo -e "\033[34m-----------------------------------\033[0m"
echo -n "Select item:"
read item
case "$item" in

#UPDATE
1|1)
echo -e "\033[34m-----------------------------------"
echo -e "System update"
echo -e "-----------------------------------\033[0m"
echo "Configuring repositories...";{
sudo rm /etc/yum.repos.d/_copr\:copr.fedorainfracloud.org\:phracek\:PyCharm.repo
sudo rm /etc/yum.repos.d/google-chrome.repo
sudo rm /etc/yum.repos.d/rpmfusion-nonfree-steam.repo
sudo rm /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-delete fedora
flatpak remote-delete fedora-testing
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
} &> /dev/null
echo "Done"
echo
echo "System update...";{ 
sudo dnf update --refresh -y
} &> /dev/null
echo "Done"
echo
echo "Clearing temporary files...";{ 
sudo dnf autoremove -y && dnf clean all -y
} &> /dev/null
echo "Done"
echo
echo "Success!"
echo -e "\033[33m-----------------------------------"
echo -e "(8)Reboot"
echo -e "(9)Back"
echo -e "-----------------------------------\033[0m"
echo -ne "Select item:"
read item
case "$item" in
8|8) reboot
;;
9|9) sh ./QSF.sh
;;
esac
;;

#CODECS
2|2)
echo -e "\033[34m-----------------------------------"
echo -e "Multimedia codecs"
echo -e "-----------------------------------\033[0m"
echo "Installing codecs...";{
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install -y lame\* --exclude=lame-devel
sudo dnf group upgrade --with-optional Multimedia
} &> /dev/null
echo "Done"
echo
echo "Success!"
echo -e "\033[33m-----------------------------------"
echo -e "(8)Reboot"
echo -e "(9)Back"
echo -e "-----------------------------------\033[0m"
echo -ne "Select item:"
read item
case "$item" in
8|8) reboot
;;
9|9) sh ./QSF.sh
;;
esac
;;

#NVIDIA
3|3)
echo -e "\033[34m-----------------------------------"
echo -e "NVIDIA drivers"
echo -e "-----------------------------------\033[0m"
echo "Installing drivers..."
echo "(1)Latest version"
echo "(2)Version 470"
echo "-----------------------------------"
echo -n "Select version:"
read item
case "$item" in
1|1) 
echo "Latest version...";{
sudo dnf install -y akmod-nvidia
} &> /dev/null
echo "Done"
;;
2|2) 
echo "Version 470...";{
sudo dnf install -y akmod-nvidia-470xx
} &> /dev/null
echo "Done"
;;
esac
echo
echo "Success!"
echo -e "\033[33m-----------------------------------"
echo -e "(8)Reboot"
echo -e "(9)Back"
echo -e "-----------------------------------\033[0m"
echo -ne "Select item:"
read item
case "$item" in
8|8) reboot
;;
9|9) sh ./QSF.sh
;;
esac
;;

#CONSOLE
4|4)
echo -e "\033[34m-----------------------------------"
echo -e "Terminal >>> Console"
echo -e "-----------------------------------\033[0m"
echo "Console installation...";{
sudo dnf install -y gnome-console
} &> /dev/null
echo "Done"
echo
echo "To complete this item, we ask you to open this script in a new console!"
echo "-----------------------------------"
echo "Are you sitting in the Console?"
echo "(1)Yes"
echo "(2)No"
echo "-----------------------------------"
echo -n "Select item:"
read item
case "$item" in
1|1) 
echo "Removing Terminal...";{
sudo dnf remove -y gnome-terminal
} &> /dev/null
echo "Done"
echo
echo "Success!"
echo -e "\033[33m-----------------------------------"
echo -e "(8)Reboot"
echo -e "(9)Back"
echo -e "-----------------------------------\033[0m"
echo -ne "Select item:"
read item
case "$item" in
8|8) reboot
;;
9|9) sh ./QSF.sh
;;
esac
;;
2|2) 
echo "Open the console for a full-scale replacement of the obsolete terminal!"
echo
echo -n "Press Enter... and close the Terminal once and for all!"
read enter
exit
;;
esac
;;

#APPS
5|5)
echo -e "\033[34m-----------------------------------"
echo -e "RPM >>> Flatpak"
echo -e "-----------------------------------\033[0m"
echo "Clocks...";{
sudo dnf remove -y gnome-clocks
flatpak install -y flathub org.gnome.clocks
} &> /dev/null
echo "Done"
echo
echo "Calendar...";{
sudo dnf remove -y gnome-calendar
flatpak install -y flathub org.gnome.Calendar
} &> /dev/null
echo "Done"
echo
echo "Contacts..";{
sudo dnf remove -y gnome-contacts
flatpak install -y flathub org.gnome.Contacts
} &> /dev/null
echo "Done"
echo
echo "Weather...";{
sudo dnf remove -y gnome-weather
flatpak install -y flathub org.gnome.Weather
} &> /dev/null
echo "Done"
echo
echo "Calculator...";{
sudo dnf remove -y gnome-calculator
flatpak install -y flathub org.gnome.Calculator
} &> /dev/null
echo "Done"
echo
echo "Camera...";{
sudo dnf remove -y cheese
flatpak install -y flathub org.gnome.Snapshot
} &> /dev/null
echo "Done"
echo
echo "Image viewer...";{
sudo dnf remove -y loupe
flatpak install -y flathub org.gnome.Loupe
} &> /dev/null
echo "Done"
echo
echo "Viewing documents...";{
sudo dnf remove -y evince
flatpak install -y flathub org.gnome.Evince
} &> /dev/null
echo "Done"
echo
echo "Document scanner...";{
sudo dnf remove -y simple-scan
flatpak install -y flathub org.gnome.SimpleScan
} &> /dev/null
echo "Done"
echo
echo "Text editor...";{
sudo dnf remove -y gnome-text-editor
flatpak install -y flathub org.gnome.TextEditor
} &> /dev/null
echo "Done"
echo
echo "Fonts...";{
sudo dnf remove -y gnome-font-viewer
flatpak install -y flathub org.gnome.font-viewer
} &> /dev/null
echo "Done"
echo
echo "Characters....";{
sudo dnf remove -y gnome-characters
flatpak install -y flathub org.gnome.Characters
} &> /dev/null
echo "Done"
echo
echo "Disk usage analyzer...";{
sudo dnf remove -y baobab
flatpak install -y flathub org.gnome.baobab
} &> /dev/null
echo "Done"
echo
echo "Logs...";{
sudo dnf remove -y gnome-logs
flatpak install -y flathub org.gnome.Logs
} &> /dev/null
echo "Done"
echo
echo "Music Player...";{
sudo dnf remove -y rhythmbox
} &> /dev/null
echo "(1)Amberol"
echo "(2)Gnome Music"
echo "(3)Rhythmbox"
echo "-----------------------------------"
echo -n "Select player:"
read item
case "$item" in
1|1) 
echo "Amberol...";{
flatpak install -y flathub io.bassi.Amberol
} &> /dev/null
echo "Done"
;;
2|2) 
echo "Gnome Music...";{
flatpak install -y flathub org.gnome.Music
} &> /dev/null
echo "Done"
;;
3|3) 
echo "Rhythmbox...";{
flatpak install -y flathub org.gnome.Rhythmbox3
} &> /dev/null
echo "Done"
;;
esac
echo
echo "Video Player...";{
sudo dnf remove -y totem
} &> /dev/null
echo "(1)Celluloid"
echo "(2)Gnome Videos"
echo "(3)Daikhan"
echo "-----------------------------------"
echo -n "Select player:"
read item
case "$item" in
1|1) 
echo "Celluloid...";{
flatpak install -y flathub io.github.celluloid_player.Celluloid
} &> /dev/null
echo "Done"
;;
2|2) 
echo "Gnome Videos...";{
flatpak install -y flathub org.gnome.Totem
} &> /dev/null
echo "Done"
;;
3|3) 
echo "Daikhan...";{
flatpak install -y flathub io.gitlab.daikhan.stable
} &> /dev/null
echo "Done"
;;
esac
echo
echo "System monitor...";{
sudo dnf remove -y gnome-system-monitor
flatpak install -y flathub io.missioncenter.MissionCenter
} &> /dev/null
echo "Done"
echo
echo "Boxes...";{
sudo dnf remove -y gnome-boxes
flatpak install -y flathub org.gnome.Boxes
} &> /dev/null
echo "Done"
echo
echo "Connections...";{
sudo dnf remove -y gnome-connections
flatpak install -y flathub org.gnome.Connections
} &> /dev/null
echo "Done"
echo
echo "Browser...";{
sudo dnf remove -y firefox
} &> /dev/null
echo "(1)Mozilla Firefox"
echo "(2)Google Chrome"
echo "(3)Yandex Browser"
echo "-----------------------------------"
echo -n "Select browser:"
read item
case "$item" in
1|1) 
echo "Mozilla Firefox...";{
flatpak install -y flathub org.mozilla.firefox
} &> /dev/null
echo "Done"
;;
2|2) 
echo "Google Chrome...";{
flatpak install -y flathub com.google.Chrome
} &> /dev/null
echo "Done"
;;
3|3) 
echo "Yandex Browser...";{
flatpak install -y flathub ru.yandex.Browser
} &> /dev/null
echo "Done"
;;
esac
echo
echo "LibreOffice...";{
sudo dnf remove -y libreoffice-*
flatpak install -y flathub org.libreoffice.LibreOffice
} &> /dev/null
echo "Done"
echo
echo "Telegram...";{
flatpak install -y flathub org.telegram.desktop
} &> /dev/null
echo "Done"
echo
echo "Voice recorder...";{
flatpak install -y flathub org.gnome.SoundRecorder
} &> /dev/null
echo "Done"
echo
echo "Extension Manager...";{
flatpak install -y flathub com.mattjakeman.ExtensionManager
} &> /dev/null
echo "Done"
echo
echo "Flatsweep...";{ 
flatpak install -y flathub io.github.giantpinkrobots.flatsweep
} &> /dev/null
echo "Done"
echo
echo "Flatseal...";{
flatpak install -y flathub com.github.tchx84.Flatseal
} &> /dev/null
echo "Done"
echo
echo "BitTorrent Client..."
echo "(1)Fragments"
echo "(2)Transmission"
echo "(3)qBittorrent"
echo "-----------------------------------"
echo -n "Select сlient:"
read item
case "$item" in
1|1) 
echo "Fragments...";{
flatpak install -y flathub de.haeckerfelix.Fragments 
} &> /dev/null
echo "Done"
;;
2|2) 
echo "Transmission...";{
flatpak install -y flathub com.transmissionbt.Transmission
} &> /dev/null
echo "Done"
;;
3|3) 
echo "qBittorrent...";{
flatpak install -y flathub org.qbittorrent.qBittorrent
} &> /dev/null
echo "Done"
;;
esac
echo
echo "Cartridges...";{
flatpak install -y flathub hu.kramo.Cartridges 
} &> /dev/null
echo "Done"
echo
echo "Bottles...";{
flatpak install -y flathub com.usebottles.bottles
} &> /dev/null
echo "Done"
echo
echo "Pika Backup...";{
flatpak install -y flathub org.gnome.World.PikaBackup
} &> /dev/null
echo "Done"
echo
echo "Impression...";{
flatpak install -y flathub io.gitlab.adhami3310.Impression 
} &> /dev/null
echo "Done"
echo
echo "Neofetch...";{
sudo dnf install -y neofetch
} &> /dev/null
echo "Done"
echo
echo "Removing third-party applications...";{
sudo dnf remove -y gnome-shell-extension-background-logo
sudo dnf remove -y gnome-classic-session
sudo dnf remove -y gnome-maps
sudo dnf remove -y gnome-tour
sudo dnf remove -y mediawriter
sudo dnf remove -y ibus-hangul
sudo dnf remove -y libpinyin
sudo dnf remove -y abrt
} &> /dev/null
echo "Done"
echo
echo "Clearing temporary files...";{ 
sudo dnf autoremove -y && dnf clean all -y
} &> /dev/null
echo "Done"
echo
echo "Success!"
echo -e "\033[33m-----------------------------------"
echo -e "(8)Reboot"
echo -e "(9)Back"
echo -e "-----------------------------------\033[0m"
echo -ne "Select item:"
read item
case "$item" in
8|8) reboot
;;
9|9) sh ./QSF.sh
;;
esac
;;
esac
