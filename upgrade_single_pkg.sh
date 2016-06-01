Useage="Useage is:\n\tsh upgrade_single_pkg.sh  [package_name] \n\n"

while getopts ':hs:' option;do
	case "$option" in
		h) echo "$Useage"
		   exit
		   ;;
	esac
done


#USEAGE :
#sh upgrade_single_pkg.sh  [package_name]

#See if package_name is missing
if [$1 == '']
then
  echo "The package_name is mission\n"
  echo "$Useage"
  exit
fi
sudo apt-get install --only-upgrade $1
