#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e "Драйверы NVIDIA"
echo -e "-----------------------------------\033[0m"
echo "Установка драйверов...";{
sudo dnf install -y gcc kernel-headers kernel-devel akmod-nvidia xorg-x11-drv-nvidia xorg-x11-drv-nvidia-libs xorg-x11-drv-nvidia-power nvidia-settings
} &> /dev/null
echo "Готово"
echo
echo "Успех!"
sh ./data/back.sh
