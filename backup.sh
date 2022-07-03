#! bin/bash
#########
# Author:merveatay
#Date:28 May
######

#load conf file
source /backup_script/backup.conf

DATA=$(date +%d-%m-%Y)
NAME=$(username -s)
ARCHIVE="$NAME_$TIME.tar.gz"
