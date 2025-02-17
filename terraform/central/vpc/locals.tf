locals {
  region          = "us-east-1"                    # TODO: Change to your region
  tfstates_bucket = "declarative-eks-tutorial-tf008" # TODO: Change to your bucket name
  cidr            = "10.99.0.0/16"

  cluster_name     = "central"
  subnets          = cidrsubnets(local.cidr, 3, 3, 3, 3, 3, 3)
  private_subnets  = slice(local.subnets, 0, 3)             // Three 19bit subnets
  public_subnets   = cidrsubnets(local.subnets[3], 3, 3, 3) // Three 22bit subnets
  intra_subnets    = cidrsubnets(local.subnets[4], 3, 3, 3) // Three 22bit subnets
  database_subnets = cidrsubnets(local.subnets[5], 3, 3, 3) // Three 22bit subnets

  acl_policy_allow_all = {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
}
