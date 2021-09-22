provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "${var.resource-group-name}"
  location = "${var.location}"
}
