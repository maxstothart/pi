echo $USER
if [ "$USER" != "root" ]
  then echo "Please run as root"
  exit
else
  echo "hello root user"
fi
