#!/bin/bash
DATE=$(date +%Y%m%d_%H%M%S)
rsync -avz --delete root@192.168.10.2:/var/www/ /backup/web/www_$DATE/
# Keep only last 7 days
find /backup/web/ -mtime +7 -delete