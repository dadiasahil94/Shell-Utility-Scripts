#script to hangel help option
Useage="Description:\n\t A script to upgrade a single program\nUSEAGE:\n\t sudo upgrade_single_pkg [package_name]\n"
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


#See if package_name is missing
if [$1 == '']
then
  echo "The package_name is mission\n"
  echo "$Useage"
  exit
fi

#main script
sudo apt-get install --only-upgrade $1
