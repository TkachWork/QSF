#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e "RPM >>> Flatpak"
echo -e "-----------------------------------\033[0m"
echo "Часы...";{
sudo dnf remove -y gnome-clocks
flatpak install -y flathub org.gnome.clocks
} &> /dev/null
echo "Готово"
echo
echo "Календарь...";{
sudo dnf remove -y gnome-calendar
flatpak install -y flathub org.gnome.Calendar
} &> /dev/null
echo "Готово"
echo
echo "Контакты...";{
sudo dnf remove -y gnome-contacts
flatpak install -y flathub org.gnome.Contacts
} &> /dev/null
echo "Готово"
echo
echo "Погода...";{
sudo dnf remove -y gnome-weather
flatpak install -y flathub org.gnome.Weather
} &> /dev/null
echo "Готово"
echo
echo "Калькулятор...";{
sudo dnf remove -y gnome-calculator
flatpak install -y flathub org.gnome.Calculator
} &> /dev/null
echo "Готово"
echo
echo "Камера...";{
sudo dnf remove -y cheese
flatpak install -y flathub org.gnome.Snapshot
} &> /dev/null
echo "Готово"
echo
echo "Просмотрщик изображений...";{
sudo dnf remove -y loupe
flatpak install -y flathub org.gnome.Loupe
} &> /dev/null
echo "Готово"
echo
echo "Просмотр документов...";{
sudo dnf remove -y evince
flatpak install -y flathub org.gnome.Evince
} &> /dev/null
echo "Готово"
echo
echo "Сканер документов...";{
sudo dnf remove -y simple-scan
flatpak install -y flathub org.gnome.SimpleScan
} &> /dev/null
echo "Готово"
echo
echo "Текстовый редактор...";{
sudo dnf remove -y gnome-text-editor
flatpak install -y flathub org.gnome.TextEditor
} &> /dev/null
echo "Готово"
echo
echo "Шрифты...";{
sudo dnf remove -y gnome-font-viewer
flatpak install -y flathub org.gnome.font-viewer
} &> /dev/null
echo "Готово"
echo
echo "Символы...";{
sudo dnf remove -y gnome-characters
flatpak install -y flathub org.gnome.Characters
} &> /dev/null
echo "Готово"
echo
echo "Анализатор использования дисков...";{
sudo dnf remove -y baobab
flatpak install -y flathub org.gnome.baobab
} &> /dev/null
echo "Готово"
echo
echo "Журналы...";{
sudo dnf remove -y gnome-logs
flatpak install -y flathub org.gnome.Logs
} &> /dev/null
echo "Готово"
echo
echo "Музыка...";{
sudo dnf remove -y rhythmbox
flatpak install -y flathub io.bassi.Amberol
} &> /dev/null
echo "Готово"
echo
echo "Видео...";{
sudo dnf remove -y totem
flatpak install -y flathub io.github.celluloid_player.Celluloid
} &> /dev/null
echo "Готово"
echo
echo "Системный монитор...";{
sudo dnf remove -y gnome-system-monitor
flatpak install -y flathub io.missioncenter.MissionCenter
} &> /dev/null
echo "Готово"
echo
echo "Боксы...";{
sudo dnf remove -y gnome-boxes
flatpak install -y flathub org.gnome.Boxes
} &> /dev/null
echo "Готово"
echo
echo "Подключения...";{
sudo dnf remove -y gnome-connections
flatpak install -y flathub org.gnome.Connections
} &> /dev/null
echo "Готово"
echo
echo "Firefox...";{
sudo dnf remove -y firefox
flatpak install -y flathub org.mozilla.firefox
} &> /dev/null
echo "Готово"
echo
echo "LibreOffice...";{
sudo dnf remove -y libreoffice-*
flatpak install -y flathub org.libreoffice.LibreOffice
} &> /dev/null
echo "Готово"
echo
echo "Telegram...";{
flatpak install -y flathub org.telegram.desktop
} &> /dev/null
echo "Готово"
echo
echo "Диктофон...";{
flatpak install -y flathub org.gnome.SoundRecorder
} &> /dev/null
echo "Готово"
echo
echo "Менеджер расширений...";{
flatpak install -y flathub com.mattjakeman.ExtensionManager
} &> /dev/null
echo "Готово"
echo
echo "Flatsweep...";{ 
flatpak install -y flathub io.github.giantpinkrobots.flatsweep
} &> /dev/null
echo "Готово"
echo
echo "Flatseal...";{
flatpak install -y flathub com.github.tchx84.Flatseal
} &> /dev/null
echo "Готово"
echo
echo "Fragments...";{
flatpak install -y flathub de.haeckerfelix.Fragments 
} &> /dev/null
echo "Готово"
echo
echo "Катриджи...";{
flatpak install -y flathub hu.kramo.Cartridges 
} &> /dev/null
echo "Готово"
echo
echo "Bottles...";{
flatpak install -y flathub com.usebottles.bottles
} &> /dev/null
echo "Готово"
echo
echo "Pika Backup...";{
flatpak install -y flathub org.gnome.World.PikaBackup
} &> /dev/null
echo "Готово"
echo
echo "Impression...";{
flatpak install -y flathub io.gitlab.adhami3310.Impression 
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
sudo dnf remove -y ibus-hangul
sudo dnf remove -y libpinyin
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
sh ./data/back.sh
