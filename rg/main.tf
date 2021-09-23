terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      // version = ">=0.11"
    }
  }
   backend "azurerm" {
        resource_group_name  = "test-terra"
        storage_account_name = "teststateterra"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
    }
    provider "azurerm" {
features {}
}

}


resource "azurerm_resource_group" "example" {
  name     = "${var.resource-group-name}"
  location = "${var.location}"
}
