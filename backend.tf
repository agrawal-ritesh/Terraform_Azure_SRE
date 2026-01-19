terraform {
    backend "azurerm" {
        resource_group_name = "tfstate-rg"
        storage_account_name = "tfstatefile123"
        container_name = "tfstate_imp"
        key = "sre_azure_key"
    }
}


#stores your file in central location remotely.
