data "databricks_functions" "functions_lookup" {
  for_each = var.functions_lookup

  catalog_name    = each.value.catalog_name
  schema_name     = each.value.schema_name
  functions       = each.value.functions
  include_browse  = each.value.include_browse
  provider_config = each.value.provider_config
}

