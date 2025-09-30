# Terraform AWS Infrastructure

This project provisions **AWS Infrastructure** using **Terraform** with **Infrastructure as Code (IaC)** best practices.  
It demonstrates reusable modules, remote state management, and modular architecture.


---

### Note
> ⚠️ **This is a demo version** of my original project created for portfolio and learning purposes.  
> The names, resources, and configurations are generic placeholders (“demo”) to ensure safe public sharing.  
> In the real version of this project, actual resource names, IDs, security configurations, and sensitive data are used according to project requirements.


---

## Features
- **VPC** with public subnet + Internet Gateway
- **EC2 Instance** (Ubuntu, t2.micro, SSH & HTTP access)
- **RDS Instance** (MySQL 8.0)
- **Remote State Management** using S3 + DynamoDB
- **Reusable Terraform Modules** for scalable infrastructure

---

## Architecture Diagram

```mermaid
graph TD
    A[Terraform] --> B[AWS Provider]
    B --> C[VPC]
    C --> D[Public Subnet]
    D --> E[EC2 Instance]
    C --> F[RDS Instance]
    C --> G[Internet Gateway]
    G --> D


Description:

VPC → Isolated network environment
Public Subnet → Hosts EC2 instance
EC2 Instance → Application server
RDS Instance → Managed MySQL database
Internet Gateway → Provides internet access to public subnet

Project Structure
terraform-aws-infra/
│── modules/
│   ├── vpc/
│   ├── ec2/
│   └── rds/
│── main.tf
│── variables.tf
│── outputs.tf
│── provider.tf
│── backend.tf
│── terraform.tfvars
│── README.md
│── .gitignore


Getting Started

1. Prerequisites

Terraform v1.x
AWS CLI configured with credentials:
aws configure
S3 bucket & DynamoDB table for remote state

2. Setup

Clone the repo:
git clone https://github.com/<your-username>/terraform-aws-infra.git
cd terraform-aws-infra
Initialize Terraform:
terraform init
Validate configuration:
terraform validate

3. Deploy Infrastructure

Plan resources:
terraform plan -out=tfplan
Apply resources:
terraform apply tfplan

4. Check Outputs
terraform output

5. Destroy Infrastructure
terraform destroy -auto-approve


Outputs

ec2_public_ip → Public IP of EC2 instance
rds_endpoint → Database connection endpoint

Learning Objectives

This project demonstrates:
Infrastructure as Code (IaC) principles
Modular Terraform project structure
Remote state management with S3 + DynamoDB
Deploying multi-tier AWS infrastructure
