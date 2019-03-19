resource "azurerm_resource_group" "ghsubnet" {
  name     = "${var.prefix}-resources"
  location = "West US 2"
}