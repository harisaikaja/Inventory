#!/bin/bash

SERVICE='20105'
while true
do
	if ps ax | grep -v grep | grep $SERVICE > /dev/null
	then
		echo "$SERVICE service running, everything is fine"
		echo "$(date)"
		sleep 5m
	else
		#cd /home/c00007/Desktop/inventory/Inventory/
		exec nohup python manage.py runserver 0.0.0.0:20105 >> /var/log/inventory/inventory.log 2>&1 &
		echo "Service restarted"
		echo "$(date)"
		sleep 5m
	fi
done

