resource "azurerm_resource_group" "${var.ghrg}" {
  name     = "${var.ghrg}-resources"
  location = "West US 2"
}