
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
  name    = "${var.component}-dev.jdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}

resource "null_resource" "ansible" {
  depends_on = [ aws_route53_record.record ]

  provisioner "local-exec" {
    command = <<EOF
    cd /home/centos/roboshop-ansible
    git pull
    sleep 30
    ansible-playbook -i ${var.component}-dev.jdevops.online, -e ansible_user=centos -e ansible_password=DevOps321 main.yml -e component=${var.component}

    EOF
  }
  
}

