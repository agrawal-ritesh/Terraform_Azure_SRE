output "vm_names" {
    value = values(azurerm_windows_virtual_machine.vm)[*].id
}