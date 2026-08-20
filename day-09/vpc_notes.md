# AWS Virtual Private Cloud (VPC) Essentials

## Key Concepts
- **VPC (Virtual Private Cloud):** An isolated virtual network inside your AWS account.
- **CIDR Block:** Classless Inter-Domain Routing block defining IP address range (e.g., `10.0.0.0/16` gives 65,536 IPs).
- **Subnet:** A range of IP addresses within a VPC (`10.0.1.0/24` gives 256 IPs, 5 reserved by AWS).
- **Internet Gateway (IGW):** VPC component allowing communication between instances in the VPC and the internet.
- **Route Table:** Set of rules (routes) used to determine where network traffic is directed.

## CLI Commands Used
- `aws ec2 create-vpc`
- `aws ec2 create-subnet`
- `aws ec2 create-internet-gateway`
- `aws ec2 attach-internet-gateway`
- `aws ec2 create-route-table`
- `aws ec2 create-route`
- `aws ec2 associate-route-table`