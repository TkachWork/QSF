#!/bin/bash
langset="en"
author=("TkachWork")
version=("preview")

#DONE/SUCCESS/CLEARING LANGUAGE
clear_process_ru=("Очистка временных файлов..."); clear_process_en=("Clearing temporary files...")
clear_process="clear_process_$langset[@]"; clear_process=("${!clear_process}")

done_ru=("Готово"); done_en=("Done")
done="done_$langset[@]"; done=("${!done}")

success_ru=("Успех!"); success_en=("Success!")
success="success_$langset[@]"; success=("${!success}")

#SELECT/REBOOT/BACK LANGUAGE
select_ru=("Выберите пункт:"); select_en=("Select item:")
select="select_$langset[@]"; select=("${!select}")

reboot_ru=("Перезагрузка"); reboot_en=("Reboot")
reboot="reboot_$langset[@]"; reboot=("${!reboot}")

back_ru=("Назад"); back_en=("Back")
back="back_$langset[@]"; back=("${!back}")

#MENU LANGUAGE
update_ru=("Обновление системы"); update_en=("System update")
update="update_$langset[@]"; update=("${!update}")

codecs_ru=("Мультимедийные кодеки"); codecs_en=("Multimedia codecs")
codecs="codecs_$langset[@]"; codecs=("${!codecs}")

nvidia_ru=("Драйверы NVIDIA"); nvidia_en=("NVIDIA drivers")
nvidia="nvidia_$langset[@]"; nvidia=("${!nvidia}")

console_ru=("Терминал >>> Консоль"); console_en=("Terminal >>> Console")
console="console_$langset[@]"; console=("${!console}")

apps_ru=("RPM >>> Flatpak"); apps_en=("RPM >>> Flatpak")
apps="apps_$langset[@]"; apps=("${!apps}")

switch_ru=("Изменить язык"); switch_en=("Switch language")
switch="switch_$langset[@]"; switch=("${!switch}")

language_ru=("Русский"); language_en=("English")
language="language_$langset[@]"; language=("${!language}")

#UPDATE LANGUAGE
repos_process_ru=("Настройка репозиториев..."); repos_process_en=("Configuring repositories...")
repos_process="repos_process_$langset[@]"; repos_process=("${!repos_process}")

update_process_ru=("Обновление системы..."); update_process_en=("System update...")
update_process="update_process_$langset[@]"; update_process=("${!update_process}")

#CODECS LANGUAGE
codecs_process_ru=("Установка кодеков..."); codecs_process_en=("Installing codecs...")
codecs_process="codecs_process_$langset[@]"; codecs_process=("${!codecs_process}")

#NVIDIA LANGUAGE
nvidia_process_ru=("Установка драйверов..."); nvidia_process_en=("Installing drivers...")
nvidia_process="nvidia_process_$langset[@]"; nvidia_process=("${!nvidia_process}")

nvidia_latest_ru=("Последняя версия"); nvidia_latest_en=("Latest version")
nvidia_latest="nvidia_latest_$langset[@]"; nvidia_latest=("${!nvidia_latest}")

nvidia_470_ru=("Версия 470"); nvidia_470_en=("Version 470")
nvidia_470="nvidia_470_$langset[@]"; nvidia_470=("${!nvidia_470}")

nvidia_select_ru=("Выберите версию:"); nvidia_select_en=("Select version:")
nvidia_select="nvidia_select_$langset[@]"; nvidia_select=("${!nvidia_select}")

nvidia_latest_process_ru=("Последняя версия..."); nvidia_latest_process_en=("Latest version...")
nvidia_latest_process="nvidia_latest_process_$langset[@]"; nvidia_latest_process=("${!nvidia_latest_process}")

nvidia_470_process_ru=("Версия 470..."); nvidia_470_process_en=("Version 470...")
nvidia_470_process="nvidia_470_process_$langset[@]"; nvidia_470_process=("${!nvidia_470_process}")

