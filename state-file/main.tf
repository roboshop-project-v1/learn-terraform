terraform {
  backend "s3" {
    bucket = "tf-statefile-bc"
    key    = "tf-state-test/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "testing_ts" {
  default = "Hello state file"
}

output "name" {
    value = var.testing_ts
  
}