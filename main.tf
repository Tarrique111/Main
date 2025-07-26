terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.5.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "us-east-1"  # Update if you're targeting a different region
}

resource "aws_instance" "example" {
  ami           = "ami-0cbbe2c6a1bb2ad63"  # Amazon Linux 2 AMI (us-east-1)
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Example"
  }
}
