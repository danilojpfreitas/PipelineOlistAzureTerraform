resource "azurerm_data_factory" "olist" {
  name                = "olistdatafactorydanilofreitas"
  location            = azurerm_resource_group.olist.location
  resource_group_name = azurerm_resource_group.olist.name

    tags = {
    environment = var.environment
  }
}