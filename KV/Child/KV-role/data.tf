data "azurerm_client_config" "current" {}

data "azurerm_key_vault" "kv-data" {
  name                = var.keyvault_name
  resource_group_name = var.rg_name
}