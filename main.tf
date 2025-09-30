module "vpc" {
  source     = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
  region     = var.aws_region
}

module "ec2" {
  source        = "./modules/ec2"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.public_subnet_id
  instance_type = "t2.micro"
  ami_id        = var.ami_id
}

module "rds" {
  source    = "./modules/rds"
  vpc_id    = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnet_id
  db_name   = "demo_db"
  username  = "demo_admin"
  password  = var.db_password
  sg_id     = module.ec2.security_group_id
}
