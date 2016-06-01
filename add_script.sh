#!/usr/bin/env bash
#script to hangel help option
Useage="Description:\n\t A program to add a new script\nUseage is:\n\t sudo add_script [.sh Script_Name] [Calling_Name without .sh]"
while getopts ':hs:' option;do
	case "$option" in
		h) echo "$Useage"
		   exit
		   ;;
 help) echo "$Useage"
			 exit
			 ;;
	esac
done


#script to handle missing main script
if [$1 -eq ""]
then
	echo "Enter the script name"
	echo "$Useage"
	echo "Exiting the program"
	exit
fi

#chechk for missing calling name
if [$2 -eq ""]
then
	echo "Enter the calling name"
	echo "$Useage"
	echo "Exiting the program"
	exit
fi

#main script
chmod +x $1
sudo cp  $1 /usr/bin/$2
sudo cp  $1 /usr/local/bin
echo "File name is : '$1'"
echo "CALLING name is : '$2'"
echo "Finished."

echo "$1	$2" >> record.txt
echo "sh ./add_script.sh $1 $2 " | cat - run_me.sh >> temp && mv temp run_me.sh
exit
