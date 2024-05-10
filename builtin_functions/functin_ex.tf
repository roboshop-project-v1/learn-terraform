variable "fruits" {
  default = ["apple","banana","grapes"]
}

variable "fruits_details" {
  default = {
            fruit1 = "apple",
            fruit2 = "banana",
            fruit3 = "grapes"
  }
}


output "variable1" {
    value = element(var.fruits,5)
  
}


output "variable2" {
    value = lookup(var.fruits_details,"fruit1","what?")
  
}

output "variable3" {
    value = lookup(var.fruits_details,"fruit10","what?")
  
}