#!/bin/sh
# version 1.2
# edited:
#	 * Added new option music2WP to run gmtp. 
# created by craky, 2015
# It runs a Program which I choose
# Arguments:
#	     * eagle
#       * mathematica
#	     * remoteDroid
#		  * music2WP
runProgram() {
case $1 in
	"eagle") ~/eagle-6.4.0/bin/eagle &;;
	"mathematica") ~/Mathematica/Executables/Mathematica &;;
	"remoteDroid") java -jar ~/Dokumenty/remoteDroid/RemoteDroidServer.jar &;;
	"music2WP") gmtp &;;

	*) echo "Invalid argument";;
esac
}

runProgram $1

