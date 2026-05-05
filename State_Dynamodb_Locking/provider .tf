terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.40.0"
    }
  }
   backend "s3" {
    bucket = "kishore-remote-locking"
    key    = "remote-state-dynamodb"
    region = "us-east-1"
    encrypt        = true
    dynamodb_table = "kishore-remote-locking"
   }
}

provider "aws" {
  # Configuration options
}