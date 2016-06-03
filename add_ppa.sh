#script to handle help function
Useage="DESCRIPTION:\n\t To add a ppa\nUSEAGE:\n\t add_ppa [ppa_name] \n"

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

#main script
sudo add-apt-repository  $1
