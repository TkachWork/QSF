#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e "SSD acceleration"
echo -e "-----------------------------------\033[0m"
sudo echo "# Copy the parameter on the line below (WITHOUT #) and paste after compress=zstd:1" >> /etc/fstab
sudo echo "# ,defaults,noatime,discard=async" >> /etc/fstab
sudo echo "# Should work like this > compress=zstd:1,defaults,noatime,discard=async 0 0"
sudo echo "# Save the file and close the text editor!" >> /etc/fstab
sudo gnome-text-editor /etc/fstab
echo "I hope you did everything right"
sh ./data/back.sh
