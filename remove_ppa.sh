#script to handle help function
Useage="DESCRIPTION:\n\t To remove a ppa\nUSEAGE:\n\t remove_ppa [ppa_name] \n"

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

sudo add-apt-repository --remove $1
