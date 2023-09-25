#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e "System update"
echo -e "-----------------------------------\033[0m"
echo "Configuring repositories...";{
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
echo "Done"
echo
echo "System update...";{ 
sudo dnf update --refresh -y
} &> /dev/null
echo "Done"
echo
echo "Clearing temporary files...";{ 
sudo dnf autoremove -y && dnf clean all -y
} &> /dev/null
echo "Done"
echo
echo "Success!"
sh ./data/back.sh
