locals {
  credentials_region = "us-east-1"                    # TODO: Change to your region
  aws_account_id     = "278264368218"                      # TODO: Change to your account ID
  tfstates_bucket    = "declarative-eks-tutorial-tfstates" # TODO: Change to your bucket name

  region       = "ap-northeast-2" # TODO: Change to your region
  cluster_name = "central"

  vault_addr           = "https://vault.jacobkim.io"
  namespace            = "vault-auth"
  service_account_name = "vault-auth-validator"
  clusterrole_name     = "system:auth-delegator"

}