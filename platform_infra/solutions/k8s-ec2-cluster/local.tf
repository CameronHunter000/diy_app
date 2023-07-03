locals {
  tags = {
    "environment" = "${var.environment}"
    "provisioner" = "terraform"
    "scope"       = "k8s-cluster"
    "uuid"        = "${var.uuid}"
  }
  lb_cert = "${path.module}/files/public.crt"
  lb_key = "${path.module}/files/privatekey.pem"
}