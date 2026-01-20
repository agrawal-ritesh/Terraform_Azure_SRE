resource "azurerm_monitor_action_group" "ag" {
    name = "action_group_sre"
    resource_group_name = var.resource_group_name
    short_name = "SRE_AG"

    email_receiver {
        name = "oncall"
        email_address = var.alert_email
    }
}