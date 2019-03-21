resource "azurerm_resource_group" "rg" {
  name     = "${var.ghrg}-resources"
  location = "West US 2"
}