resource "aws_db_subnet_group" "rds_subnet" {
  name       = "demo-rds-subnet-group"
  subnet_ids = [var.subnet_id]
}

resource "aws_db_instance" "this" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.rds_subnet.name

  vpc_security_group_ids = [var.sg_id]

  tags = { Name = "demo-rds" }
}
