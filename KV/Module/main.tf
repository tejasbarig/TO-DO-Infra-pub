module "resource_group" {
  source   = "../Child/RG"
  rg_name  = "rg-tejas"
  location = "francecentral"
}


module "key_vault" {
  depends_on    = [module.resource_group]
  source        = "../Child/KV"
  keyvault_name = "key-vault-tej"
  location      = "francecentral"
  rg_name       = "rg-tejas"
}

module "keyvault-role" {
  depends_on           = [module.key_vault]
  source               = "../Child/KV-role"
  role_definition_name = "Key Vault Administrator"
  keyvault_name        = "key-vault-tej"
  rg_name              = "rg-tejas"
}


module "kv_secret-admin" {
  depends_on    = [module.key_vault, module.keyvault-role]
  source        = "../Child/KV_secret"
  secret_name   = "vm-admin-name"
  secret_value  = "administrator"
  keyvault_name = "key-vault-tej"
  rg_name       = "rg-tejas"
}

module "kv_secret-pass" {
  depends_on    = [module.key_vault, module.keyvault-role]
  source        = "../Child/KV_secret"
  secret_name   = "vm-admin-pass"
  secret_value  = "password"
  keyvault_name = "key-vault-tej"
  rg_name       = "rg-tejas"
}

