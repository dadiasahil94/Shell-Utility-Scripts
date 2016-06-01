Useage="Useage is:\n\tsh uninstall.sh "

while getopts ':hs:' option;do
	case "$option" in
		h) echo "$Useage"
		   exit
		   ;;
	esac
done



find . -type f -iname "*.sh" -printf "%f\n" | sed 's/\.[^.]*$//' > record.txt

no_lines=$(wc ./record.txt -l)
current=$0

while true;
do
	line=$(head -n 1 ./record.txt)
	echo $line
#	echo $current
	find /usr/local/bin/  -type f -iname "$line.sh" -exec rm -rf {} \;
	find /usr/bin/  -type f -iname "$line"  -exec rm -rf {} \;
#	current=$[$current+1]
	sed -i '1d' ./record.txt
done
