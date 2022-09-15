terraform {

  required_version = "1.2.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.5"
    }
  }
  backend "s3" {}
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Stack       = "network"
      Project     = "dataplatform"
    }
  }
}