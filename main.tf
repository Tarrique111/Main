provider "aws" {
  region = "us-east-1"  # Change to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0cbbe2c6a1bb2ad63" # Amazon Linux 2 AMI (for us-east-1)
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Example"
  }
}
