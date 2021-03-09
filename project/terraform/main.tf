terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "main_server" {
  ami           = var.aws_ami
  instance_type = var.instance_type
  user_data     = file("server_prereqs.sh")

  tags = {
    Name = "Main Server"
  }
}
