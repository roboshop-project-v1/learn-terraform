data "aws_ami_ids" "ami" {
    name_regex = "Centos-*"
    owners = ["973714476881"]
}

output "name" {
    value = data.aws_ami_ids.ami
  
}


resource "aws_instance" "web" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = var.instance_type

  vpc_security_group_ids = ["sg-0490a4409ed09ba21"]

  tags = {
    Name = "HelloWorld"
  }
}

variable "instance_type" {}
