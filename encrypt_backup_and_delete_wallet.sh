#!/bin/bash

echo "Encrypting Bitcoin with 7zip."
echo "Please enter a very secure password which you will be able to remmeber!"

# Get the current datetime
NOW=$(date +"%Y-%m-%d-%H-%M-%S")

7z a -p wallet.dat-$NOW.7z wallet.dat

if [ "$?" -ne "0" ]; then
  echo "7z return an exit status of $?.  Now exiting."
  exit $?;
fi

echo "Backing up wallet.dat-$NOW on Dropbox."
cp wallet.dat-$NOW.7z /your/backup/direcotry/in/Dropbox

#echo "Removing unencrypted wallet.dat."
#rm wallet.dat
