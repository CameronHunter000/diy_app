module "vpc-subnets-bastion" {
  source = "../vpc-subnets-bastion"
  allow_ip_cidr = var.allow_ip_cidr
}

module "k8s-ec2-cluster" {
  vpc_id                 = module.vpc-subnets-bastion.vpc_id
  vpc_private_subnets    = module.vpc-subnets-bastion.private_subnet_ids
  vpc_public_subnets     = module.vpc-subnets-bastion.public_subnet_ids
  vpc_subnet_cidr        = var.vpc_cidr_block
  ssk_key_pair_name      = "deployer_key"
  uuid                   = "5eb5153c-18ec-11ee-be56-0242ac120002"
  environment            = var.environment
  install_nginx_ingress  = true
  install_longhorn       = true
  source = "../../solutions/k8s-ec2-cluster"
}
