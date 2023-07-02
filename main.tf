terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "web" {
  ami           = "ami-06b09bfacae1453cb"
  instance_type = "t2.micro"
}
