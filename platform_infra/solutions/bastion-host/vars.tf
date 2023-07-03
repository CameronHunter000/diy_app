variable "AWS_ACCESS_KEY" {
  type    = string
  default = null
}

variable "AWS_SECRET_KEY" {
  type    = string
  default = null
}

variable "ssk_key_pair_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "security_group_ids" {
  type = list(string)
}

variable "environment" {
  type    = string
  default = "staging"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami" {
  type    = string
  default = "ami-0b2d569b854fcf192"
}

variable "bastion_user" {
  type    = string
  default = "bastion"
}

variable "bastion_group" {
  type    = string
  default = "bastion"
}

variable "ssh_keys_path" {
  type    = list(any)
  default = ["~/.ssh/rsa_2048.pub"]
}