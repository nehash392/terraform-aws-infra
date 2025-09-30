terraform {
  backend "s3" {
    bucket         = "demo-terraform-state-bucket"
    key            = "demo-aws-infra/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "demo-terraform-locks"
    encrypt        = true
  }
}
