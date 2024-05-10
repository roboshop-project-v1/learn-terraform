variable "availability_zone_names" {
  type    = list(string)
  default = ["us-west-1a"]
}

output "zone_name" {

  value = var.availability_zone_names[0]

}