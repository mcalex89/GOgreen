provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "default" {

  # DB instance size
  allocated_storage    = 20
  max_allocated_storage = 100
  storage_type         = "gp2"
  instance_class       = "db.t2.micro"

  # Engine options
  engine               = "mysql"
  engine_version       = "5.7"

  # DB instance identifier
  identifier           = "database-project"
  name                 = "ProjectDB"
  username             = "admin"
  password             = "password"

  # Availity & durability
  multi_az             = "true"
  availability_zone    = "us-east-1a"

  # Connectivity
  port                 = "3306"
  #vpc_security_group_ids = 


  # Additional configuration
  parameter_group_name = "default.mysql5.7"
  storage_encrypted    = "false"
  skip_final_snapshot  = "true"
  publicly_accessible  = "false"

  # DB deletion protection
  deletion_protection  = "false"
}  