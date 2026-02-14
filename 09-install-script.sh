#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "ERROR:: you must have sudo access to exicute this script"
exit 1 #other than 0
fi
sudo dnf update -y
sudo dnf install mariadb105-server -y
sudo systemctl start mariadb
sudo systemctl enable mariadb


if [ $? -ne 0 ]
then
    echo "Installing MySQL... FAILURE"
    exit 1
else
    echo "Installing MySQL... SUCCESS"
fi
sudo dnf install git -y
if [ $? -ne 0 ]
then
    echo "Installing GIT... FAILURE"
    exit 1
else
    echo "Installing GIT... SUCCESS"
fi