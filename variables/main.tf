provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my_server" {
  count         = var.server_count   # Create multiple servers
  ami           = "ami-00ca32bbc84273381"
  instance_type = var.instance_type

  tags = merge(
    var.tags,
    {
      Name = "${var.server_name}-${count.index + 1}" # Unique server name
    }
  )
}
