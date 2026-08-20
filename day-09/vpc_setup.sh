#!/bin/bash
# Day 09 — AWS Custom VPC & Public Subnet Provisioning

echo "--- 1. Creating Custom VPC (10.0.0.0/16) ---"
VPC_ID=$(aws ec2 create-vpc \
  --cidr-block 10.0.0.0/16 \
  --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=Day09-Custom-VPC}]' \
  --query "Vpc.VpcId" --output text)
echo "VPC Created: $VPC_ID"

echo "--- 2. Creating Public Subnet (10.0.1.0/24) ---"
SUBNET_ID=$(aws ec2 create-subnet \
  --vpc-id $VPC_ID \
  --cidr-block 10.0.1.0/24 \
  --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=Day09-Public-Subnet}]' \
  --query "Subnet.SubnetId" --output text)
echo "Subnet Created: $SUBNET_ID"

echo "--- 3. Creating and Attaching Internet Gateway ---"
IGW_ID=$(aws ec2 create-internet-gateway \
  --tag-specifications 'ResourceType=internet-gateway,Tags=[{Key=Name,Value=Day09-IGW}]' \
  --query "InternetGateway.InternetGatewayId" --output text)
aws ec2 attach-internet-gateway --vpc-id $VPC_ID --internet-gateway-id $IGW_ID
echo "IGW Attached: $IGW_ID"

echo "--- 4. Creating Custom Route Table & Public Route ---"
RT_ID=$(aws ec2 create-route-table \
  --vpc-id $VPC_ID \
  --tag-specifications 'ResourceType=route-table,Tags=[{Key=Name,Value=Day09-Public-RT}]' \
  --query "RouteTable.RouteTableId" --output text)

# Route all 0.0.0.0/0 outbound traffic to the Internet Gateway
aws ec2 create-route --route-table-id $RT_ID --destination-cidr-block 0.0.0.0/0 --gateway-id $IGW_ID > /dev/null

# Associate Route Table with Public Subnet
ASSOC_ID=$(aws ec2 associate-route-table --subnet-id $SUBNET_ID --route-table-id $RT_ID --query "AssociationId" --output text)
echo "Route Table Associated with Subnet. Association ID: $ASSOC_ID"

echo ""
echo "=== VPC Infrastructure Successfully Provisioned ==="
echo "VPC ID: $VPC_ID | Subnet ID: $SUBNET_ID | IGW ID: $IGW_ID | Route Table ID: $RT_ID"