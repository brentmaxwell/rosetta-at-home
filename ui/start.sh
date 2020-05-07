#! /bin/bash

# start gotty with boinctui
/usr/app/gotty -w -p 8080 boinctui&

#start express server
cd /usr/app/dashboard && npm start&

export NCURSES_NO_UTF8_ACS=1
#switch to tty2, clear screen and display boinctui 
chvt 2
printf "\033c" > /dev/tty2
exec boinctui 2> /dev/null > /dev/tty2
