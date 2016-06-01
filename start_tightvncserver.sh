Useage="Useage is:\n\tsh start_tightvncserver.sh \"Display_Number\" "

while getopts ':hs:' option;do
	case "$option" in
		h) echo "$Useage"
		   exit
		   ;;
	esac
done


if ["$1" -eq ""]
then
    tightvncserver :1
    shift
fi
#for recursively starting the displays
while [ "$1" != "" ]; do
#    echo "Parameter 1 equals $1"
#   echo "You now have $# positional parameters"
    tightvncserver  :$1

    # Shift all the parameters down by one
    shift
done
