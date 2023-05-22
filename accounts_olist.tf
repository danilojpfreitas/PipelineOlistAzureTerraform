#Default Olist Project
# Create a resource group for project Olist
resource "azurerm_resource_group" "olist" {
  name     = "olist"
  location = "East US 2"
}