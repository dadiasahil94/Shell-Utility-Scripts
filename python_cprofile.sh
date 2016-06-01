Useage="Useage is:\n\tsh python_cprofile.sh [Python_program_path]"

while getopts ':hs:' option;do
	case "$option" in
		h) echo "$Useage"
		   exit
		   ;;
	esac
done

if  [$1 -eq ""]
then
	echo "Program Name is missing"
	echo "$Useage"
	exit
fi

python -m cProfile $1
