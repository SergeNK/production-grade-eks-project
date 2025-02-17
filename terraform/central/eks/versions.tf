terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    region         = "us-east-1"                    # TODO: change to your region
    bucket         = "declarative-eks-tutorial-tf008" # TODO: change to your bucket name
    dynamodb_table = "tutorial-terraform-backend-locks"
    key            = "central/eks.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.31.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10"
    }
  }
}
