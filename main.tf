resource "oci_compute_cloud_at_customer_ccc_infrastructure" "compute_cloud_at_customer_ccc_infrastructures" {
  for_each = var.compute_cloud_at_customer_ccc_infrastructures

  compartment_id          = each.value.compartment_id
  display_name            = each.value.display_name
  subnet_id               = each.value.subnet_id
  ccc_upgrade_schedule_id = each.value.ccc_upgrade_schedule_id
  connection_details      = each.value.connection_details
  connection_state        = each.value.connection_state
  defined_tags            = each.value.defined_tags
  description             = each.value.description
  freeform_tags           = each.value.freeform_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

