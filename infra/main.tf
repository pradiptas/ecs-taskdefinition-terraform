terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  } 
}
provider "aws" {
  region = "us-west-2"
}

resource "aws_ecr_repository" "ecr-devops" {
  name   = "ecr-devops"
}
