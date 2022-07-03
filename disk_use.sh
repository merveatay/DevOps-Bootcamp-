#!/bin/bash
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read -r output;
do
  echo $output
  used=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
  partition=$(echo $output | awk '{ print $2 }' )
  if [ $used -ge 90 ]; then
    echo "The partition \"$partition\" on $(hostname) used $used%" | mail -s "Disk alert: $used% used" anonim.insann@gmail.com
  fi
done