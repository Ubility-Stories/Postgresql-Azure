resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_postgresql_server" "db_server" {
  name                = var.postgresql_server_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = var.sku_name
  storage_mb          = var.storage_mb
  version             = var.server_version
  administrator_login = var.administrator_login
  administrator_login_password = var.administrator_password
  ssl_enforcement_enabled      = var.ssl
}

resource "azurerm_postgresql_database" "postgres_db" {

  name                = var.postgres_db_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.db_server.name
  charset             = var.charset 
  collation           = var.collation 
  
}