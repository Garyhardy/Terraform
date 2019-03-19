resource "azurerm_virtual_network" "ghsubnet" {
  name                = "acceptanceTestVirtualNetwork1"
  address_space       = ["10.0.0.0/16"]
  location            = "${azurerm_resource_group.ghsubnet.location}"
  resource_group_name = "${azurerm_resource_group.ghsubnet.name}"
}
