resource "aws_instance" "web" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"

  vpc_security_group_ids = ["sg-0490a4409ed09ba21"]

  tags = {
    Name = "HelloWorld"
  }
}
