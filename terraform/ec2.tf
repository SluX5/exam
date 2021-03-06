resource "aws_instance" "linux-instance" {
  ami           = "ami-08bac620dc84221eb"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.exam-subnet-public-3.id

  vpc_security_group_ids = [aws_security_group.exam-all.id]

  key_name = "slux"

  tags = {
    "Name" = "exam-instance"
  }

  depends_on = [
    aws_db_instance.exam_rds,
  ]
}