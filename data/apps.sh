#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e "RPM >>> Flatpak"
echo -e "-----------------------------------\033[0m"
echo "Clock...";{
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
echo "Contacts...";{
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
echo "Characters...";{
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
echo -n "Select a player:"
read item
case "$item" in
    1|1) echo "Amberol...";{
	 flatpak install -y flathub io.bassi.Amberol
	 } &> /dev/null
	 echo "Done"
        ;;
    2|2) echo "Gnome Music...";{
	 flatpak install -y flathub org.gnome.Music
	 } &> /dev/null
	 echo "Done"
        ;;
    3|3) echo "Rhythmbox...";{
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
echo -n "Select a player:"
read item
case "$item" in
    1|1) echo "Celluloid...";{
	 flatpak install -y flathub io.github.celluloid_player.Celluloid
	 } &> /dev/null
	 echo "Done"
        ;;
    2|2) echo "Gnome Videos...";{
	 flatpak install -y flathub org.gnome.Totem
	 } &> /dev/null
	 echo "Done"
        ;;
    3|3) echo "Daikhan...";{
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
echo -n "Select a browser:"
read item
case "$item" in
    1|1) echo "Mozilla Firefox...";{
	 flatpak install -y flathub org.mozilla.firefox
	 } &> /dev/null
	 echo "Done"
        ;;
    2|2) echo "Google Chrome...";{
	 flatpak install -y flathub com.google.Chrome
	 } &> /dev/null
	 echo "Done"
        ;;
    3|3) echo "Yandex Browser...";{
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
echo -n "Select a сlient:"
read item
case "$item" in
    1|1) echo "Fragments...";{
	 flatpak install -y flathub de.haeckerfelix.Fragments 
	 } &> /dev/null
	 echo "Done"
        ;;
    2|2) echo "Transmission...";{
	 flatpak install -y flathub com.transmissionbt.Transmission
	 } &> /dev/null
	 echo "Done"
        ;;
    3|3) echo "qBittorrent...";{
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
echo "Cleaning temporary files...";{ 
sudo dnf autoremove -y && dnf clean all -y
} &> /dev/null
echo "Done"
echo
echo "Success!"
sh ./data/back.sh
