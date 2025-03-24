terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.8"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 2.0"
    }
  }
}

provider "aws" {
  alias = "london"
  region = "eu-west-2"
}

module "bucket_creator" {
  source = "../modules/s3_bucket"

  bucket_name = var.bucket_name
}
