terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
  }
    backend "s3" {
    bucket = "sai-state-prod"
    key    = "shipping"
    region = "us-east-1"
    dynamodb_table = "sai-locking-prod"
  }
}

provider "aws" {
  region = "us-east-1"
}
