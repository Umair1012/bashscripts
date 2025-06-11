#!/bin/bash

# Define variables
BUCKET_NAME="my-backup-bucket-daily"
REGION="us-east-1"

# Create S3 bucket
aws s3api create-bucket \
  --bucket "$BUCKET_NAME" \
  --region "$REGION"

echo "S3 Bucket $BUCKET_NAME has been created"