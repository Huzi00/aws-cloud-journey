# AWS Elastic Block Store (EBS) Essentials

## Key Takeaways
- **EBS Volume:** High-performance block storage designed for use with EC2 instances.
- **Availability Zone Bound:** An EBS volume can only be attached to an EC2 instance located in the exact same AZ.
- **Volume Types:**
  - `gp3` / `gp2`: General Purpose SSD (balanced cost and performance).
  - `io2` / `io1`: Provisioned IOPS SSD (high-performance databases).
  - `st1` / `sc1`: HDD-based volumes for big data / cold storage.
- **Snapshots:** Point-in-time incremental backups stored durably in Amazon S3.

## CLI Reference
- `aws ec2 create-volume` — Provision a new block storage volume
- `aws ec2 attach-volume` — Mount volume to a running EC2 instance
- `aws ec2 create-snapshot` — Take point-in-time backup
- `aws ec2 delete-volume` — Remove storage resource