#!/bin/bash

SOURCE_DIR="/workspaces/bashscripts"
BACKUP_DIR="/backup"
S3_BUCKET="s3://my-backup-bucket-daily"  # Corrected from ARN to S3 URI

# Create the backup directory if it doesn't exist
sudo mkdir -p "$BACKUP_DIR"

# Copy the source directory contents into the backup directory
sudo cp -r "$SOURCE_DIR" "$BACKUP_DIR"

# Sync the backup directory to the S3 bucket
aws s3 sync "$BACKUP_DIR" "$S3_BUCKET"

echo "✅ Backup completed successfully."
