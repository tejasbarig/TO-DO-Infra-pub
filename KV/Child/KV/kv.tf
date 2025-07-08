resource "azurerm_key_vault" "kv" {
  name                        = var.keyvault_name
  location                    = var.location
  resource_group_name         = var.rg_name
    tenant_id                   = data.azurerm_client_config.current.tenant_id

enable_rbac_authorization = true
  sku_name = "standard"

 
}


