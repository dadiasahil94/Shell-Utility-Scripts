#Intallation file for dependencies of Z88aurora v3

#Each line is dependency
#Run this file as 
#sudo sh install_Z88aurora_dependencies.sh 

sudo apt-get update
sudo apt-get install libc6 -y 
sudo apt-get install libglib2.0-dev -y
sudo apt-get install libgtk2.0-dev -y
sudo apt-get install libglu1-mesa-dev -y
sudo apt-get install libpango-1.0-0 -y
sudo apt-get install tcl8.4 -y
sudo apt-get install tk8.4 -y
