#!/bin/bash

BACKUP_DIR="backup_db"
DB_USER="ehsan"
DB_PASS="ehs@n.1992"
DB_NAME="mydb"


DATE=$(date +%F)
mkdir -p $BACKUP_DIR

BACKUP_NAME="$BACKUP_DIR/backup-$DATE.sql"

#BACKUP_NAME=${BACKUP_DIR}/backup-${DATE}.sql ---->   OTHER WAY

mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_NAME

if [ $? -eq 0 ];then
       echo "SUCCESSFULL BACKUP AT : $BACKUP_NAME"
else
	echo "ERROR IN BACKUP!!"
fi

