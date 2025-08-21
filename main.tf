terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">1.3.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "us-east-1"  # Change to your desired AWS region
}
resource "aws_instance" "example" {
  ami           = "ami-0d0ad8bb301edb745" 
  instance_type = "t3.micro"

  tags = {
    Name = "Jenkins_Server"
  }
}
