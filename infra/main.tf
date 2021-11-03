terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "pradipta-s3-tfstate"
    key    = "platform.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_ecr_repository" "ecr_devops_poc_pradipta" {
  
  name = "ecr-devops-poc-pradipta"
}
