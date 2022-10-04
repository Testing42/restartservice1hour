#!/bin/bash

read -p 'What service do you want to restart:' serv
lowerServ=$(echo $serv | tr '[:upper:]' '[:lower:]')

sudo systemctl stop $lowerServ.service
echo $lowerServ' service is disabled'
echo '                              '
echo 'waiting for 1 hour before service starts'
sleep 1h
sudo systemctl start $lowerServ.service
echo $lowerServ' service is enabled'
