#!/bin/sh
# autoScreen.sh
# version 1.0
# created by craky, 2013
#
# created like an application for creating *.png shots after five minutes from a video file
# used by Agrosoft s.r.o.
#
# This app uses a video and for one hour it makes screenshots after five minutes.
# To the screenshot (*.png) it will add date and time which you have to set up.
####################################
# TODO:
#        * variables which are not constant -> small
#        * easy set up from command line
#        * time is genereted eg. 13:5 ->> better 13:05
#        * picture need zero before < 10 minutes also same as abow
#        * beep sound like a option
#        * now it needs to be run from home folder
#	 * if you run it for 18 minutes delay is too big
#    	 * you cant now choose a new folder
# 	 * the first constant FILE_NAME is absolutly not important
###################################
# News:
#       * Beep sound 
#
###################################
DIRECTORY="./agroScreen"; # there will be  photos saved without  a time on it
START_TIME_HOUR=10;        # time , with these time will script start
START_TIME_MINUTE=0;      # same think as abow
DATE="21.8.2013 ";        # still same think as abow
FILE_NAME="AGR-$START_TIME_HOUR-$START_TIME_MINUTE-17082013_K2.png"; # file name format
DELAY=5; #delay before script will start
##################################
run(){
  runningTime=0;
  timeIndex=0;
  sleep $DELAY; # delay because you need turn the video on

  while [ $runningTime -ne 120 ] #  while program does not work 60 minutes
     do
        timeIndex=$(($timeIndex+1));
	FILE_NAME="AGR-$START_TIME_HOUR-$START_TIME_MINUTE-21082013_K1.png";
        scrot "$DIRECTORY/$FILE_NAME"; # scrot will make screenshot
        beep; # only test sound, need installed beep
        echo "Saving $FILE_NAME"; 
        
	# give a date and time to the picture
	convert -pointsize 18 -fill white -stroke white -strokewidth 1 -draw "text 0,750 \"$DATE $START_TIME_HOUR:$(($START_TIME_MINUTE%60))\"" ./agroScreen/$FILE_NAME  ./agroScreen/new/$FILE_NAME;
        START_TIME_MINUTE=$(($START_TIME_MINUTE+5));
 
        runningTime=$(($runningTime+5));
        if [ $timeIndex -eq 12 ]; then
           timeIndex=0;
	START_TIME_MINUTE=0;
	START_TIME_HOUR=$(($START_TIME_HOUR+1));
        fi;
        #sleep $((5*60)); #five minutes
        sleep 30;
     done
}
####################################
run
