user=whoami
echo $user
if [ $user -ne 0 ]
  then echo "Please run as root"
  exit
elif [ $user = 0 ]
  then echo "hello root user"
fi
