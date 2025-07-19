output "staging_instance_id" {
  value       = module.ec2_staging.instance_id
  description = "EC2 Instance ID for staging"
}

output "staging_public_ip" {
  value       = module.ec2_staging.public_ip
  description = "EC2 Public IP for staging"
}