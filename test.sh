echo $USER
if [ $USER -ne root ]
  then echo "Please run as root"
  exit
elif [ $USER = root ]
  then echo "hello root user"
fi
