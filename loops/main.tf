
variable "components" {
    default = ["frontend","mongodb"]
  
}



resource "aws_instance" "web" {
  count = length(var.components)
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"

  vpc_security_group_ids = ["sg-0490a4409ed09ba21"]

  tags = {
    Name = element(var.components,count.index)
  }
}
