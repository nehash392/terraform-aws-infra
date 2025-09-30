variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2"
}

variable "db_password" {
  description = "Database password"
  sensitive   = true
}
