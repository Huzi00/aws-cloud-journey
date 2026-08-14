# AWS EC2 Essentials & Network Security

## Key Takeaways
- **EC2 Instance:** A virtual server running in AWS data centers.
- **AMI (Amazon Machine Image):** Pre-configured template containing OS, application server, and software.
- **Key Pair:** Public-key cryptography credentials used to authenticate SSH sessions into Linux instances.
- **Security Group:** Stateful virtual firewall operating at the instance level controlling inbound and outbound traffic.

## CLI Commands Reference
- `aws ec2 create-key-pair` — Generate SSH credentials
- `aws ec2 create-security-group` — Create virtual firewall
- `aws ec2 authorize-security-group-ingress` — Define ingress rules
- `aws ec2 describe-instances` — Query running compute instances