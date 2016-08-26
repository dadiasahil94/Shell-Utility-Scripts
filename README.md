# Shell Utility Scripts
Small Scripts for common shell tasks such as unzipping, untarring, upgrading packages.

## Installation
1. Download the zip file or git clone https://github.com/sdadia/Utility-Files.git
2. If zip file, then ,extract the file : **tar xzf ./Shell-Utility-Scripts**
3. Go into the directory : **cd ./Shell-Utility-Scripts**
4. Run the command : **run_me ; run_me2**

	NOTE : After doing git pull, only Run the command : sh run_me ; sh run_me2

## Get the cuting Edge
1. Go into the directory : **cd ./Utility-Files**
2. Run the git pull : **git pull**
3. Run the commands : **run_me ; run_me2**

## Uninstallation

1. Go into the directory : **cd ./Utility-Files**
2. Run the command : **sh uninstall**
3. Get out of the directory : **cd ..**
4. Delete the whole directory : **rm -rf ./Utility-Files**

## Description of Commands

	NOTE : Anything Enclosed in [ ] (square bracket) IS mandatory for the user to input

	       Anything Enclosed in " " (double quotes) IS NOT mandatory for the user to input

[comment]: # ("Anything Enclosed in [ ](square bracket) **IS NOT**  mandatory for the user to input")

* __untar_file__ : To untar a file
> untar_file [.tar.gz file] "Destination folder"

* __upgrade_single_pkg__ : To upgrade a single package
> upgrade_single [package name]

* __add_ppa__ : To add a PPA Repository
> add_ppa [ppa_name]

* __remove_ppa__ : To remove a PPA Repository
> remove_ppa [ppa_name]

* __check_avalaible_pkg_ver__ : To check avaliable package versions
>  check_avalaible_pkg_ver [Package Name]

* __check_installed_pkg_ver__ : To check installed package versions
> check_installed_pkg_ver [Package Name]

* __gcc_linkerlib_path__ : To find and get linker path for gcc libraries
> gcc_linkerlib_path [your library name here]

* __start_tightvncserver__ : To start a tightvncsever
> start_tightvncserver "display_number"

* __stop_tightvncserver__ : To stop a tightvncserver
> stop_tightvncserver [display_number]

* __install_dependencies_Z88aurora_V3__ : To install package dependencies for [Z88aurora verison 3 FEM software](http://en.z88.de/download-z88aurora/)
> install_dependencies_Z88aurora_V3

* __add_script__ : To use the above script names globally like that of inbuilt shell commands like echo etc
>  add_script [script name] [calling name]

* __remove_script__ : To remove the command
> remove_script [calling name]

* __uninstall__ : To remove all the commands by this script
> sudo uninstall

	NOTE : You will need to press ctrl-c to stop the uninstall process

* __python_cprofile__ : To profile a python code
> python_cprofile [python_program_name]

* __compile_cpp_opencv__ : To compile C++ openCV 3.0.0 files
> compile_cpp_opencv  [c++ file to compile]  "output file name"

## License

This project uses MIT-License. See LICENSE.txt for more info.
