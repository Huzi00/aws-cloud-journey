# AWS S3 Foundations & CLI Operations

## Key Takeaways
- **Global Uniqueness:** S3 bucket names are unique globally across all AWS regions and accounts.
- **Key-Value Store:** S3 treats files as objects mapped to unique keys (paths).
- **Core Commands:**
  - `aws s3 mb s3://<bucket-name>` — Create bucket
  - `aws s3 ls` — List buckets/objects
  - `aws s3 cp <local> s3://<bucket>` — Upload file
  - `aws s3 sync <dir> s3://<bucket>/<prefix>` — Sync directories