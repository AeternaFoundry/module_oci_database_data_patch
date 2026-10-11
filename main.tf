resource "oci_database_data_patch" "database_data_patches" {
  for_each = var.database_data_patches

  action              = each.value.action
  database_id         = each.value.database_id
  pluggable_databases = each.value.pluggable_databases

  dynamic "data_patch_options" {
    for_each = each.value.data_patch_options != null ? each.value.data_patch_options : []
    content {
      should_skip_closed_pdbs = data_patch_options.value.should_skip_closed_pdbs
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

