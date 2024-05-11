
resource "aws_instance" "instance" {

  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = {
    Name = var.component
  }
}
resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "${var.component}.jdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance[var.component].private_ip]
}