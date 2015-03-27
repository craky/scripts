#!/bin/sh
# doAll.sh
###################
# The script which was used on star.fit.cvut.cz.
g++ main.cpp -O3;
/opt/bin/qrun.sh 12c 1 1slots_per_host addToQueue.sh;
qstat; 

