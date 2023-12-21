#!/bin/sh
#script used to turn on or off wifi thru mint keyboard shortcuts (custom)
if [ $(nmcli radio wifi | awk '/led/ {print}') = 'enabled' ] ; then
nmcli radio wifi off
else
nmcli radio wifi on
fi
