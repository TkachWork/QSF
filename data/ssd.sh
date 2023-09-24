#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e "Ускорение SSD"
echo -e "-----------------------------------\033[0m"
sudo echo "# Копируем параметр на строке ниже (БЕЗ #) и вставлем после compress=zstd:1" >> /etc/fstab
sudo echo "# ,defaults,noatime,discard=async" >> /etc/fstab
sudo echo "# Должно получится так > compress=zstd:1,defaults,noatime,discard=async 0 0"
sudo echo "# Сохраните файл и закройте текстовый редактор!" >> /etc/fstab
sudo gnome-text-editor /etc/fstab
echo "Надеюсь ты все сделал правильно"
sh ./data/back.sh
