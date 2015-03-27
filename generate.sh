#!/bin/sh
# generate.sh
#################
# The script was made because of students reasons.
file_name=1100;

./generator_grafu -t NAH -n $file_name -k 5 -o $file_name.txt;
./souvislost_grafu -s -o M$file_name.txt -i $file_name.txt;
./iCreator/main < M$file_name.txt > maticeD$file_name.txt;
./iCreator/main a < M$file_name.txt > maticeF$file_name.txt;

file_name=1300;
./generator_grafu -t NAH -n $file_name -k 5 -o $file_name.txt;
./souvislost_grafu -s -o M$file_name.txt -i $file_name.txt;
./iCreator/main < M$file_name.txt > maticeD$file_name.txt;
./iCreator/main a < M$file_name.txt > maticeF$file_name.txt;


