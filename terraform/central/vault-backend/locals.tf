locals {
  aws_account_id = "278264368218"   # TODO: replace with your AWS account ID
  region         = "us-east-1" # TODO: replace with your AWS region

  cluster_name     = "central"
  namespace        = "token-vault-auth-validator"
  account_name     = "vault-auth-validator"
  clusterrole_name = "system:auth-delegator"
}
