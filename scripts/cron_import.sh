#!/bin/bash

# Keep the old crontab records.
crontab -l > /tmp/backup_cron
cp ./weekday_cronfile /tmp/
cat /tmp/backup_cron >> /tmp/weekday_cronfile

crontab /tmp/weekday_cronfile
