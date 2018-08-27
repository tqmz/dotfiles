#!/bin/bash

#
# RUN THIS VIA CRON to get a notification to stand up and take care for your body 😏

userId=`id -u`
export DISPLAY=:0; export XAUTHORITY=/run/user/$userId/gdm/Xauthority;

DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$userId/bus"
export DBUS_SESSION_BUS_ADDRESS

notify-send "Aufstehen! 😏"
