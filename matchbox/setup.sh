sudo apt update
sudo apt upgrade -y
sudo apt install matchbox-keyboard -y
sudo cp toggle-keyboard.sh /usr/bin/toggle-keyboard.sh
sudo chmod +x /usr/bin/toggle-keyboard.sh
sudo cp toggle-keyboard.desktop /usr/share/raspi-ui-overrides/applications/toggle-keyboard.desktop
cp /etc/xdg/lxpanel/LXDE-pi/panels/panel ~/.config/lxpanel/LXDE-pi/panels/panel
echo "Plugin {
  type=launchbar
  Config {
    Button {
      id=toggle-keyboard.desktop
    }
  }
}" >> ~/.config/lxpanel/LXDE-pi/panels/panel
sudo reboot
