terraform {
    required_version = "~> 1.0.4"
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.22.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "tf-example" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  subnet_id     = "subnet-02588ba8b031a5630"
  tags          = {
    Name        = "tf-example"
    environment = "snd"
    
  }
}