#!/bin/bash
audiosdir="/root/alarm/audios/" #change me
defvol="-2200" #default sound volume, as lower as quiter

apath=$(find $audiosdir -type f|grep .mp3| shuf -n 1)
vlpath=$(echo $apath|sed 's/.\{3\}$//')vol

if [ -a $vlpath ];then
	vol=$(cat $vlpath)
else
	vol=$defvol
fi
tmux new -d -s "wakeup-alarm" "omxplayer --vol $vol $apath"
