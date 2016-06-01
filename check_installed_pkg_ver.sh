Useage="Useage is:\n\tsh check_installed_pkg_ver.sh [Package_Name]"

while getopts ':hs:' option;do
	case "$option" in
		h) echo "$Useage"
		   exit
		   ;;
	esac
done

dpkg -s  $1 | grep  Version
