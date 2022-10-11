terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    region         = "ap-northeast-2"                    # TODO: Change to your region
    bucket         = "declarative-eks-tutorial-tfstates" # TODO: Change to your bucket name
    dynamodb_table = "tutorial-terraform-backend-locks"
    key            = "central/vpc.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.31.0"
    }
  }
}
