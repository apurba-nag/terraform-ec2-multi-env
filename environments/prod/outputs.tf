output "prod_instance_id" {
  value       = module.ec2_prod.instance_id
  description = "EC2 Instance ID for prod"
}

output "prod_public_ip" {
  value       = module.ec2_prod.public_ip
  description = "EC2 Public IP for prod"
}