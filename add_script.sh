#!/usr/bin/env bash

if [$1 -eq ""]
then
	echo "Enter the script name"
	echo "Exiting the program"
	exit 
fi
if [$2 -eq ""] 
then
	echo "Enter the calling name"
	echo "Exiting the program"
	exit 
fi

chmod +x $1
sudo cp  $1 /usr/bin/$2
sudo cp  $1 /usr/local/bin
echo "File name is : '$1'"
echo "CALLING name is : '$2'"
echo "Finished."
