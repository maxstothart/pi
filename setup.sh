#echo $USER #uncomment for debug purposes
if [ "$USER" != "root" ]
	then echo "Please run as root"
	exit
else
	echo "Starting load please be patient"

	echo "starting initial setup"
		# copy desktop files from save to application directory
		cp .desktop/TFT.desktop /home/maxs/.local/share/applications/TFT.desktop
		cp .desktop/HDMI.desktop /home/maxs/.local/share/applications/HDMI.desktop
		cd /

	echo "installing git libaries"
		git clone https://github.com/waveshare/LCD-show.git
		git clone https://github.com/markondej/fm_transmitter
		git clone https://github.com/maxstothart2020/pirate-radio.git
   
	echo "setting up git repos"
		cd /fm_transmitter
		make GPIO21=1

	echo "installing programs and upgrades"
		sudo apt install idle -y
		sudo apt update -y
		sudo apt upgrade -y
  
	echo "setting up LCD screen then rebooting"
		cd /LCD-show
		chmod +x LCD35-show
		./LCD35-show 270
  
fi
