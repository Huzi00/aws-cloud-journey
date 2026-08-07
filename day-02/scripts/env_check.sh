#!/bin/bash

echo "=========================================="
echo " AWS Cloud Development Environment Check"
echo "=========================================="

if command -v aws &> /dev/null; then
    echo "[OK] AWS CLI is installed:" $(aws --version)
else
    echo "[ERROR] AWS CLI is not installed!"
fi

if command -v git &> /dev/null; then
    echo "[OK] Git is installed:" $(git --version)
else
    echo "[ERROR] Git is not installed!"
fi

echo "=========================================="
echo " Active AWS CLI Identity:"
aws sts get-caller-identity --query "Arn" --output text 2>/dev/null || echo "[WARN] AWS CLI is not configured or authenticated."
echo "=========================================="