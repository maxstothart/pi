if [ $EUID -ne 0 ]
  then echo "Please run as root"
  exit
elif [ $UEID = 0 ]
  then echo "hello root user"
fi
