resource "azurerm_resource_group" "example" {
  name     = "rg-fluxterraform-2"
  location = "eastus"
}

resource "azurerm_storage_account" "example" {
  name                     = "stfluxtfsujoy2024"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
