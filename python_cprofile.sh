if  [$1 -eq ""]
then 	echo "Enter the Program Name"
	exit
fi

python -m cProfile $1
