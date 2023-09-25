#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e "Terminal >>> Console "
echo -e "-----------------------------------\033[0m"
echo "Console installation...";{
sudo dnf install -y gnome-console
} &> /dev/null
echo "Done"
echo
echo "To complete this item, we ask you to open this script in a new console!"
echo "-----------------------------------"
echo "Are you sitting in the Console?"
echo "(1)Yes"
echo "(2)No"
echo "-----------------------------------"
echo -n "Select the item:"
read item
case "$item" in
    1|1) echo "Terminal deletion...";{
         sudo dnf remove -y gnome-terminal
    	 } &> /dev/null
	 echo "Done"
	 echo
	 echo "Success!"
    	 sh ./data/back.sh
        ;;
    2|2) echo "Open the console for a full-scale replacement of the obsolete terminal!"
	 echo
	 echo -n "Press Enter... and close the Terminal once and for all!"
	 read enter
	 exit
        ;;
esac
