output "rds_endpoint" {
  description = "The address of the RDS instance"
  value       = aws_db_instance.exam_vpc.endpoint
}

output "ec2_endpoint" {
  description = "The address of the EC2 instance"
  value       = aws_instance.linux-instance.public_ip
}