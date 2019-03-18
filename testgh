resource "azurerm_resource_group" "testghSG" {
  name     = "acceptanceTestResourceGroup1GH"
  location = "West US"
}

resource "azurerm_virtual_network" "testsggh" {
  name                = "acceptanceTestVirtualNetwork1GH"
  address_space       = ["10.0.0.0/16"]
  location            = "${azurerm_resource_group.testghsg.location}"
  resource_group_name = "${azurerm_resource_group.testsggh.name}"
}

resource "azurerm_subnet" "test" {
  name                 = "testsubnet"
  resource_group_name  = "${azurerm_resource_group.testsggh.name}"
  virtual_network_name = "${azurerm_virtual_network.testsggh.name}"
  address_prefix       = "10.0.1.0/24"
  delegation {
    name = "acctestdelegation"
    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  }
}