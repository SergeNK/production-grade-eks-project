terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    region = "us-east-1"                    
    bucket = "declarative-eks-tutorial-tf008"
    key    = "central/dynamo.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.31.0"
    }
  }
}
