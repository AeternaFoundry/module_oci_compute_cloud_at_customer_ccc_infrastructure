variable "compute_cloud_at_customer_ccc_infrastructures" {
  description = <<EOT
Map of compute_cloud_at_customer_ccc_infrastructures, attributes below
Required:
    - compartment_id
    - display_name
    - subnet_id
Optional:
    - ccc_upgrade_schedule_id
    - connection_details
    - connection_state
    - defined_tags
    - description
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id          = string
    display_name            = string
    subnet_id               = string
    ccc_upgrade_schedule_id = optional(string)
    connection_details      = optional(string)
    connection_state        = optional(string)
    defined_tags            = optional(map(string))
    description             = optional(string)
    freeform_tags           = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

