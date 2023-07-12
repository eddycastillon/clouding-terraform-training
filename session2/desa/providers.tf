terraform {
  backend "s3" {
    bucket         = "terraform-iaac-clouding-dev"
    key            = "terraform.state"
    region         = "us-east-1"
    dynamodb_table = "terraform-iaac-clouding-dev"
    encrypt        = true
    profile = "desa"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
