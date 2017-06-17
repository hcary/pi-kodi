!#/bin/bash

#Setup for Raspbian Jessie & Jessie (Lite)

sudo apt-get update
sudo apt-cache madison kodi

# Update and install Kodi

sudo apt-get update
sudo apt-get install kodi

# Check groups settings for the user kodi & pi

sudo usermod -a -G audio pi
sudo usermod -a -G video pi
sudo usermod -a -G input pi
sudo usermod -a -G dialout pi
sudo usermod -a -G plugdev pi
sudo usermod -a -G tty pi

sudo nano /etc/udev/rules.d/99-input.rules
 
SUBSYSTEM=="input", GROUP="input", MODE="0660" >> /etc/udev/rules.d/99-input.rules
KERNEL=="tty[0-9]*", GROUP="tty", MODE="0660" >>  /etc/udev/rules.d/99-input.rules

#Setup: GPU Ram
#Advanced Options ->Memory Split -> 256

sudo raspi-config
sudo reboot

# Run
dialog --title "Installation finnished!" --msgbox "\nThank you for using my installer\n" 11 70
#kodi