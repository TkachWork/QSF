#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e "NVIDIA drivers"
echo -e "-----------------------------------\033[0m"
echo "Installing drivers...";{
sudo dnf install -y gcc kernel-headers kernel-devel akmod-nvidia xorg-x11-drv-nvidia xorg-x11-drv-nvidia-libs xorg-x11-drv-nvidia-power nvidia-settings
} &> /dev/null
echo "Done"
echo
echo "Success!"
sh ./data/back.sh
