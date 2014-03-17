#!/bin/bash 
echo ''
echo ' *---------------------------------------------------------------------------*'
echo '|      SoundcloudMusicDownloader(cURL/Wget version) |   FlyinGrub rework      |'
echo ' *---------------------------------------------------------------------------*'
echo 'thespaceinvader\'s mucho mas mod!'
         
while read line           
do           
	./scdl.sh $line
done <batch.txt          

ls *.mp3 >> list

mv *.mp3 /path/to/libraray/
