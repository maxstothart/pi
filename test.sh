echo $USER
if [ "$USER" -ne "root" ]
  then echo "Please run as root"
  exit
else
  then echo "hello root user"
fi
