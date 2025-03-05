provider "aws" {
  region = "eu-west-2"
}

module "bucket_creator" {
  source = "../modules/s3_bucket"

  bucket_name = "tf-k8-state"
}
