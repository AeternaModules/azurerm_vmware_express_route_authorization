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
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

