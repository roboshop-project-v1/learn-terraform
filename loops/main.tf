
# variable "components" {
#     default = ["catalogue","frontend","mongodb"]
  
# }



# resource "aws_instance" "web" {
#   count = length(var.components)
#   ami           = "ami-0f3c7d07486cad139"
#   instance_type = "t2.micro"

#   vpc_security_group_ids = ["sg-0490a4409ed09ba21"]

#   tags = {
#     Name = element(var.components,count.index)
#   }
# }


variable "components" {
    default = {
    user = ""
    mysql=""
    frontend = ""
    mongodb = ""
    catalogue = ""

    }
  
}

resource "aws_instance" "web" {
  for_each = var.components
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"

  vpc_security_group_ids = ["sg-0490a4409ed09ba21"]

  tags = {
    Name = lookup(var.components,each.key,null)
  }
}