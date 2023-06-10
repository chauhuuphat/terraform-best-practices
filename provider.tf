# Provider Requirements
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}



# AWS Provider (aws) with region set to "ap-southeast-1"
provider "aws" {
  region = "ap-southeast-1"
}
