// Output the ID of the new VPC and Security Group created

output "this_security_group_id" {
  description = "The ID of the security group"
  value       = var.group_id == "" ? alicloud_security_group.this.0.id : var.group_id
}

output "this_security_group_vpc_id" {
  description = "The VPC ID"
  value       = var.vpc_id == "" ? alicloud_vpc.vpc.0.id : var.vpc_id
}

output "this_security_group_name" {
  description = "The name of the security group"
  value       = alicloud_security_group.this.0.name
}

output "this_security_group_description" {
  description = "The description of the security group"
  value       = alicloud_security_group.this.0.description
}