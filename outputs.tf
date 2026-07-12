output "vmware_express_route_authorizations_id" {
  description = "Map of id values across all vmware_express_route_authorizations, keyed the same as var.vmware_express_route_authorizations"
  value       = { for k, v in azurerm_vmware_express_route_authorization.vmware_express_route_authorizations : k => v.id }
}
output "vmware_express_route_authorizations_express_route_authorization_id" {
  description = "Map of express_route_authorization_id values across all vmware_express_route_authorizations, keyed the same as var.vmware_express_route_authorizations"
  value       = { for k, v in azurerm_vmware_express_route_authorization.vmware_express_route_authorizations : k => v.express_route_authorization_id }
}
output "vmware_express_route_authorizations_express_route_authorization_key" {
  description = "Map of express_route_authorization_key values across all vmware_express_route_authorizations, keyed the same as var.vmware_express_route_authorizations"
  value       = { for k, v in azurerm_vmware_express_route_authorization.vmware_express_route_authorizations : k => v.express_route_authorization_key }
  sensitive   = true
}
output "vmware_express_route_authorizations_name" {
  description = "Map of name values across all vmware_express_route_authorizations, keyed the same as var.vmware_express_route_authorizations"
  value       = { for k, v in azurerm_vmware_express_route_authorization.vmware_express_route_authorizations : k => v.name }
}
output "vmware_express_route_authorizations_private_cloud_id" {
  description = "Map of private_cloud_id values across all vmware_express_route_authorizations, keyed the same as var.vmware_express_route_authorizations"
  value       = { for k, v in azurerm_vmware_express_route_authorization.vmware_express_route_authorizations : k => v.private_cloud_id }
}

