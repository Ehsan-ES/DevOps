#!/bin/bash

DIRBCKUP="backup_v2"
DB_USER="ehsan"
DB_PASS="ehs@n.1992"
DB_NAME="mydb"

DATE=$(date +%F)

mkdir -p $DIRBCKUP
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $DIRBCKUP/backup-$DATE.sql

if [ $? -eq 0 ]; then
	echo "Backup successful in $DIRBCKUP/backup-$DATE.sql"
else
	echo "Backup Failed..!!"
fi

