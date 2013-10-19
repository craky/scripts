#!/bin/sh
# version 1.0
# created by craky, 2013
# It turns off pc after file ($1) does not exist
# file have to be in folder Stažené
#
isRoot(){
	if [ "$(id -u)" != "0" ]; then
   		echo "This script must be run as root" 1>&2;
   		exit 1;
	fi
}
############################################################
runProgram() {
vSleep=30;
	while [ -e Stažené/$1 ]
	do
  		echo "$1 exists.";
  		echo "Sleeping for $vSleep s...";
  		sleep $vSleep;
	done
 	echo "$1 does not exist.";
 	echo "Turning off...";
 	echo "-----------------" >> logShutDownScript.txt;
 	echo "Shuting down at: " >> logShutDownScript.txt;
 	date >> logShutDownScript.txt;
 	shutdown -h now;
}
############################################################
# Make sure only root can run our script
isRoot;
runProgram $1

