# Utility-Files
Small Scripts for Big Tasks

	NOTE : Anything Enclosed in [ ] (square bracket) IS mandatory for the user to input
	
	       Anything Enclosed in " " (double quotes) IS NOT mandatory for the user to input

[comment]: # ("Anything Enclosed in [ ](square bracket) **IS NOT**  mandatory for the user to input")
* __start_tightvncserver.sh__ : To start a tightvncsever
> sudo sh start_tightvncserver.sh "display_number"
	
* __stop_tightvncserver.sh__ : To stop a tightvncserver
> sudo sh stop_tightvncserver.sh [display_number]
	
* __check_avalaible_pkg_ver.sh__ : To check avaliable package versions
>  sudo sh check_avalaible_pkg_ver.sh [Package Name]

* __check_installed_pkg_ver.sh__ : To check installed package versions
> sudo sh check_installed_pkg_ver.sh [Package Name]

* __install_dependencies_Z88aurora_V3.sh__ : To install package dependencies for [Z88aurora verison 3 FEM software](http://en.z88.de/download-z88aurora/)
> sudo sh install_dependencies_Z88aurora_V3.sh

* __upgrade_single.sh__ : To upgrade a single package 
> sudo sh upgrade_single.sh [package name]

* __add_script.sh__ : To use the above script names globally
> sh upgrade_single.sh [package name]
