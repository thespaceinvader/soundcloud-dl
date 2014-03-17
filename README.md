Souncloud music downloader
==============

Description
--------------
This shell script is able to download music from http://www.soundcloud.com.
It should work with iOS, OS X, Linux.

System requirements
--------------
* Unix like OS with a proper shell
* URL (Highly recommended) or wget
* Tools wich are preinstalled on linux (I don't know  for OS X) : `recode` ; `sed` ; `tail` ; `tr` ; `echo` ; `grep` ; `head` ; `cut` ; `sort` ; `uniq` .


Required tools
--------------
* Update the package list : `sudo apt-get update`
* Install eyeD3 `sudo apt-get install eyeD3`
* Install cURL `sudo apt-get install curl`

Instructions for download
--------------
* Click "Donwload as zip" (at the right)
* Unzip
* Apply executable permissions `chmod +x *.sh`

Usage
--------------
* Single URL download: `scdl.sh [TRACK(S) URL]` or `scdl.sh [USER URL]` or `scdl.sh [SET(S)URL]`
  The single URL download saves the file at your current location
* To use the batch mode (mucho mas mod) just add each URL to the 'batch.txt' (each line one URL) and modify the path in the last line of 'batch.sh'. All mp3-files will be copied to this place after downloading. The script generates a file called th 'list'. It contains the name of every track allready downloaded so you can move the track to another destination and the script won´t download it again.



Features
--------------
* NEW: Batch download all mp3-files from the sources specified in 'batch.txt'
* NEW: Skip existing files (specified in the 'list')
* Download all song of one user's page
* Download all song of one song page
* Download all song of one user's playlist page
* Download all song of one user's list of playlist page
* Download all song of one group page
* Set tags with eyeD3 (skip the tag if eyeD3 is not installed)
* The script stop when he see one song that have already been downloaded
* You can use it as a sync script as i do with my Raspberry PI, each night it launch the script with my users profile and if new song as been added it download them and stop when it encounter a song that is already downloaded ;).

Changelog
--------------
17/03/2014
* Added batchmode
* Download skips existing files

18/01/2014 :
* Replaced id3v2 with eyeD3 wich support image tag
* Added image & genre tags support for each type 
* Added support of playlist in an users page !

More information
--------------
The script cannot handle letters like `û` cause to recode. But if i remove it, instead of `&` you will have `&amp;` (the html code of `&`) and as i think there is more `&` than `û` i prefer to let it...

License
--------------
[GPL v2](https://www.gnu.org/licenses/gpl-2.0.txt), orignal author [Luka Pusic](http://pusic.si)
