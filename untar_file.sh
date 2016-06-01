#script to hangel help option
Useage="DESCRIPTION:\n\t A script to extract a tar file\nUSEAGE:\n\tsh untar_file.sh [.tar.gz file] \"Destination folder\" "
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

#See if input file is missing
if [$1 -eq '']
then
	echo "Input file is missing"
	echo "$Useage"
	exit
fi

#
#case if destination folder is not mentioned
if [$2 -eq '']
then
	echo "Destination directory not specified.\nSetting the CURRENT directory as destination directory\n"
	echo "Input File Location: $1"
	echo "Output destination : $PWD"
	#echo "$1"
	#echo "$dest"
	tar xzf $1
	exit

fi

echo "Input File Location: $1"
echo "Output destination : $2"
tar xzf $1 -C "$2"
