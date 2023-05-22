resource "azurerm_mssql_server" "olist" {
  name                         = "olist-sql-server-danilofreitas"
  resource_group_name          = azurerm_resource_group.olist.name
  location                     = azurerm_resource_group.olist.location
  version                      = "12.0"
  administrator_login          = var.db_username
  administrator_login_password = var.db_password

  tags = {
    environment = var.environment
  }
}

resource "azurerm_sql_database" "olist" {
  name                = "olist_db"
  resource_group_name = azurerm_resource_group.olist.name
  location            = azurerm_resource_group.olist.location
  server_name         = azurerm_mssql_server.olist.name

  zone_redundant = false
  requested_service_objective_name = "Basic"

  tags = {
    environment = var.environment
  }
}