### PROVIDER INFO !!! ###

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}

# Configure the AWS Provider

provider "aws" {
    profile = "default"
    region = "eu-central-1"
}
