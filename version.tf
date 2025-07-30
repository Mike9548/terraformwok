terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

 }



terraform {
  backend "azurerm" {
    resource_group_name   = "oguns"
    storage_account_name  = "femistrg"
    container_name        = "devtest"
    key                   = "project1.terraform.tfstate"
    tenant_id            = "45a90ee0-2284-4fb8-b9cd-74a030c38df2"
    subscription_id      = "604ea822-b507-4121-9c18-53fba97dcbe9"
  }
}

provider "azurerm" {
  features {}

   subscription_id = "604ea822-b507-4121-9c18-53fba97dcbe9"
}



# import {
#   to = azurerm_resource_group.oguns
#   id = "/subscriptions/604ea822-b507-4121-9c18-53fba97dcbe9/resourceGroups/oguns"      
# }
  
    
 import {
  to = azurerm_storage_account.oguns
  id = "/subscriptions/604ea822-b507-4121-9c18-53fba97dcbe9/resourceGroups/oguns/providers/Microsoft.Storage/storageAccounts/femistrg"      
} 
