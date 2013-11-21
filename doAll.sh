#!/bin/sh
g++ main.cpp -O3;
/opt/bin/qrun.sh 12c 1 1slots_per_host addToQueue.sh;
qstat; 

