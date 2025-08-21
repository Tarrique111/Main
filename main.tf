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
  ami           = "ami-00ca32bbc84273381" 
  instance_type = "c7i-flex.large"

  tags = {
    Name = "test"
  }
}
