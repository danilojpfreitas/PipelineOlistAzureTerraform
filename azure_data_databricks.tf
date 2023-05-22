resource "azurerm_databricks_workspace" "example" {
  name                = "olist_databricks"
  resource_group_name = azurerm_resource_group.olist.name
  #Price is better in Central US
  location            = "Central US"
  sku                 = "standard"

  tags = {
    Environment = var.environment
  }
}

#Settings Databricks Notbook:
# 1 - Azure Active Drectory: Need create App resigstration (Use Cliente ID)
# 2 - Scope screate https://<databricks-instance>#secrets/createScope
# 2.1 - Key vaults:

resource "azurerm_key_vault" "example" {
  name                        = "olistkeyvaultdanilo"
  location                    = azurerm_resource_group.olist.location
  resource_group_name         = azurerm_resource_group.olist.name
  tenant_id                   = var.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id
  }

  tags = {
    Environment = var.environment
  }
}

# 2.2 - Key Vault -> Properties
# 2.3 - Key Vault -> Secrets:

# resource "azurerm_key_vault_secret" "olist" {
#   name         = "olist-secret"
#   value        = "secretvault" => Need Value AAD/App registrations
#   key_vault_id = azurerm_key_vault.olist.id
# }

#2.4 - Key Vault -> Directory ID
#3 Endpoint Storage Account - Data Lake Storage
#4 

