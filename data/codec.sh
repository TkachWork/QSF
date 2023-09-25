#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e "Multimedia codes"
echo -e "-----------------------------------\033[0m"
echo "Installing codecs...";{
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install -y lame\* --exclude=lame-devel
sudo dnf group upgrade --with-optional Multimedia
} &> /dev/null
echo "Done"
echo
echo "Success!"
sh ./data/back.sh
