#!/bin/bash 
#setup your librarypath ;)
library="/path/to/the/lib/"

echo ''
echo ' *---------------------------------------------------------------------------*'
echo '|      SoundcloudMusicDownloader(cURL/Wget version) |   FlyinGrub rework      |'
echo ' *---------------------------------------------------------------------------*'
echo 'thespaceinvaders mucho mas mod!'
         
while read line           
do           
	./scdl.sh $line

	echo -n '[B] Adding '
	find ./ -type f | wc -l | echo -n
	echo 'files to the list'
	
	ls *.mp3 >> list
	
	echo '[B] moving this tracks to the final media directory'
	mv -v *.mp3 $library 

done <batch.txt           
# The librarypath moved to the 3rd line ;)
