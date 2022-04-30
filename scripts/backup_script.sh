# Created: 2022-04-30 · Updated: 2024-09-10 · Author: Sergei Baldruev · Language: Bash · Script type: Backup utility

#!/bin/bash

# Backup script for Indigo PostgreSQL database
# Used at Mongolian-Russian Joint School IT server

# Directory to store backups
BACKUP_DIR="/var/backups/indigo"
DB_NAME="indigo_db"
DATE=$(date +%F)
FILENAME="$BACKUP_DIR/${DB_NAME}_backup_$DATE.sql"

# Create backup
echo "Starting backup for $DB_NAME..."
pg_dump $DB_NAME > "$FILENAME"

# Check if backup was created
if [ -f "$FILENAME" ]; then
    echo "Backup successful: $FILENAME"
else
    echo "Backup failed!"
    exit 1
fi

# Optional: delete backups older than 14 days
find "$BACKUP_DIR" -name "*.sql" -type f -mtime +14 -exec rm -f {} \;

exit 0
