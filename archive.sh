#!/bin/bash

        echo "Название: 'Программа архивации'"
        echo "Описание: данная программа позволяет архивировать и разархивировать выбранный каталог."
        echo "Разработчик: Похила Елизавета"

while true; do
	echo "Выберите тип действия (1 - архивировать, 2 - разархивировать): " 
	read action

	case $action in
	1)
            echo "Введите путь к каталогу для архивации: " 
            read directory
            echo "Введите имя архива: " 
            read archive_name

            tar -czvf "$archive_name.tar.gz" "$directory"
            echo "Архивация завершена."
            ;;
        2)
            echo "Введите имя файла с архивом: " 
            read archive_file

            tar -xzvf "$archive_file"
            echo "Распаковка завершена."
            ;;
        *)
            echo "Ошибка! Такого действия нет. Попробуйте еще раз."
            continue
            ;;
	esac

	echo "Вы хотите завершить программу? (y/n): " 
	read choice
	if [ "$choice" == "y" ]; then break
	fi
done
