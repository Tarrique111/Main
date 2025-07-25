provider "aws" {
  region = "us-east-1"  # Change to your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (for us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Example"
  }
}