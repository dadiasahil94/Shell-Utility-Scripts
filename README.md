# Utility-Files
Small Scripts for Big Tasks

## Installation
1. Download the zip file or git clone https://github.com/dadiasahil94/Utility-Files.git
2. Extract the file : **tar xzf ./Utility-Files**
3. Go into the directory : **cd ./Utility-Files**
4. Run the command : **sudo sh run_me.sh ; sudo sh run_me2.sh**

	NOTE : After doing git pull, only Run the command : sh run_me.sh ; sh run_me2.sh

## Get the cuting Edge
1. Go into the directory : **cd ./Utility-Files**
2. Run the git pull : **git pull**
3. Run the commands : **sudo sh run_me.sh ; sudo sh run_me2.sh**

## Uninstallation

1. Go into the directory : **cd ./Utility-Files**
2. Run the command : **sh uninstall.sh**
3. Get out of the directory : **cd ..**
4. Delete the whole directory : **rm -rf ./Utility-Files**

## Description of Commands

	NOTE : Anything Enclosed in [ ] (square bracket) IS mandatory for the user to input

	       Anything Enclosed in " " (double quotes) IS NOT mandatory for the user to input

[comment]: # ("Anything Enclosed in [ ](square bracket) **IS NOT**  mandatory for the user to input")


* __untar_file.sh__ : To untar a file
> sudo sh untar_file.sh [.tar.gz file] "Destination folder"

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

* __upgrade_single_pkg.sh__ : To upgrade a single package
> sudo sh upgrade_single.sh [package name]

* __add_script.sh__ : To use the above script names globally like that of inbuilt shell commands like echo etc
> sh add_script.sh [script name] [calling name]

* __remove_Script.sh__ : To remove the command
> sudo sh remove_Script.sh [calling name]

* __uninstall.sh__ : To remove all the commands by this script
> sudo sh uninstall.sh

	NOTE : You will need to press ctrl-c to stop the uninstall process

* __python_cprofile.sh__ : To profile a python code
> sudo sh python_cprofile.sh [python_program_name]

* __compile_cpp_opencv.sh__ : To compile C++ openCV 3.0.0 files
> sh compile_cpp_opencv.sh  [c++ file to compile]  "output file name"

* __add_ppa.sh__ : To add a PPA Repository
> sudo sh add_ppa.sh [ppa_name]

* __remove_ppa.sh__ : To remove a PPA Repository
> sudo sh remove_ppa.sh [ppa_name]

## Description of Commands

This project uses MIT-License
