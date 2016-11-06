#Суровый линуксойдовский будильник из Raspberry Pi / Raspberry Pi wake up alarm

Requirements: omxplayer, tmux, cron

Usage:

1. Create audios/ dir, then place your mp3's to it.

2. Change audiosdir varrible at 2nd line of alarm.sh to path to audios/ dir.

3. Populate your crontab with records, that will launch alarm.sh at moment, where you should wake up. (read example.crontab as example)
