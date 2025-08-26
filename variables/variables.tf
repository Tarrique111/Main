variable "aws_region" {
  description = "AWS region where resources will be created"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "c7i-flex.large"
}

variable "server_name" {
  description = "Name of the EC2 server"
  default     = "my-server"
}

variable "server_count" {
  description = "Number of EC2 servers to launch"
  default     = 1
}

variable "tags" {
  description = "Tags for the server"
  type        = map(string)
  default = {
    Environment = "dev"
    Owner       = "student"
  }
}
