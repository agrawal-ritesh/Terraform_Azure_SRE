resource "azurerm_virtual_netowrk" "vnet" {
    name = "sre-prod_vnet"
    address_space = ["10.30.0.0/16"]
    location = var.location
    resource_group_name = var.resource_group_name
}
resource "azurerm_subent" "subnet" {
    name = "vm-subnet"
    address_prefixes = ["10.30.1.0/24"]
    virtual_network_name = azurerm_virtual_network.vnet.name
    resource_group_name = var.resource_group_name
}
