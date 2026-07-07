terraform {
  backend "s3" {
    bucket         = "trialdynamo20261"
    key = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "trialdynamo2026"
    encrypt        = true
  }
}