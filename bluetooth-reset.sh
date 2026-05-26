#!/usr/bin/env bash
# Reset bluetooth without needing a full reboot

echo "Resetting Bluetooth..."

# Turn off bluetooth
sudo systemctl stop bluetooth
sudo rmmod btusb

# Wait a moment
sleep 2

# Turn it back on
sudo modprobe btusb
sudo systemctl start bluetooth

echo "Done! Bluetooth has been reset."
