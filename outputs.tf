output "vmware_express_route_authorizations" {
  description = "All vmware_express_route_authorization resources"
  value       = azurerm_vmware_express_route_authorization.vmware_express_route_authorizations
  sensitive   = true
}
output "vmware_express_route_authorizations_express_route_authorization_id" {
  description = "List of express_route_authorization_id values across all vmware_express_route_authorizations"
  value       = [for k, v in azurerm_vmware_express_route_authorization.vmware_express_route_authorizations : v.express_route_authorization_id]
}
output "vmware_express_route_authorizations_express_route_authorization_key" {
  description = "List of express_route_authorization_key values across all vmware_express_route_authorizations"
  value       = [for k, v in azurerm_vmware_express_route_authorization.vmware_express_route_authorizations : v.express_route_authorization_key]
  sensitive   = true
}
output "vmware_express_route_authorizations_name" {
  description = "List of name values across all vmware_express_route_authorizations"
  value       = [for k, v in azurerm_vmware_express_route_authorization.vmware_express_route_authorizations : v.name]
}
output "vmware_express_route_authorizations_private_cloud_id" {
  description = "List of private_cloud_id values across all vmware_express_route_authorizations"
  value       = [for k, v in azurerm_vmware_express_route_authorization.vmware_express_route_authorizations : v.private_cloud_id]
}

