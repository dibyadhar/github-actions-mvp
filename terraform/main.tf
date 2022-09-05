terraform {

  required_version = "0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

   backend "s3" {}
}
}

provider "aws" {
  region = "eu-west-2"
}


resource "aws_s3_bucket" "terraform_state" {
  bucket = "dataplatform-terraform-test-workflow-automation-bucket"
}
