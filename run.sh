#!/bin/sh
# version 1.1
# edited:
#	 * Procceses are run in background
# created by craky, 2013
# It runs a Program which I choose
# Arguments:
#	     * Eagle
#            * Mathematica
#	     * RemoteDroid
runProgram() {
case $1 in
	"eagle") ./eagle-6.4.0/bin/eagle &;;
	"mathematica") ./Dokumenty/Mathematica/Mathematica &;;
	"remoteDroid") java -jar ./Dokumenty/remoteDroid/RemoteDroidServer.jar &;;	

	*) echo "Invalid argument";;
esac


}

runProgram $1

