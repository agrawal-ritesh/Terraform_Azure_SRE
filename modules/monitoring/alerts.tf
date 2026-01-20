resource "azurerm_metric_alert" "high_cpu" {
    name = "HighCPU"
    resource_group_name = var.resource_group_name
    scopes = var.vm_ids
    severity = 2

    criteria {
        metric_namespace = "Microsoft.Compute/virtualMachines"
        metric_name = "Percentage CPU"
        aggregation = "Average"
        operator = "GreaterThan"
        threshold = 80
    }

    action {
        action_group_id = azurerm_monitor_action_group.ag.id
    }
}