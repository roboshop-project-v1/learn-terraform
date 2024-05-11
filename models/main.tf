module "test" {
  source = "./local-module"
}


output "ami_info" {
    value = module.test
  
}