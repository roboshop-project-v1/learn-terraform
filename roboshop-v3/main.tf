
module "roboshop" {
    for_each = var.components
    source = "./local-module"
    component = each.key
    ami = var.ami
    instance_type = var.instance_type
    zone_id = var.zone_id
    vpc_security_group_ids = var.vpc_security_group_ids
}
