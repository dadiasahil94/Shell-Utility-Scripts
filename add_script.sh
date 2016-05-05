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

echo "$1					$2" >> record.txt
#sed  -i '1i ./add_script.sh $1 $2' run_me.sh
echo "sh add_script.sh $1 $2 " | cat - run_me.sh >> temp && mv temp run_me.sh
exit
