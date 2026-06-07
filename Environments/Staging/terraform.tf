terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket         = "devops-state-bucket001"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "Devops-dynamodb-state-table"
  }
}
