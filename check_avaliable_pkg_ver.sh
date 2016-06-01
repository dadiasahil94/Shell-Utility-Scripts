#echo $1
#if [$1 -eq "abc"]
#then
	#echo "Hello world"
#fi
Useage="Useage is:\n\tsh check_avalaible_pkg_ver.sh [Package_Name]"

while getopts ':hs:' option;do
	case "$option" in
		h) echo "$Useage"
		   exit
		   ;;
	esac
done


sudo apt-cache madison $1
