terraform {                               #Terraform block for terraform setting
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {                           #Provider block configures the specified provider, in this case aws
  profile = "default"
  region  = "ap-south-1"          

resource "aws_instance" "Assignment" {     # resource blocks to define components of your infrastructure
  ami           = "ami-00bf4ae5a7909786c"
  instance_type = "${var.intance_type}"    # instance_type vaule taken from var.tf file
}

  tags = {
    Name = "NTTData"
  }
}



