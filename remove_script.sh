
#script to hangel help option
Useage="DESCRIPTION:\n\t A script to remove exiting functions from this git repository\nUSEAGE:\n\t sh remove_script.sh [Calling_Name]"
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

#See if calling name is missing
if [$1 == '']
then
  echo "The calling name is missing"
  echo "$Useage"
	exit
fi

#Main script
find /usr/local/bin/  -type f -iname "$1.sh" -exec rm -rf {} \;
find /usr/bin/  -type f -iname "$1"  -exec rm -rf {} \;
