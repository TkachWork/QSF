#!/bin/bash
echo -e "\033[33m-----------------------------------"
echo -e "(8)Перезагрузка"
echo -e "(9)Назад"
echo -e "-----------------------------------\033[0m"
echo -ne "Выберите пункт:"
read item
case "$item" in
    8|8) reboot
        ;;
    9|9) sh ./start.sh
        ;;
esac
