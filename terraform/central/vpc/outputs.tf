output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_cidrs" {
  value = concat([module.vpc.vpc_cidr_block], module.vpc.vpc_secondary_cidr_blocks)
}

output "public_subnet_ids" {
  value = module.vpc.public_subnets
}

output "public_subnet_cidrs" {
  value = module.vpc.public_subnets_cidr_blocks
}

output "private_subnet_ids" {
  value = module.vpc.private_subnets
}

output "private_subnet_cidrs" {
  value = module.vpc.private_subnets_cidr_blocks
}

output "intra_subnet_ids" {
  value = module.vpc.intra_subnets
}

output "intra_subnet_cidrs" {
  value = module.vpc.intra_subnets_cidr_blocks
}

output "nats" {
  value = module.vpc.nat_public_ips
}
output "all_subnets" {
  value = local.subnets
}
output "all_private_subnets" {
  value = local.private_subnets
}
output "all_public_subnets" {
   value =local.public_subnets
}