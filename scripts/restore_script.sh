# Created: 2022-05-01 · Updated: 2024-09-12 · Author: Sergei Baldruev · Language: Bash · Script type: Restore utility

#!/bin/bash

# Restore script for Indigo PostgreSQL database
# Used at Mongolian-Russian Joint School IT server

# Directory containing backups
BACKUP_DIR="/var/backups/indigo"
DB_NAME="indigo_db"

# Check input argument (filename)
if [ -z "$1" ]; then
    echo "Usage: $0 backup_filename.sql"
    exit 1
fi

# Confirm file exists
BACKUP_FILE="$BACKUP_DIR/$1"
if [ ! -f "$BACKUP_FILE" ]; then
    echo "Backup file not found: $BACKUP_FILE"
    exit 1
fi

# Confirm restore action
read -p "This will overwrite the existing database '$DB_NAME'. Continue? (y/n): " CONFIRM
if [ "$CONFIRM" != "y" ]; then
    echo "Restore cancelled."
    exit 0
fi

# Drop and recreate database
echo "Restoring database from $BACKUP_FILE..."
dropdb $DB_NAME && createdb $DB_NAME
psql $DB_NAME < "$BACKUP_FILE"

echo "Restore completed."

exit 0
