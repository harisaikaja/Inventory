#!/bin/bash

#SERVICE='20105'
while true
do
        #Change the following If condition , its finding the process based on the port number present in the command, it may not work always
	if ps ax | grep -v grep | grep "/usr/bin/python /home/c00007/Desktop/inventory/Inventory/start_inventory.py runserver" > /dev/null
	then
		echo "$SERVICE service running, everything is fine"
		echo "$(date)"
		sleep 60 #5m
	else
		#cd /home/c00007/Desktop/inventory/Inventory/
		sudo nohup python -u /home/c00007/Desktop/inventory/Inventory/start_inventory.py runserver 0.0.0.0:20105 >> /var/log/inventory/inventory.log 2>&1 &
		echo "Service restarted"
		echo "$(date)"
		sleep 60 #5m
	fi
done

