output "dev_instance_id" {
  value       = module.ec2_dev.instance_id
  description = "EC2 Instance ID for dev"
}

output "dev_public_ip" {
  value       = module.ec2_dev.public_ip
  description = "EC2 Public IP for dev"
}