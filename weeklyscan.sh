#!/bin/sh
d=$(date -u +%Y-%m-%d)
clamscan > "/root/$d-weeklyscan.log"
echo "" >> "/root/$d-weeklyscan.log"
chkrootkit >> "/root/$d-weeklyscan.log"
echo "" >> "$d-weeklyscan.log"
rkhunter --check --skip-keypress >>  "$d-weeklyscan.log"

