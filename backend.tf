terraform {
  backend "s3" {
    bucket = "phatch1-terraform"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}