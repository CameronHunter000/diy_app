variable "s3_bucket_name" {
  type    = string
  default = "my-very-secure-k8s-bucket"
}

variable "environment" {
  type    = string
}

variable "tags" {
}
