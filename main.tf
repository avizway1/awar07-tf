provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "mywebserver" {
  count         = 1
  ami           = "ami-01b40e1bcccae197a"
  instance_type = "t3.small"

  tags = {
    Name = "MyWeb-Server-test"
  }
}
