# Terraform AWS Infrastructure Project

## Overview

This project provisions AWS infrastructure using Terraform and follows a modular architecture. The infrastructure is deployed across separate environments (Staging and Production) and uses a remote backend for centralized Terraform state management.

## Technologies Used

* Terraform
* AWS
* Git
* GitHub
* GitHub Actions (Planned)

## Infrastructure Components

The following AWS resources are provisioned:

* VPC
* Public and Private Subnets
* Internet Gateway
* Route Tables
* Security Groups
* EC2 Instance (Bastion Host)
* RDS MySQL Database
* S3 Backend Bucket
* DynamoDB State Locking Table

## Project Structure

```text
Assignment_001/
│
├── Environments/
│   ├── Staging/
│   └── Production/
│
├── modules/
│   ├── VPC/
│   ├── Subnets/
│   ├── SecurityGroups/
│   ├── Ec2Instance/
│   └── RDS/
│
└── Remote-backend/
```

## Terraform Workflow

```bash
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

## Remote Backend

Terraform state is stored remotely in:

* Amazon S3 (State Storage)
* Amazon DynamoDB (State Locking)

## Author

Sanskar Chourasia
