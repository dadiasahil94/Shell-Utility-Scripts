#script to hangel help option
Useage="DESCRIPTION:\n\t A function do profiling of Python Programs\nUSEAGE:\n\t sh python_cprofile.sh [Python_program_path]"
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

#script to check for missing Program Name
if  [$1 -eq ""]
then
	echo "Program Name is missing"
	echo "$Useage"
	exit
fi

#Main Script
python -m cProfile $1
