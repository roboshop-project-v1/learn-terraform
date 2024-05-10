variable "availability_zone_names" {
  type    = list(string)
  default = ["us-west-1a"]
}

# variable types

variable "string_variable" {
  default = "apple"
}
variable "list_of_variable" {
  default = ["apple","banana","grapes"]
}

variable "map_variable" {
  default = {
    fruit = "apple"
    stock_available = true
    price = 20
  }
}

variable "map_of_map_variable" {
  default = {
    fruit = {name = "apple" , type = "gujarati"}
    stock_available = true
    price = 20
  }
}


output "string_Var_access" {

  value = var.string_variable

}

output "list_Var_access" {

  value = var.list_of_variable[1]

}

output "map_var_access" {

  value = var.map_variable.fruit

}

output "map_of_map_var_access" {

  value = var.map_of_map_variable.fruit.name

}