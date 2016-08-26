#script to hangel help option
Useage="DESCRIPTION:\n\t A script to start tightvncserver\nUSEAGE:\n\t sh start_tightvncserver.sh \"Display_Number\" "

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


#script to handle missing Display Number of vncserver
if ["$1" -eq ""]
then
    tightvncserver :1
    shift
fi

# Main Script
#for recursively starting the displays
while [ "$1" != "" ]; do
    tightvncserver  :$1
    # Shift all the parameters down by one
    shift
done
