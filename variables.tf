variable "instance_ami" {
  description = "value of the AMI ID for the EC2 instance"
  type        = string
  default     = "ami-067d12e172891a3e4"
}

variable "instance_type" {
  description = "Vaule of Instance Type for the EC2 Instance"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Vaule of the Name taf for the EC2 Instance"
  type        = string
  default     = "instance-1"
}
