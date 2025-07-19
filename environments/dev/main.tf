# main.tf (Root level)

provider "aws" {
  region = var.aws_region
}

# Reuse the EC2 instance module for DEV environment
module "ec2_dev" {
  source            = "../../modules/ec2-instance"
  env_name          = "dev"
  instance_type     = var.instance_type
  ami_id            = var.ami_id
  key_name          = var.key_name
  subnet_id         = var.subnet_id
  security_group_id = var.security_group_id
  instance_name     = "dev-instance"
}