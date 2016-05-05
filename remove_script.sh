find /usr/local/bin/  -type f -iname "$1.sh" -exec rm -rf {} \;
find /usr/bin/  -type f -iname "$1"  -exec rm -rf {} \;
