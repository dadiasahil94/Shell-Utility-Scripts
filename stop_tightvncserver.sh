#if no argument is given, then first vncserver will be killed
if ["$1" -eq ""]
then
    tightvncserver -kill :1
    shift
fi
while [ "$1" != "" ]; do
    echo "Parameter 1 equals $1"
    echo "You now have $# positional parameters"
    tightvncserver -kill :$1	

    # Shift all the parameters down by one
    shift
done

