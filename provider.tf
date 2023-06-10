# Provider Requirements
terraform {
  required_provider {
    aws = {
      source  = "hasicorp/aws"
      version = "~>3.0"
    }
  }
}



# AWS Provider (aws) with region set to "ap-southeast-1"
provider "aws" {
  region = "ap-southeast-1"
}
