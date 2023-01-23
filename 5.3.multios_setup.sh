#!/bin/bash

# Variable Declaration
PACKAGE="httpd wget unzip"
SVC="httpd"
URL='https://www.tooplate.com/zip-templates/2098_health.zip'
ART_NAME='2098_health'
TEMPDIR="/tmp/webfiles"

yum --help &> /dev/null

if [ $? -eq 0 ]
then
   # Set Variables for CentOS
   PACKAGE="httpd wget unzip tmux"
   SVC="httpd"

   # Installing Dependencies
   sudo yum install $PACKAGE -y > /dev/null

   # Start & Enable Service
   sudo systemctl start $SVC
   sudo systemctl enable $SVC

   # Creating Temp Directory
   mkdir -p $TEMPDIR
   cd $TEMPDIR

   wget $URL > /dev/null
   unzip $ART_NAME.zip > /dev/null
   sudo cp -r $ART_NAME/* /var/www/html/

   # Bounce Service
   systemctl restart $SVC

   # Clean Up
   rm -rf $TEMPDIR
   echo

   sudo systemctl status $SVC
   ls /var/www/html/

else
    # Set Variables for Ubuntu
   PACKAGE="apache2 wget unzip tmux"
   SVC="apache2"

   # Installing Dependencies
   sudo apt update
   sudo apt install $PACKAGE -y > /dev/null

   # Start & Enable Service
   sudo systemctl start $SVC
   sudo systemctl enable $SVC

   # Creating Temp Directory
   mkdir -p $TEMPDIR
   cd $TEMPDIR
   echo

   wget $URL > /dev/null
   unzip $ART_NAME.zip > /dev/null
   sudo cp -r $ART_NAME/* /var/www/html/
   echo

   # Bounce Service
   systemctl restart $SVC

   # Clean Up
   rm -rf $TEMPDIR

   sudo systemctl status $SVC
   ls /var/www/html/
fi 
