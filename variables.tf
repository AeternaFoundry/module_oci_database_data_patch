variable "database_data_patches" {
  description = <<EOT
Map of database_data_patches, attributes below
Required:
    - action
    - database_id
Optional:
    - pluggable_databases
    - data_patch_options (block):
        - should_skip_closed_pdbs (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    action              = string
    database_id         = string
    pluggable_databases = optional(list(string))
    data_patch_options = optional(list(object({
      should_skip_closed_pdbs = optional(bool)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