#CONSOLE LANGUAGE
console_process_ru=("Установка консоли..."); console_process_en=("Console installation...")
console_process="console_process_$langset[@]"; console_process=("${!console_process}")

console_message_one_ru=("Для завершения этого пункта просим вас открыть данный скрипт в новой Консоли!"); console_message_one_en=("To complete this item, we ask you to open this script in a new console!")
console_message_one="console_message_one_$langset[@]"; console_message_one=("${!console_message_one}")

console_select_ru=("Вы сейчас в Консоли?"); console_select_en=("Are you in the Console now?")
console_select="console_select_$langset[@]"; console_select=("${!console_select}")

console_yes_ru=("Да"); console_yes_en=("Yes")
console_yes="console_yes_$langset[@]"; console_yes=("${!console_yes}")

console_no_ru=("Нет"); console_no_en=("No")
console_no="console_no_$langset[@]"; console_no=("${!console_no}")

console_message_two_ru=("Откройте Консоль для полной замены устаревшего Терминала!"); console_message_two_en=("Open the console for a full-scale replacement of the obsolete terminal!")
console_message_two="console_message_two_$langset[@]"; console_message_two=("${!console_message_two}")

terminal_ru=("Удаление терминала..."); terminal_en=("Removing Terminal...")
terminal="terminal_$langset[@]"; terminal=("${!terminal}")

terminal_end_ru=("Нажмите Enter... и закройте Терминал раз и навсегда!"); terminal_end_en=("Press Enter... and close the Terminal once and for all!")
terminal_end="terminal_end_$langset[@]"; terminal_end=("${!terminal_end}")

#APPS LANGUAGE
clocks_ru=("Часы..."); clocks_en=("Clocks...")
clocks="clocks_$langset[@]"; clocks=("${!clocks}")

calendar_ru=("Календарь..."); calendar_en=("Calendar...")
calendar="calendar_$langset[@]"; calendar=("${!calendar}")

contacts_ru=("Контакты..."); contacts_en=("Contacts...")
contacts="contacts_$langset[@]"; contacts=("${!contacts}")

weather_ru=("Погода..."); weather_en=("Weather...")
weather="weather_$langset[@]"; weather=("${!weather}")

calculator_ru=("Калькулятор..."); calculator_en=("Calculator...")
calculator="calculator_$langset[@]"; calculator=("${!calculator}")

camera_ru=("Камера..."); camera_en=("Camera...")
camera="camera_$langset[@]"; camera=("${!camera}")

image_viewer_ru=("Просмотрщик изображений..."); image_viewer_en=("Image viewer...")
image_viewer="image_viewer_$langset[@]"; image_viewer=("${!image_viewer}")

viewing_documents_ru=("Просмотр документов..."); viewing_documents_en=("Viewing documents...")
viewing_documents="viewing_documents_$langset[@]"; viewing_documents=("${!viewing_documents}")

document_scanner_ru=("Сканер документов..."); document_scanner_en=("Document scanner...")
document_scanner="document_scanner_$langset[@]"; document_scanner=("${!document_scanner}")

text_editor_ru=("Текстовый редактор..."); text_editor_en=("Text editor...")
text_editor="text_editor_$langset[@]"; text_editor=("${!text_editor}")

fonts_ru=("Шрифты..."); fonts_en=("Fonts...")
fonts="fonts_$langset[@]"; fonts=("${!fonts}")

characters_ru=("Символы..."); characters_en=("Characters...")
characters="characters_$langset[@]"; characters=("${!characters}")

disk_usage_analyzer_ru=("Анализатор использования дисков..."); disk_usage_analyzer_en=("Disk usage analyzer...")
disk_usage_analyzer="disk_usage_analyzer_$langset[@]"; disk_usage_analyzer=("${!disk_usage_analyzer}")

logs_ru=("Журналы..."); logs_en=("Logs...")
logs="logs_$langset[@]"; logs=("${!logs}")

music_ru=("Музыкальный плеер..."); music_en=("Music Player...")
music="music_$langset[@]"; music=("${!music}")

