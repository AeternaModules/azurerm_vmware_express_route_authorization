variable "vmware_express_route_authorizations" {
  description = <<EOT
Map of vmware_express_route_authorizations, attributes below
Required:
    - name
    - private_cloud_id
EOT

  type = map(object({
    name             = string
    private_cloud_id = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.vmware_express_route_authorizations : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_vmware_express_route_authorization's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: private_cloud_id
  #   source:    [from validate.PrivateCloudID] !ok
  # path: private_cloud_id
  #   source:    [from validate.PrivateCloudID] err != nil
}

