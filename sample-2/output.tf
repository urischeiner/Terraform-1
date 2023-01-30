output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.my_ec2.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}

output "cpu_count" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.my_ec2.cpu_core_count 
}
