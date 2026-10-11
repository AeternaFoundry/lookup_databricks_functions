output "functions_lookup_catalog_name" {
  description = "Map of catalog_name values across all functions_lookup, keyed the same as var.functions_lookup except keys with no catalog_name are omitted"
  value       = { for k, v in data.databricks_functions.functions_lookup : k => v.catalog_name if v.catalog_name != null && length(v.catalog_name) > 0 }
}
output "functions_lookup_functions" {
  description = "Map of functions values across all functions_lookup, keyed the same as var.functions_lookup except keys with no functions are omitted"
  value       = { for k, v in data.databricks_functions.functions_lookup : k => v.functions if v.functions != null && length(v.functions) > 0 }
}
output "functions_lookup_include_browse" {
  description = "Map of include_browse values across all functions_lookup, keyed the same as var.functions_lookup except keys with no include_browse are omitted"
  value       = { for k, v in data.databricks_functions.functions_lookup : k => v.include_browse if v.include_browse != null }
}
output "functions_lookup_provider_config" {
  description = "Map of provider_config values across all functions_lookup, keyed the same as var.functions_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_functions.functions_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "functions_lookup_schema_name" {
  description = "Map of schema_name values across all functions_lookup, keyed the same as var.functions_lookup except keys with no schema_name are omitted"
  value       = { for k, v in data.databricks_functions.functions_lookup : k => v.schema_name if v.schema_name != null && length(v.schema_name) > 0 }
}