video_ru=("Видеоплеер..."); video_en=("Video Player...")
video="video_$langset[@]"; video=("${!video}")

system_monitor_ru=("Системный монитор..."); system_monitor_en=("System monitor...")
system_monitor="system_monitor_$langset[@]"; system_monitor=("${!system_monitor}")

boxes_ru=("Боксы..."); boxes_en=("Boxes...")
boxes="boxes_$langset[@]"; boxes=("${!boxes}")

connections_ru=("Подключения..."); connections_en=("Connections...")
connections="connections_$langset[@]"; connections=("${!connections}")

browser_ru=("Браузер..."); browser_en=("Browser...")
browser="browser_$langset[@]"; browser=("${!browser}")

recorder_ru=("Диктофон..."); recorder_en=("Voice recorder...")
recorder="recorder_$langset[@]"; recorder=("${!recorder}")

extension_ru=("Менеджер расширений..."); extension_en=("Extension Manager...")
extension="extension_$langset[@]"; extension=("${!extension}")

bittorrent_ru=("BitTorrent клиент..."); bittorrent_en=("BitTorrent Client...")
bittorrent="bittorrent_$langset[@]"; bittorrent=("${!bittorrent}")

cartridges_ru=("Картриджи..."); cartridges_en=("Cartridges...")
cartridges="cartridges_$langset[@]"; cartridges=("${!cartridges}")

remove_other_ru=("Удаление сторонних приложений..."); remove_other_en=("Removing third-party applications...")
remove_other="remove_other_$langset[@]"; remove_other=("${!remove_other}")

#MENU CODE
echo -e "\033[34m-----------------------------------"
echo -e "  ____   _____ ______                     "
echo -e " / __ \ / ____|  ____|                    "
echo -e "| |  | | (___ | |__                       "
echo -e "| |  | |\___ \|  __|      ${author}       "
echo -e "| |__| |____) | |           ${version}    "
echo -e " \___\_\_____/|_|           ${language[0]}"
echo -e "-----------------------------------\033[0m"
echo -e "(1)${update[0]}"
echo -e "(2)${codecs[0]}"
echo -e "(3)${nvidia[0]}"
echo -e "(4)${console[0]}"
echo -e "(5)${apps[0]}"
echo -e "(6)${switch[0]}"
echo -e "\033[34m-----------------------------------\033[0m"
echo -n "${select[0]}"
read item
case "$item" in

#UPDATE CODE
1|1)
echo -e "\033[34m-----------------------------------"
echo -e "${update[0]}"
echo -e "-----------------------------------\033[0m"
echo "${repos_process[0]}";{
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
echo "${done[0]}"
echo
echo "${update_process[0]}...";{ 
sudo dnf update --refresh -y
} &> /dev/null
echo "${done[0]}"
echo
echo "${clear_process[0]}";{ 
sudo dnf autoremove -y && dnf clean all -y
} &> /dev/null
echo "${done[0]}"
echo
echo "${success[0]}"
echo -e "\033[33m-----------------------------------"
echo -e "(8)${reboot[0]}"
echo -e "(9)${back[0]}"
echo -e "-----------------------------------\033[0m"
echo -ne "${select[0]}"
read item
case "$item" in
8|8) reboot
;;
9|9) sh ./QSF.sh
;;
esac
;;

#CODECS CODE
2|2)
echo -e "\033[34m-----------------------------------"
echo -e "${codecs[0]}"
echo -e "-----------------------------------\033[0m"
echo "${codecs_process[0]}";{
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install -y lame\* --exclude=lame-devel
sudo dnf group upgrade --with-optional Multimedia
} &> /dev/null
echo "${done[0]}"
echo
echo "${success[0]}"
echo -e "\033[33m-----------------------------------"
echo -e "(8)${reboot[0]}"
echo -e "(9)${back[0]}"
echo -e "-----------------------------------\033[0m"
echo -ne "${select[0]}"
read item
case "$item" in
8|8) reboot
;;
9|9) sh ./QSF.sh
;;
esac
;;

