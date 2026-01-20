variable "resource_group_name" {
    default = "az-sre-project"
}

variable "location" {
    default = "East US"
}

variable "vm_count" {
    default = 7
}

variable "admin_username" {
    default = "azvmuser"
}

variable "admin_password" {
    sensitive = true
}

variable "alert_email" {}
