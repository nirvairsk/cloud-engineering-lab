terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "app" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "app" {
  name                = "asp-appservice-poc"
  resource_group_name = azurerm_resource_group.app.name
  location            = azurerm_resource_group.app.location

  os_type  = "Linux"
  sku_name = "F1"
}

resource "azurerm_linux_web_app" "app" {
  name                = var.app_name
  resource_group_name = azurerm_resource_group.app.name
  location            = azurerm_resource_group.app.location
  service_plan_id     = azurerm_service_plan.app.id

  site_config {
    always_on = false
    application_stack {
      python_version = "3.11"
    }
  }
}