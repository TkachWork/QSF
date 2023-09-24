#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e '  ____   _____ ______ '
echo -e ' / __ \ / ____|  ____|'
echo -e '| |  | | (___ | |__   '
echo -e '| |  | |\___ \|  __|  '
echo -e '| |__| |____) | |         TkachWork'
echo -e ' \___\_\_____/|_|       (v24.09.23)'
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
    1|1) sh ./data/ssd.sh
        ;;
    2|2) sh ./data/update.sh
        ;;
    3|3) sh ./data/codec.sh
        ;;
    4|4) sh ./data/nvidia.sh
        ;;
    5|5) sh ./data/console.sh
        ;;
    6|6) sh ./data/apps.sh
        ;;
esac
