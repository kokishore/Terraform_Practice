terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.40.0"
    }
  }

  backend "s3" {
    bucket = "kks-remote-state"
    key    = "workspace-demo"
    region = "us-east-1"
    encrypt        = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
}