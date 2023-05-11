locals {
  credentials_region = "us-east-1"                    # TODO: Change to your region
  aws_account_id     = "278264368218"                      # TODO: Change to your account ID
  tfstates_bucket    = "declarative-eks-tutorial-tf008" # TODO: Change to your bucket name
  initial_user       = "admin1"                       # TODO: Change to your user name
  // remove initial_user_arn once we have a proper provisioner
  initial_user_arn = "arn:aws:iam::${local.aws_account_id}:user/${local.initial_user}"

  cluster_name    = "central"
  cluster_region  = "us-east-1" # TODO: Change to your region
  cluster_version = "1.23"

  vpc_id              = data.terraform_remote_state.vpc_state.outputs.vpc_id
  vpc_cidrs           = data.terraform_remote_state.vpc_state.outputs.vpc_cidrs
  vpc_private_subnets = data.terraform_remote_state.vpc_state.outputs.private_subnet_ids
  vpc_public_subnets  = data.terraform_remote_state.vpc_state.outputs.public_subnet_ids
  vpc_intra_subnets   = data.terraform_remote_state.vpc_state.outputs.intra_subnet_ids
}
