variable "AWS_ACCESS_KEY" {
  type    = string
  default = null
}

variable "AWS_SECRET_KEY" {
  type    = string
  default = null
}

variable "environment" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "allow_ip_cidr" {
  type = string
}