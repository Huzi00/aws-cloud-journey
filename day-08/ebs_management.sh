#!/bin/bash
# Day 08 — AWS EBS Volume Lifecycle Script

# 1. Fetch current region's first Availability Zone
AZ=$(aws ec2 describe-availability-zones --query "AvailabilityZones[0].ZoneName" --output text)
echo "Target Availability Zone: $AZ"

# 2. Provision 1 GiB gp3 EBS volume
VOLUME_ID=$(aws ec2 create-volume \
  --availability-zone "$AZ" \
  --size 1 \
  --volume-type gp3 \
  --tag-specifications 'ResourceType=volume,Tags=[{Key=Name,Value=Day08-EBS-Volume}]' \
  --query "VolumeId" --output text)

echo "Provisioned EBS Volume: $VOLUME_ID"

# 3. Query volume status
aws ec2 describe-volumes --volume-ids "$VOLUME_ID" --query "Volumes[0].[VolumeId,State,Size,AvailabilityZone]" --output table

# 4. Clean up volume
echo "Cleaning up volume $VOLUME_ID..."
aws ec2 delete-volume --volume-id "$VOLUME_ID"
echo "Volume deleted successfully."