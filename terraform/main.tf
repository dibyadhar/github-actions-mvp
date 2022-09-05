terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}


resource "aws_s3_bucket" "terraform_state" {
  bucket = "dataplatform-terraform-test-workflow-automation-bucket"
}
