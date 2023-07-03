output "bastion_host_ip" {
  value = module.bastion-host.bastion_ip
}

output "public_subnet_ids" {
  value = module.private-vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.private-vpc.private_subnet_ids
}

output "vpc_id" {
  value = module.private-vpc.vpc_id
}

# output "ec2_instance_ip" {
#   value = module.ec2-instance.ec2_instance_ip
# }