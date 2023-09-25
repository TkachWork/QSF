#!/bin/bash
echo -e "\033[33m-----------------------------------"
echo -e "(8)Reboot"
echo -e "(9)Back"
echo -e "-----------------------------------\033[0m"
echo -ne "Select the item:"
read item
case "$item" in
    8|8) reboot
        ;;
    9|9) sh ./start.sh
        ;;
esac
