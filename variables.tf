variable "instance_1_ami" {
  description = "value of the AMI ID for the EC2 instance"
  type        = string
}

variable "instance_1_type" {
  description = "Vaule of Instance Type for the EC2 Instance"
  type        = string
}

variable "instance_1_name" {
  description = "Vaule of the Name taf for the EC2 Instance"
  type        = string
}

variable "instance_2_ami" {
  description = "value of the AMI ID for the EC2 instance"
  type        = string
}

variable "instance_2_type" {
  description = "Vaule of Instance Type for the EC2 Instance"
  type        = string
}

variable "instance_2_name" {
  description = "Vaule of the Name taf for the EC2 Instance"
  type        = string
}
variable "website_s3_bucket_1_name" {
  description = "Vaule of the Name tag for the S3 bucket"
  type        = string
}

variable "website_s3_bucket_2_name" {
  description = "Vaule of the Name tag for the S3 bucket"
  type        = string
}

variable "terraform" {
  description = "Value of the Terraform Tag for S3 bucket"
  type        = string
}

variable "environment" {
  description = "Value of the Environment for S3 bucket"
  type        = string
}

