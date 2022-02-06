#!/bin/bash
user=whoami
if [ $user = root ]
then
  echo "user is root"
else
  echo "user is not root"
fi
