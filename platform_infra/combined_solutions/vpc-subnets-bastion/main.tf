module "private-vpc" {
  region            = var.AWS_REGION
  my_public_ip_cidr = var.allow_ip_cidr
  environment       = var.environment
  source            = "../../solutions/private-vpc"
}

module "bastion-host" {
  ssk_key_pair_name  = "deployer_key"
  environment        = var.environment
  subnet_id          = module.private-vpc.public_subnet_ids[0]
  security_group_ids = [module.private-vpc.security_group_id]
  source             = "../../solutions/bastion-host"
}

# module "ec2-instance" {
#   ssk_key_pair_name  = "deployer_key"
#   environment        = var.environment
#   subnet_id          = module.private-vpc.private_subnet_ids[0]
#   security_group_ids = [module.private-vpc.security_group_id]
#   source             = "../ec2-instance"
# }
