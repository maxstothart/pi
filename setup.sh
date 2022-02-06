#!/bin/sh
echo "Hello Max"
sudo whoami
echo "Starting load please be patient"
echo "starting initial setup"
cp .desktop/TFT.desktop ~/.local/share/applications/TFT.desktop
cp .desktop/HDMI.desktop ~/.local/share/applications/HDMI.desktop
cd /
git clone https://github.com/waveshare/LCD-show.git
sudo apt install idle -y
sudo apt update -y
sudo apt upgrade -y
sudo reboot
