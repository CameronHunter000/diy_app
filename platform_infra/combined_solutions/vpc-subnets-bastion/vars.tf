variable "AWS_REGION" {
  default = "eu-west-2"
}

variable "AWS_ACCESS_KEY" {
  type    = string
  default = null
}

variable "AWS_SECRET_KEY" {
  type    = string
  default = null
}

variable "environment" {
  type    = string
  default = "staging"
}

variable "allow_ip_cidr" {
  type    = string
}