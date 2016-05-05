if [$1 -eq '']
then
	echo "Specify the input file"
	echo "Exiting the Program"
	exit
fi

if [$2 -eq '']
then
	echo "Destination directory not specified.\nSetting the current directory as destination directory"
	echo "Input File : $1"
	echo "Output destination : $PWD"
	echo "$1" 
	echo "$dest"
	tar xzf $1 
	exit

fi

echo "Input File : $1"
echo "Output destination : $2"
tar xzf $1 -C $2

