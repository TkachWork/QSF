#!/bin/bash
echo -e "\033[34m----------------------------------"
echo -e "Терминал >>> Консоль"
echo -e "-----------------------------------\033[0m"
echo "Установка консоли...";{
sudo dnf install -y gnome-console
} &> /dev/null
echo "Готово"
echo
echo "Для завершения этого пункта просим вас открыть данный скрипт в новой Консоли!"
echo "-----------------------------------"
echo "Вы сейчас в Консоли?"
echo "(1)Да"
echo "(2)Нет"
echo "-----------------------------------"
echo -n "Выберите пункт:"
read item
case "$item" in
    1|1) echo "Удаление терминала...";{
         sudo dnf remove -y gnome-terminal
    	 } &> /dev/null
	 echo "Готово"
	 echo
	 echo "Успех!"
    	 sudo sh ./data/back.sh
        ;;
    2|2) echo "Откройте Консоль для полной замены устаревшего Терминала!"
	 echo
	 echo -n "Нажмите Enter... и закройте Терминал раз и навсегда!"
	 read enter
	 exit
        ;;
esac
