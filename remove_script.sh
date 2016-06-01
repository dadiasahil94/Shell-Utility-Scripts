Useage="Useage is:\n\tsh remove_script.sh [Calling_Name]"

while getopts ':hs:' option;do
	case "$option" in
		h) echo "$Useage"
		   exit
		   ;;
	esac
done

#See if calling name is missing
if [$1 == '']
then
  echo "The calling name is missing"
  echo "$Useage"
fi

find /usr/local/bin/  -type f -iname "$1.sh" -exec rm -rf {} \;
find /usr/bin/  -type f -iname "$1"  -exec rm -rf {} \;
