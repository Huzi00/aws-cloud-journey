# AWS IAM & Least Privilege Security

## Key Concepts
- **Users:** Permanent identities for human operators or long-lived services.
- **Groups:** Collection of users sharing the same permission set.
- **Roles:** Temporary identities assumed by AWS services (e.g., EC2, Lambda) or federated users without hardcoded credentials.
- **Policies:** JSON documents defining permissions attached to Users, Groups, or Roles.

## Least Privilege Principle
- Never assign `AdministratorAccess` (`"Action": "*"`) for routine tasks.
- Restrict permissions to minimum API calls (`s3:ListBucket`, `s3:GetObject`) and explicit target ARNs.