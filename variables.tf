variable "functions_lookup" {
  description = <<EOT
Map of functions_lookup, attributes below
Required:
    - catalog_name
    - schema_name
Optional:
    - functions
    - include_browse
    - provider_config
EOT

  type = map(object({
    catalog_name = string
    schema_name  = string
    functions = optional(list(object({
      browse_only       = optional(bool)
      catalog_name      = optional(string)
      comment           = optional(string)
      created_at        = optional(number)
      created_by        = optional(string)
      data_type         = optional(string)
      external_language = optional(string)
      external_name     = optional(string)
      full_data_type    = optional(string)
      full_name         = optional(string)
      function_id       = optional(string)
      input_params = optional(object({
        parameters = optional(list(object({
          comment            = optional(string)
          name               = string
          parameter_default  = optional(string)
          parameter_mode     = optional(string)
          parameter_type     = optional(string)
          position           = number
          type_interval_type = optional(string)
          type_json          = optional(string)
          type_name          = string
          type_precision     = optional(number)
          type_scale         = optional(number)
          type_text          = string
        })))
      }))
      is_deterministic = optional(bool)
      is_null_call     = optional(bool)
      metastore_id     = optional(string)
      name             = optional(string)
      owner            = optional(string)
      parameter_style  = optional(string)
      properties       = optional(string)
      return_params = optional(object({
        parameters = optional(list(object({
          comment            = optional(string)
          name               = string
          parameter_default  = optional(string)
          parameter_mode     = optional(string)
          parameter_type     = optional(string)
          position           = number
          type_interval_type = optional(string)
          type_json          = optional(string)
          type_name          = string
          type_precision     = optional(number)
          type_scale         = optional(number)
          type_text          = string
        })))
      }))
      routine_body       = optional(string)
      routine_definition = optional(string)
      routine_dependencies = optional(object({
        dependencies = optional(list(object({
          connection = optional(object({
            connection_name = optional(string)
          }))
          credential = optional(object({
            credential_name = optional(string)
          }))
          function = optional(object({
            function_full_name = string
          }))
          table = optional(object({
            table_full_name = string
          }))
        })))
      }))
      schema_name     = optional(string)
      security_type   = optional(string)
      specific_name   = optional(string)
      sql_data_access = optional(string)
      sql_path        = optional(string)
      updated_at      = optional(number)
      updated_by      = optional(string)
    })))
    include_browse = optional(bool)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

