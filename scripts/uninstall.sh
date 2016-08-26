#script to hangel help option
Useage="DESCRIPTION:\n\t A script to uninstall everything added by this repository\nUSEAGE:\n\t sudo sh uninstall.sh "
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



#Main script
find . -type f -iname "*.sh" -printf "%f\n" | sed 's/\.[^.]*$//' > record.txt

no_lines=$(wc ./record.txt -l)
current=$0

while true;
do
	line=$(head -n 1 ./record.txt)
	echo $line
	find /usr/local/bin/  -type f -iname "$line.sh" -exec rm -rf {} \;
	find /usr/bin/  -type f -iname "$line"  -exec rm -rf {} \;
	sed -i '1d' ./record.txt
done
