#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e "Обновление системы"
echo -e "-----------------------------------\033[0m"
echo "Ускорение DNF...";{
if 
grep -q fastestmirror=False /etc/dnf/dnf.conf
grep -q max_parallel_downloads=10 /etc/dnf/dnf.conf
grep -q defaultyes=False /etc/dnf/dnf.conf; then
echo "DNF уже был ускорен!"
else
sudo echo fastestmirror=False >> /etc/dnf/dnf.conf
sudo echo max_parallel_downloads=10 >> /etc/dnf/dnf.conf
sudo echo defaultyes=False >> /etc/dnf/dnf.conf
echo "DNF ускорен!"
fi
} &> /dev/null
echo "Готово"
echo
echo "Настройка репозиториев...";{
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo rm /etc/yum.repos.d/_copr\:copr.fedorainfracloud.org\:phracek\:PyCharm.repo
sudo rm /etc/yum.repos.d/google-chrome.repo
sudo rm /etc/yum.repos.d/rpmfusion-nonfree-steam.repo
sudo rm /etc/yum.repos.d/rpmfusion-nonfree-nvidia-driver.repo
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak remote-delete fedora
sudo flatpak remote-delete fedora-testing
} &> /dev/null
echo "Готово"
echo
echo "Обновление системы...";{ 
sudo dnf update --refresh -y
} &> /dev/null
echo "Готово"
echo
echo "Очистка временных файлов...";{ 
sudo dnf autoremove -y && dnf clean all -y
} &> /dev/null
echo "Готово"
echo
echo "Успех!"
sudo sh ./data/back.sh
