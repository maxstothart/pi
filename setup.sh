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
		cp .desktop/transmit.desktop /home/maxs/.local/share/applications/transmit.desktop
		cd /

	echo "installing git libaries"
		git clone https://github.com/goodtft/LCD-show.git
		git clone https://github.com/markondej/fm_transmitter
		git clone https://github.com/maxstothart/piradio.git

	echo "installing programs and upgrades"
		sudo apt update -y
		sudo apt install idle -y
		sudo apt upgrade -y
  
	echo "setting up LCD screen then rebooting"
		cd /LCD-show
		chmod +x LCD35-show
		./LCD35-show 270
  	echo "setting up Transmitter"
		cd /fm_transmitter
		make GPIO21=1
		cd /piradio
		chmod +x setup.sh
		./setup.sh
fi
