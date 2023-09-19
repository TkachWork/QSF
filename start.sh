#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e '  ____   _____ ______ '
echo -e ' / __ \ / ____|  ____|'
echo -e '| |  | | (___ | |__   '
echo -e '| |  | |\___ \|  __|  '
echo -e '| |__| |____) | |         TkachWork'
echo -e ' \___\_\_____/|_|         (preview)'
echo -e "-----------------------------------\033[0m"
echo -e "(1)Ускорение SSD"
echo -e "(2)Обновление системы"
echo -e "(3)Мультимедийные кодеки"
echo -e "(4)Драйверы NVIDIA"
echo -e "(5)Терминал >>> Консоль"
echo -e "(6)RPM >>> Flatpak"
echo -e "\033[34m-----------------------------------\033[0m"
echo -n "Выберите пункт:"
read item
case "$item" in
    1|1) sudo sh ./data/ssd.sh
        ;;
    2|2) sudo sh ./data/update.sh
        ;;
    3|3) sudo sh ./data/codec.sh
        ;;
    4|4) sudo sh ./data/nvidia.sh
        ;;
    5|5) sudo sh ./data/console.sh
        ;;
    6|6) sudo sh ./data/apps.sh
        ;;
esac
