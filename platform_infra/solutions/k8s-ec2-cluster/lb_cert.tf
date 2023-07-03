resource "aws_acm_certificate" "cert" {
  count            = var.install_nginx_ingress ? 1 : 0
  private_key      = file(local.lb_key)
  certificate_body = file(local.lb_cert)
}