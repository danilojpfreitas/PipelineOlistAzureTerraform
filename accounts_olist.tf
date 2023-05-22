#Default Olist Project
# Create a resource group for project Olist
resource "azurerm_resource_group" "olist" {
  name     = "olist"
  location = "East US 2"
}

#Create a storage account for project Olist
resource "azurerm_storage_account" "olist" {
  name                     = "olistdanilofreitas"
  resource_group_name      = azurerm_resource_group.olist.name
  location                 = azurerm_resource_group.olist.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}