#NVIDIA CODE
3|3)
echo -e "\033[34m-----------------------------------"
echo -e "${nvidia[0]}"
echo -e "-----------------------------------\033[0m"
echo "${nvidia_process[0]}"
echo "(1)${nvidia_latest[0]}"
echo "(2)${nvidia_470[0]}"
echo "-----------------------------------"
echo -n "${nvidia_select[0]}"
read item
case "$item" in
1|1) 
echo "${nvidia_latest_process[0]}";{
sudo dnf install -y akmod-nvidia
} &> /dev/null
echo "${done[0]}"
;;
2|2) 
echo "${nvidia_latest_process[0]}";{
sudo dnf install -y akmod-nvidia-470xx
} &> /dev/null
echo "${done[0]}"
;;
esac
echo
echo "${success[0]}"
echo -e "\033[33m-----------------------------------"
echo -e "(8)${reboot[0]}"
echo -e "(9)${back[0]}"
echo -e "-----------------------------------\033[0m"
echo -ne "${select[0]}"
read item
case "$item" in
8|8) reboot
;;
9|9) sh ./QSF.sh
;;
esac
;;

#CONSOLE CODE
4|4)
echo -e "\033[34m-----------------------------------"
echo -e "${console[0]}"
echo -e "-----------------------------------\033[0m"
echo "${console_process[0]}";{
sudo dnf install -y gnome-console
} &> /dev/null
echo "${done[0]}"
echo
echo "${console_message_one[0]}"
echo "-----------------------------------"
echo "${console_select[0]}"
echo "(1)${console_yes[0]}"
echo "(2)${console_no[0]}"
echo "-----------------------------------"
echo -n "${select[0]}"
read item
case "$item" in
1|1) 
echo "${terminal[0]}";{
sudo dnf remove -y gnome-terminal
} &> /dev/null
echo "${done[0]}"
echo
echo "${success[0]}"
echo -e "\033[33m-----------------------------------"
echo -e "(8)${reboot[0]}"
echo -e "(9)${back[0]}"
echo -e "-----------------------------------\033[0m"
echo -ne "${select[0]}"
read item
case "$item" in
8|8) reboot
;;
9|9) sh ./QSF.sh
;;
esac
;;
2|2) 
echo "${console_message_two}"
echo
echo -n "${terminal_end[0]}"
read enter
exit
;;
esac
;;

