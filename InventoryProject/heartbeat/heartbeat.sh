#!/bin/bash
while true
do
	if ps ax | grep -v grep | grep "/usr/bin/python /home/esp/Desktop/InventoryProject/inventorystart.py runserver" > /dev/null
	then
		echo "service running, everything is fine"
		echo "$(date)"
		sleep 60 #5m
	else
		#cd /home/c00007/Desktop/inventory/Inventory/
		nohup python -u /home/esp/Desktop/InventoryProject/inventorystart.py runserver 0.0.0.0:20105 >> /home/esp/Desktop/InventoryProject/inventorylog/inventory.log 2>&1 &  
		echo "Service restarted"
		echo "$(date)"
		sleep 60 #5m
	fi
done
