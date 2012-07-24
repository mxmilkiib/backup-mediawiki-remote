#!/bin/sh
 
 BKP_DIR="/home/backup/mediawiki"
 
 /usr/sbin/logrotate -f $BKP_DIR/bkprotate.conf
 EXITVALUE=$?
 if [ $EXITVALUE != 0 ]; then
     /usr/bin/logger -t bkp-rotate "ALERT exited abnormally with [$EXITVALUE]"
 fi
 exit 0
