
variable "ami" {
  default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-0490a4409ed09ba21"]
}

variable "zone_id" {
  default = "Z05459522TM73CF1WNKI7"
  
}

variable "components" {

  default = {
      frontend  = {},
      mongodb   = {},

  }

}