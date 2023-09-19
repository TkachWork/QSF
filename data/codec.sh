#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e "Мультимедийные кодеки"
echo -e "-----------------------------------\033[0m"
echo "Установка кодеков...";{
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install -y lame\* --exclude=lame-devel
sudo dnf group upgrade --with-optional Multimedia
} &> /dev/null
echo "Готово"
echo
echo "Успех!"
sudo sh ./data/back.sh

