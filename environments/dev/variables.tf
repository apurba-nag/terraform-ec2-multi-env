variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_type" {
  description = "Instance type to launch"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to launch the instance"
  type        = string
}

variable "key_name" {
  description = "Name of the key pair to use for SSH access"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the EC2 instance"
  type        = string
}
