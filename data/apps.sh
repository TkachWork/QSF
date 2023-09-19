#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e "RPM >>> Flatpak"
echo -e "-----------------------------------\033[0m"
echo "Часы...";{
sudo dnf remove -y gnome-clocks
sudo flatpak install -y flathub org.gnome.clocks
} &> /dev/null
echo "Готово"
echo
echo "Календарь...";{
sudo dnf remove -y gnome-calendar
sudo flatpak install -y flathub org.gnome.Calendar
} &> /dev/null
echo "Готово"
echo
echo "Контакты...";{
sudo dnf remove -y gnome-contacts
sudo flatpak install -y flathub org.gnome.Contacts
} &> /dev/null
echo "Готово"
echo
echo "Погода...";{
sudo dnf remove -y gnome-weather
sudo flatpak install -y flathub org.gnome.Weather
} &> /dev/null
echo "Готово"
echo
echo "Калькулятор...";{
sudo dnf remove -y gnome-calculator
sudo flatpak install -y flathub org.gnome.Calculator
} &> /dev/null
echo "Готово"
echo
echo "Камера...";{
sudo dnf remove -y cheese
sudo flatpak install -y flathub org.gnome.Snapshot
} &> /dev/null
echo "Готово"
echo
echo "Просмотрщик изображений...";{
sudo dnf remove -y loupe
sudo flatpak install -y flathub org.gnome.Loupe
} &> /dev/null
echo "Готово"
echo
echo "Просмотр документов...";{
sudo dnf remove -y evince
sudo flatpak install -y flathub org.gnome.Evince
} &> /dev/null
echo "Готово"
echo
echo "Сканер документов...";{
sudo dnf remove -y simple-scan
sudo flatpak install -y flathub org.gnome.SimpleScan
} &> /dev/null
echo "Готово"
echo
echo "Текстовый редактор...";{
sudo dnf remove -y gnome-text-editor
sudo flatpak install -y flathub org.gnome.TextEditor
} &> /dev/null
echo "Готово"
echo
echo "Шрифты...";{
sudo dnf remove -y gnome-font-viewer
sudo flatpak install -y flathub org.gnome.font-viewer
} &> /dev/null
echo "Готово"
echo
echo "Символы...";{
sudo dnf remove -y gnome-characters
sudo flatpak install -y flathub org.gnome.Characters
} &> /dev/null
echo "Готово"
echo
echo "Анализатор использования дисков...";{
sudo dnf remove -y baobab
sudo flatpak install -y flathub org.gnome.baobab
} &> /dev/null
echo "Готово"
echo
echo "Журналы...";{
sudo dnf remove -y gnome-logs
sudo flatpak install -y flathub org.gnome.Logs
} &> /dev/null
echo "Готово"
echo
echo "Музыка...";{
sudo dnf remove -y rhythmbox
sudo flatpak install -y flathub io.bassi.Amberol
} &> /dev/null
echo "Готово"
echo
echo "Видео...";{
sudo dnf remove -y totem
sudo flatpak install -y flathub io.github.celluloid_player.Celluloid
} &> /dev/null
echo "Готово"
echo
echo "Системный монитор...";{
sudo dnf remove -y gnome-system-monitor
sudo flatpak install -y flathub io.missioncenter.MissionCenter
} &> /dev/null
echo "Готово"
echo
echo "Боксы...";{
sudo dnf remove -y gnome-boxes
sudo flatpak install -y flathub org.gnome.Boxes
} &> /dev/null
echo "Готово"
echo
echo "Подключения...";{
sudo dnf remove -y gnome-connections
sudo flatpak install -y flathub org.gnome.Connections
} &> /dev/null
echo "Готово"
echo
echo "Firefox...";{
sudo dnf remove -y firefox
sudo flatpak install -y flathub org.mozilla.firefox
} &> /dev/null
echo "Готово"
echo
echo "LibreOffice...";{
sudo dnf remove -y libreoffice-*
sudo flatpak install -y flathub org.libreoffice.LibreOffice
} &> /dev/null
echo "Готово"
echo
echo "Telegram...";{
sudo flatpak install -y flathub org.telegram.desktop
} &> /dev/null
echo "Готово"
echo
echo "Диктофон...";{
sudo flatpak install -y flathub org.gnome.SoundRecorder
} &> /dev/null
echo "Готово"
echo
echo "Менеджер расширений...";{
sudo flatpak install -y flathub com.mattjakeman.ExtensionManager
} &> /dev/null
echo "Готово"
echo
echo "Flatsweep...";{ 
sudo flatpak install -y flathub io.github.giantpinkrobots.flatsweep
} &> /dev/null
echo "Готово"
echo
echo "Flatseal...";{
sudo flatpak install -y flathub com.github.tchx84.Flatseal
} &> /dev/null
echo "Готово"
echo
echo "Fragments...";{
sudo flatpak install -y flathub de.haeckerfelix.Fragments 
} &> /dev/null
echo "Готово"
echo
echo "Катриджи...";{
sudo flatpak install -y flathub hu.kramo.Cartridges 
} &> /dev/null
echo "Готово"
echo
echo "Bottles...";{
sudo flatpak install -y flathub com.usebottles.bottles
} &> /dev/null
echo "Готово"
echo
echo "Pika Backup...";{
sudo flatpak install -y flathub org.gnome.World.PikaBackup
} &> /dev/null
echo "Готово"
echo
echo "Impression...";{
sudo flatpak install -y flathub io.gitlab.adhami3310.Impression 
} &> /dev/null
echo "Готово"
echo
echo "Neofetch...";{
sudo dnf install -y neofetch
} &> /dev/null
echo "Готово"
echo
echo "Удаление сторонних приложений...";{
sudo dnf remove -y gnome-shell-extension-background-logo
sudo dnf remove -y gnome-classic-session
sudo dnf remove -y gnome-maps
sudo dnf remove -y gnome-tour
sudo dnf remove -y mediawriter
sudo dnf remove -y abrt
} &> /dev/null
echo "Готово"
echo
echo "Очистка временных файлов...";{ 
sudo dnf autoremove -y && dnf clean all -y
} &> /dev/null
echo "Готово"
echo
echo "Успех!"
sudo sh ./data/back.sh
