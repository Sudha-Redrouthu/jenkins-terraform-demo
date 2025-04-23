provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "rhel_server" {
  ami           = "ami-0f6c1051253397fef"  # ✅ RHEL AMI ID (64-bit x86) for us-east-1
  instance_type = "t2.micro"
  key_name      = "jenkins"               # ✅ Ensure this key pair exists in your AWS account

  tags = {
    Name = "RHEL-Terraform-Jenkins"
  }
}

