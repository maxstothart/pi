#!/bin/sh
echo "Hello Max"
sudo whoami
echo "Starting load please be patient"
echo "starting initial setup"
cp .desktop/TFT.Desktop ~/.local/share/applications/TFT.desktop
cp .desktop/HDMI.Desktop ~/.local/share/applications/HDMI.desktop
cd /
git clone https://github.com/waveshare/LCD-show.git
sudo apt install idle
sudo apt update
sudo apt upgrade
sudo reboot