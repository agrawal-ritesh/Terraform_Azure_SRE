resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = var.location
}

module "network" {
    source = "./modules/network"
    location = var.location
    resource_group_name = azurerm_resoure_group.rg.name
}

module "computer" {
    source = "./modules/compute"
    location = var.location
    resource_group_name = azurerm_resource_group.rg.name
    subnet_id = module.network.subnet_id
    admin_username = var.admin_username
    admin_password = var.admin_password
    vms = local.vms
}

module "monitoring" {
    source = "./modules/monitoring"
    location = var.location
    resource_group_name = azurerm_resource_group.rg.name
    vm_ids = module.compute.vm_ids
    alert_emails = var.alert_email
}