#script to handle help function
Useage="DESCRIPTION:\n\t A function to know the version of installed Packages\nUSEAGE:\n\t sudo sh check_installed_pkg_ver.sh [Package_Name] \n"

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
	echo "The Package Name is missing"
	echo "$Useage"
	exit
fi

#Final Script
dpkg -s  $1 | grep  Version