#APPS CODE
5|5)
echo -e "\033[34m-----------------------------------"
echo -e "${apps[0]}"
echo -e "-----------------------------------\033[0m"
echo "${clocks[0]}";{
sudo dnf remove -y gnome-clocks
flatpak install -y flathub org.gnome.clocks
} &> /dev/null
echo "${done[0]}"
echo
echo "${calendar[0]}";{
sudo dnf remove -y gnome-calendar
flatpak install -y flathub org.gnome.Calendar
} &> /dev/null
echo "${done[0]}"
echo
echo "${contacts[0]}";{
sudo dnf remove -y gnome-contacts
flatpak install -y flathub org.gnome.Contacts
} &> /dev/null
echo "${done[0]}"
echo
echo "${weather[0]}";{
sudo dnf remove -y gnome-weather
flatpak install -y flathub org.gnome.Weather
} &> /dev/null
echo "${done[0]}"
echo
echo "${calculator[0]}";{
sudo dnf remove -y gnome-calculator
flatpak install -y flathub org.gnome.Calculator
} &> /dev/null
echo "${done[0]}"
echo
echo "${camera[0]}";{
sudo dnf remove -y cheese
flatpak install -y flathub org.gnome.Snapshot
} &> /dev/null
echo "${done[0]}"
echo
echo "${image_viewer[0]}";{
sudo dnf remove -y loupe
flatpak install -y flathub org.gnome.Loupe
} &> /dev/null
echo "${done[0]}"
echo
echo "${viewing_documents[0]}";{
sudo dnf remove -y evince
flatpak install -y flathub org.gnome.Evince
} &> /dev/null
echo "${done[0]}"
echo
echo "${document_scanner[0]}";{
sudo dnf remove -y simple-scan
flatpak install -y flathub org.gnome.SimpleScan
} &> /dev/null
echo "${done[0]}"
echo
echo "${text_editor[0]}";{
sudo dnf remove -y gnome-text-editor
flatpak install -y flathub org.gnome.TextEditor
} &> /dev/null
echo "${done[0]}"
echo
echo "${fonts[0]}";{
sudo dnf remove -y gnome-font-viewer
flatpak install -y flathub org.gnome.font-viewer
} &> /dev/null
echo "${done[0]}"
echo
echo "${characters[0]}";{
sudo dnf remove -y gnome-characters
flatpak install -y flathub org.gnome.Characters
} &> /dev/null
echo "${done[0]}"
echo
echo "${disk_usage_analyzer[0]}";{
sudo dnf remove -y baobab
flatpak install -y flathub org.gnome.baobab
} &> /dev/null
echo "${done[0]}"
echo
echo "${logs[0]}";{
sudo dnf remove -y gnome-logs
flatpak install -y flathub org.gnome.Logs
} &> /dev/null
echo "${done[0]}"
echo
echo "${music[0]}";{
sudo dnf remove -y rhythmbox
} &> /dev/null
echo "(1)Amberol"
echo "(2)Gnome Music"
echo "(3)Rhythmbox"
echo "-----------------------------------"
echo -n "${select[0]}"
read item
case "$item" in
1|1) 
echo "Amberol...";{
flatpak install -y flathub io.bassi.Amberol
} &> /dev/null
echo "${done[0]}"
;;
2|2) 
echo "Gnome Music...";{
flatpak install -y flathub org.gnome.Music
} &> /dev/null
echo "${done[0]}"
;;
3|3) 
echo "Rhythmbox...";{
flatpak install -y flathub org.gnome.Rhythmbox3
} &> /dev/null
echo "${done[0]}"
;;
esac
echo
echo "${video[0]}";{
sudo dnf remove -y totem
} &> /dev/null
echo "(1)Celluloid"
echo "(2)Gnome Videos"
echo "(3)Daikhan"
echo "-----------------------------------"
echo -n "${select[0]}"
read item
case "$item" in
1|1) 
echo "Celluloid...";{
flatpak install -y flathub io.github.celluloid_player.Celluloid
} &> /dev/null
echo "${done[0]}"
;;
2|2) 
echo "Gnome Videos...";{
flatpak install -y flathub org.gnome.Totem
} &> /dev/null
echo "${done[0]}"
;;
3|3) 
echo "Daikhan...";{
flatpak install -y flathub io.gitlab.daikhan.stable
} &> /dev/null
echo "${done[0]}"
;;
esac
echo
echo "${system_monitor[0]}";{
sudo dnf remove -y gnome-system-monitor
flatpak install -y flathub io.missioncenter.MissionCenter
} &> /dev/null
echo "${done[0]}"
echo
echo "${boxes[0]}";{
sudo dnf remove -y gnome-boxes
flatpak install -y flathub org.gnome.Boxes
} &> /dev/null
echo "${done[0]}"
echo
echo "${connections[0]}";{
sudo dnf remove -y gnome-connections
flatpak install -y flathub org.gnome.Connections
} &> /dev/null
echo "${done[0]}"
echo
echo "${browser[0]}";{
sudo dnf remove -y firefox
} &> /dev/null
echo "(1)Mozilla Firefox"
echo "(2)Google Chrome"
echo "(3)Yandex Browser"
echo "-----------------------------------"
echo -n "${select[0]}"
read item
case "$item" in
1|1) 
echo "Mozilla Firefox...";{
flatpak install -y flathub org.mozilla.firefox
} &> /dev/null
echo "${done[0]}"
;;
2|2) 
echo "Google Chrome...";{
flatpak install -y flathub com.google.Chrome
} &> /dev/null
echo "${done[0]}"
;;
3|3) 
echo "Yandex Browser...";{
flatpak install -y flathub ru.yandex.Browser
} &> /dev/null
echo "${done[0]}"
;;
esac
echo
echo "LibreOffice...";{
sudo dnf remove -y libreoffice-*
flatpak install -y flathub org.libreoffice.LibreOffice
} &> /dev/null
echo "${done[0]}"
echo
echo "Telegram...";{
flatpak install -y flathub org.telegram.desktop
} &> /dev/null
echo "${done[0]}"
echo
echo "${recorder[0]}";{
flatpak install -y flathub org.gnome.SoundRecorder
} &> /dev/null
echo "${done[0]}"
echo
echo "${extension[0]}";{
flatpak install -y flathub com.mattjakeman.ExtensionManager
} &> /dev/null
echo "${done[0]}"
echo
echo "Flatsweep...";{ 
flatpak install -y flathub io.github.giantpinkrobots.flatsweep
} &> /dev/null
echo "${done[0]}"
echo
echo "Flatseal...";{
flatpak install -y flathub com.github.tchx84.Flatseal
} &> /dev/null
echo "${done[0]}"
echo
echo "${bittorrent[0]}"
echo "(1)Fragments"
echo "(2)Transmission"
echo "(3)qBittorrent"
echo "-----------------------------------"
echo -n "${select[0]}"
read item
case "$item" in
1|1) 
echo "Fragments...";{
flatpak install -y flathub de.haeckerfelix.Fragments 
} &> /dev/null
echo "${done[0]}"
;;
2|2) 
echo "Transmission...";{
flatpak install -y flathub com.transmissionbt.Transmission
} &> /dev/null
echo "${done[0]}"
;;
3|3) 
echo "qBittorrent...";{
flatpak install -y flathub org.qbittorrent.qBittorrent
} &> /dev/null
echo "${done[0]}"
;;
esac
echo
echo "${cartridges [0]}";{
flatpak install -y flathub hu.kramo.Cartridges 
} &> /dev/null
echo "${done[0]}"
echo
echo "Bottles...";{
flatpak install -y flathub com.usebottles.bottles
} &> /dev/null
echo "${done[0]}"
echo
echo "Pika Backup...";{
flatpak install -y flathub org.gnome.World.PikaBackup
} &> /dev/null
echo "${done[0]}"
echo
echo "Impression...";{
flatpak install -y flathub io.gitlab.adhami3310.Impression 
} &> /dev/null
echo "${done[0]}"
echo
echo "Neofetch...";{
sudo dnf install -y neofetch
} &> /dev/null
echo "${done[0]}"
echo
echo "${remove_other[0]}";{
sudo dnf remove -y gnome-shell-extension-background-logo
sudo dnf remove -y gnome-classic-session
sudo dnf remove -y gnome-maps
sudo dnf remove -y gnome-tour
sudo dnf remove -y mediawriter
sudo dnf remove -y ibus-hangul
sudo dnf remove -y libpinyin
sudo dnf remove -y abrt
} &> /dev/null
echo "${done[0]}"
echo
echo "${clear_process[0]}";{ 
sudo dnf autoremove -y && dnf clean all -y
} &> /dev/null
echo "${done[0]}"
echo
echo "${success[0]}"
echo -e "\033[33m-----------------------------------"
echo -e "(8)${reboot[0]}"
echo -e "(9)${back[0]}"
echo -e "-----------------------------------\033[0m"
echo -ne "${select[0]}"
read item
case "$item" in
8|8) reboot
;;
9|9) sh ./QSF.sh
;;
esac
;;

#SWITCH CODE
6|6)
if [ $langset = "en" ]; then
sed -i '2s/"en"/"ru"/g' QSF.sh
fi
if [ $langset = "ru" ]; then
sed -i '2s/"ru"/"en"/g' QSF.sh
fi
sh ./QSF.sh
;;
esac
