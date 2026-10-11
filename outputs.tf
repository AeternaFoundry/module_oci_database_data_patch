output "database_data_patches_id" {
  description = "Map of id values across all database_data_patches, keyed the same as var.database_data_patches except keys with no id are omitted"
  value       = { for k, v in oci_database_data_patch.database_data_patches : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_data_patches_action" {
  description = "Map of action values across all database_data_patches, keyed the same as var.database_data_patches except keys with no action are omitted"
  value       = { for k, v in oci_database_data_patch.database_data_patches : k => v.action if v.action != null && length(v.action) > 0 }
}
output "database_data_patches_data_patch_options" {
  description = "Map of data_patch_options values across all database_data_patches, keyed the same as var.database_data_patches except keys with no data_patch_options are omitted"
  value       = { for k, v in oci_database_data_patch.database_data_patches : k => v.data_patch_options if v.data_patch_options != null && length(v.data_patch_options) > 0 }
}
output "database_data_patches_database_id" {
  description = "Map of database_id values across all database_data_patches, keyed the same as var.database_data_patches except keys with no database_id are omitted"
  value       = { for k, v in oci_database_data_patch.database_data_patches : k => v.database_id if v.database_id != null && length(v.database_id) > 0 }
}
output "database_data_patches_pluggable_databases" {
  description = "Map of pluggable_databases values across all database_data_patches, keyed the same as var.database_data_patches except keys with no pluggable_databases are omitted"
  value       = { for k, v in oci_database_data_patch.database_data_patches : k => v.pluggable_databases if v.pluggable_databases != null && length(v.pluggable_databases) > 0 }
}

