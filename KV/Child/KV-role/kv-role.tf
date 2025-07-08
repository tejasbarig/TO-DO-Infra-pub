resource "azurerm_role_assignment" "role" {
  principal_id   = data.azurerm_client_config.current.object_id
  role_definition_name = var.role_definition_name
  scope          = data.azurerm_key_vault.kv-data.id
}

