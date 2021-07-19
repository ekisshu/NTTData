terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"        ## for general region =${var.aws_region} 
}

resource "aws_instance" "Assignment" {
  ami           = "ami-00bf4ae5a7909786c"
  instance_type = "t2.micro"

  tags = {
    Name = "NTTData"
  }
}