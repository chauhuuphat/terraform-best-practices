locals {
  instance_types = {
    dev = "t2.mirco"
    uat = "t2.small"
  }
}

resource "aws_key_pair" "terraform_best_practices_demo" {
  key_name   = "${terraform.workspace}-terraform-best-practices-demo-key"
  public_key = file("./.ssh/id_rsa.pub")
}

resource "aws_instance" "instance_1" {
  ami           = var.instance_1_ami
  instance_type = local.instance_types[terraform.workspace]
  tags = {
    Name = "${terraform.workspace}-${var.instance_1_name}"
  }
  key_name = aws_key_pair.terraform_best_practices_demo.key_name
}

resource "aws_instance" "instance_2" {
  ami           = var.instance_2_ami
  instance_type = local.instance_types[terraform.workspace]
  tags = {
    Name = "${terraform.workspace}-${var.instance_2_name}"
  }
  provisioner "local-exec" {
    command    = "echo the IP address of the server is ${self.private_ip}"
    on_failure = continue
  }
  key_name = aws_key_pair.terraform_best_practices_demo.key_name
}

module "website_s3_bucket" {
  source      = "./modules/aws-s3-static-website-bucket"
  bucket_name = "${terraform.workspace}-${var.website_s3_bucket_1_name}"
  tags = {
    Terraform   = "true"
    Environment = "test"
  }
}


module "website_s3_bucket_2" {
  source      = "./modules/aws-s3-static-website-bucket"
  bucket_name = "${terraform.workspace}-${var.website_s3_bucket_2_name}"
  tags = {
    Terraform   = var.terraform
    Environment = var.environment
  }
}

