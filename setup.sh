#!/bin/sh
echo "Hello Max"
sudo whoami
echo "Starting load please be patient"
echo "starting initial setup"
cp .desktop/TFT.desktop ~/.local/share/applications/TFT.desktop
cp .desktop/HDMI.desktop ~/.local/share/applications/HDMI.desktop
cd /
git clone https://github.com/waveshare/LCD-show.git
git clone https://github.com/markondej/fm_transmitter
cd fm_transmitter
make GPIO21=1
sudo apt install idle -y
sudo apt update -y
sudo apt upgrade -y
cd LCD-show
chmod +x LCD35-show
./LCD35-show 270
sudo reboot
