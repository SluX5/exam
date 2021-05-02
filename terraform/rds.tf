resource "aws_db_instance" "exam_vpc" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "exam_rds"
  skip_final_snapshot  = true
  publicly_accessible  = true
  username             = "exam_rds"
  password             = "exam_rds"
  parameter_group_name = "default.mysql5.7"

  tags = {
    "Name" = "exam_rds"
  }
}
