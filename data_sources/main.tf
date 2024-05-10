data "aws_instance" "foo" {
  instance_id = "i-083ff70e548a4c7c9"

  }

output "instance_info" {
    value = data.aws_instance.foo
  
}