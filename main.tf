provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-06d4b7182ac3480fa"
  instance_type = "t2.micro"
}
