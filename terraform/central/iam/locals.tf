locals {
  region         = "us-east-1" # TODO: Change to your region
  name           = "central-provisioner1"
  aws_account_id = "278264368218" # TODO: Change to your AWS Account ID
  // remove initial_provisioner_arn once we have a proper provisioner
  initial_provisioner_arn = "arn:aws:iam::${local.aws_account_id}:user/admin1" # TODO: Use your user ARN
  tfstates_bucket         = "declarative-eks-tutorial-tf008"                     # TODO: Change to your bucket name
}
