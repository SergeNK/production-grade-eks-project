terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    region         = "us-east-1"                    # TODO: Change to your region
    bucket         = "declarative-eks-tutorial-tf008" # TODO: Change to your bucket name
    dynamodb_table = "tutorial-terraform-backend-locks"
    key            = "central/iam.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.31.0"
    }
  }
}
