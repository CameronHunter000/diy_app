resource "aws_eip" "nat_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.vpc_gw]
  tags = merge(
    local.tags,
    {
      Name = "elastic-ip-nat-gw-${var.environment}"
    }
  )
}