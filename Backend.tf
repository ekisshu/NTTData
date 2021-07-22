terraform {
  backend "s3" {
    profile = "default"
    region  = "ap-south-1"
    bucket  = "NTTDATA"
    key     = "nttdata/terraform.tfstate"
  }
}

