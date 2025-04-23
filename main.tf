provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "rhel_server" {
  ami           = "ami-0f2b4fc905b0bd1f1"  # RHEL 8 free tier in us-east-1 (check AWS AMI page if region differs)
  instance_type = "t2.micro"
  key_name      = "jenkins"

  tags = {
    Name = "RHEL-Terraform-Jenkins"
  }
}

