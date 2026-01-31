#!/bin/bash
DATE=$(date +%Y%m%d_%H%M%S)
ssh root@192.168.30.10 "mysqldump --all-databases | gzip" > /backup/database/db_$DATE.sql.gz
find /backup/database/ -mtime +7 -delete