provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-06d4b7182ac3480fa"
  instance_type = lookup(var.instance_typo, terraform.workspace)
}

variable "instance_typo" {
  type = map(any)
  default = { "dev" = "t2.micro",
    "staging" = "t2.medium",
  "prod" = "t2.large" }
}
