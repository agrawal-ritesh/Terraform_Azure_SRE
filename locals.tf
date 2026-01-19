locals {
    vms ={
        for i in range (var.vm_count):
        "vm-${i+1}" => {
        index = i 
        zone = (i % 3) + 1
        }
    }
}