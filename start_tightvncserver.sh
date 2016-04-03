if ["$1" -eq ""]
then
    tightvncserver :1
    shift
fi
#for recursively starting the displays
while [ "$1" != "" ]; do
#    echo "Parameter 1 equals $1"
#   echo "You now have $# positional parameters"
    tightvncserver  :$1    

    # Shift all the parameters down by one
    shift
done


