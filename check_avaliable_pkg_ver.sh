#script to handle help function
Useage="DESCRIPTION:\n\t A function to know the avaliable version of Packages\nUSEAGE:\n\t sudo sh check_avalaible_pkg_ver.sh [Package_Name] \n"

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

#script to check for missing Package Name
if [$1 == '']
then
	echo "Package Name is missing"
	echo "$Useage"
	exit
fi

#Final Script
sudo apt-cache madison $1
