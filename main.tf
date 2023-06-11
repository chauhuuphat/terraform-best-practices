resource "aws_instance" "instance_1" {
  ami           = var.instance_1_ami
  instance_type = var.instance_1_type
  tags = {
    Name = var.instance_1_name
  }
}

resource "aws_instance" "instance_2" {
  ami           = var.instance_2_ami
  instance_type = var.instance_2_type
  tags = {
    Name = var.instance_2_name
  }
  provisioner "local-exec" {
    command    = "echo the IP address of the server is ${self.private_ip}"
    on_failure = continue
  }
}

module "website_s3_bucket" {
  source      = "./modules/aws-s3-static-website-bucket"
  bucket_name = "phatch1-terraform-best-practices"
  tags = {
    Terraform   = "true"
    Environment = "test"
  }
}


module "website_s3_bucket_2" {
  source      = "./modules/aws-s3-static-website-bucket"
  bucket_name = "phatch1-terraform-best-practices-2"
  tags = {
    Terraform   = "true"
    Environment = "test"
  }
}