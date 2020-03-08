#!/bin/bash
DIR=$PWD/pic/
#set your pic directory
file=(`ls $DIR | grep png 2>/dev/null`)
number=${#file[@]}

for((i=1; i<= $number ; i++));do
	# echo $i
	# echo "file://$DIR$i.png"
   	gsettings set org.gnome.desktop.background picture-uri "file://$DIR$i.png"
	sleep 20
done
