#echo $USER #uncomment for debug purposes
if [ "$USER" != "root" ]
	then echo "Please run as root"
	exit
else
	echo "Starting load please be patient"

	echo "starting initial setup"
		sudo apt update && sudo apt upgrade -y
		

	echo "installing git libaries"
		git clone https://github.com/maxstothart/piradio.git
		git clone https://github.com/markondej/fm_transmitter.git

	echo "Installing Home Assistant"
		sudo apt-get install jq wget curl avahi-daemon udisks2 libglib2.0-bin network-manager dbus apparmor -y
		curl -fsSL https://get.docker.com -o get-docker.sh
		sudo sh get-docker.sh
		sudo usermod -aG docker admin
		wget https://github.com/home-assistant/os-agent/releases/download/1.2.2/os-agent_1.2.2_linux_armv7.deb
		sudo dpkg -i os-agent_1.2.2_linux_armv7.deb
		wget https://github.com/home-assistant/supervised-installer/releases/latest/download/homeassistant-supervised.deb
		sudo dpkg -i homeassistant-supervised.deb
		
	echo "Installing Webmin"
  		sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python shared-mime-info
		wget http://prdownloads.sourceforge.net/webadmin/webmin_1.994_all.deb
		dpkg --install webmin_1.994_all.deb

    	echo "setting up Transmitter"
		cd /piradio
		chmod +x setup.sh
		./setup.sh
fi
